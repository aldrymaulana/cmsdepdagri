<?php
#-------------------------------------------------------------------------------
#
# Module : AdvancedContent (c) 2010-2011 by Georg Busch (georg.busch@gmx.net)
#          a content management tool for CMS Made Simple
#          The projects homepage is http://dev.cmsmadesimple.org/projects/content2/
#          CMS Made Simple is (c) 2004-2011 by Ted Kulp
#          The projects homepage is: http://www.cmsmadesimple.org
# Version: 0.9.1
# File   : contenttype.Content2.php
# Purpose: the content object
# License: GPL
#
#-------------------------------------------------------------------------------

define('AC_BLOCK_PATTERN', '/{((AdvancedContent|content(_image|_module)?)((?!_)[^}]*))}/i');
define('AC_BLOCK_PARAM_PATTERN', '/([\w]+)=(["][^"]*["]|[\'][^\']*[\']|[^\'"\s]*)/');

class Content2 extends CMSModuleContentType
{
	private $_stylesheet;
	private $_contentBlocks;
	private $_contentBlocksLoaded;
	private $_tabIds;
	private $_pageTabs;
	private $_blockTabs;
	private $_blockGroups;
	private $_userGroups;
	private $_isAdmin;
	private $_feuAction;
	private $_feuAccess;
	private $_feuGroups;
	private $_allAdminUsers;
	private $_allAdminGroups;
	private $_inheritables;
	private $_cms_access;
	private $_advancedAttribs = array(
		'feu_access',
		'redirect_page',
		'feu_action',
		'start_date',
		'end_date',
		'use_expire_date',
		'hide_menu_item',
		'inherit_redirect_params',
		'feu_params',
		'inherit_feu_params',
		'feu_params_smarty',
		'custom_params',
		'inherit_custom_params',
		'custom_params_smarty'
	);
	private $_blockTypes = array();
	
	function __construct()
	{
		parent::__construct();
		$this->_contentBlocks       = array();
		$this->_contentBlocksLoaded = false;
		$this->_feuAction           = false;
		$this->_feuAccess           = -1;
		$this->_feuGroups           = false;
		
		global $CMS_ADMIN_PAGE;
		$this->_cms_access = isset($CMS_ADMIN_PAGE) && $CMS_ADMIN_PAGE == 1 ? 'backend' : 'frontend';
	}
	
	function ModuleName()
	{
		return 'AdvancedContent';
	}
	
	function IsDefaultPossible()
	{
		return TRUE;
	}
	
	function IsCopyable()
	{
		return TRUE;
	}
	
	function FriendlyName()
	{
		if(basename($_SERVER['PHP_SELF']) == 'listcontent.php')
		{
			$addTxt = array();
			$addTxt[] = '-&nbsp;' . ($this->mCachable ? lang('cachable') : lang('noncachable')) . '<br />';
			if($this->mSecure)
			{
				$addTxt[] = '-&nbsp;SSL'.'<br />';
			}
			$addTxt[] = '-&nbsp;' . (!$this->mShowInMenu ? lang('hidefrommenu') : lang('showinmenu')) . '<br />';
			if(cms_utils::get_module('AdvancedContent')->GetPreference('use_advanced_pageoptions', 0))
			{
				if($feusers =& cms_utils::get_module('FrontEndUsers'))
				{
					$selectedGroups = $this->GetProperty('feu_access');
					if(count($selectedGroups))
					{
						$addTxt[] = '-&nbsp;'.$this->lang('frontendaccess').': <ul><li>' . implode('</li><li>',array_keys(array_intersect($feusers->GetGroupList(), $selectedGroups))).'</li></ul>';
						$redirectPage = $this->GetProperty('redirect_page');
						if($redirectPage)
						{
							$addTxt[] = '-&nbsp;' . $this->lang('redirectpage') . ': '.$redirectPage.'<br />';
						}
						$params = $this->GetProperty('feu_params');
						if(count($params[1]))
						{
							$addTxt[] = '-&nbsp;' . $this->lang('feu_params') . ': <ul><li>' . implode('</li><li>',$params[1]).'</li></ul>';
						}
						$params = $this->GetProperty('custom_params');
						if(count($params[1]))
						{
							$addTxt[] = '-&nbsp;' . $this->lang('custom_params') . ': <ul><li>' . implode('</li><li>',$params[1]).'</li></ul>';
						}
					}
					$hide_menu_item = $this->GetProperty('hide_menu_item');
					if($hide_menu_item == 2 || ($hide_menu_item == 1 && count($selectedGroups)))
					{
						$addTxt[] = '-&nbsp;' . $this->lang('hide_menu_item') . ': '. ($hide_menu_item == 1 ? $this->lang('loggedout') : $this->lang('loggedin')).'<br />';
					}
				}
				if($this->GetProperty('use_expire_date'))
				{
					setlocale(LC_ALL, get_preference(get_userid(), 'default_cms_language'));
					$addTxt[]   = '-&nbsp;'.$this->lang('startdate').': '.strftime('%x %H:%M',$this->GetProperty('start_date')).'<br />';
					$addTxt[]   = '-&nbsp;'.$this->lang('enddate').': '.strftime('%x %H:%M',$this->GetProperty('end_date')).'<br />';
				}
			}
			if(count($addTxt))
			{
				return '<span style="position:relative;text-decoration:underline;cursor:pointer;display:block" onmouseover="document.getElementById(\''.$this->mId.'_info\').style.display = \'block\';" onmouseout="document.getElementById(\''.$this->mId.'_info\').style.display = \'none\';">' . $this->lang('AdvancedContent') . '<span id="'.$this->mId.'_info" style="text-decoration:none;background-color:#FFF;border:1px solid #000;position:absolute;padding:5px;display:none;-moz-box-shadow:1px 1px 10px #666666;-webkit-box-shadow:1px 1px 10px #666666;box-shadow:1px 1px 10px #666666;z-index:999;white-space:nowrap">' . implode('',$addTxt) . '</span></span>';
			}
		}
		
		return $this->lang('AdvancedContent');
	}
	
	function ShowInMenu()
	{
		if(cms_utils::get_module('AdvancedContent')->GetPreference('use_advanced_pageoptions', 0))
		{
			if($this->GetProperty('use_expire_date'))
			{
				$start_date = $this->GetProperty('start_date');
				$end_date   = $this->GetProperty('end_date');
				if(($start_date > time() || $end_date < time()) && $this->mActive)
				{
					$this->mActive = false;
					$this->mShowInMenu = false;
				}
				else if($start_date < time() && $end_date > time() && !$this->mActive)
				{
					$this->mActive = true;
				}
			}
			if($this->_cms_access == 'frontend')
			{
				if($this->GetProperty('hide_menu_item'))
				{
					if($this->GetProperty('hide_menu_item') == 1)
					{
						$this->mShowInMenu = $this->_check_frontend_page_access();
					}
					else if($this->GetProperty('hide_menu_item') == 2 && $feusers =& cms_utils::get_module('FrontEndUsers'))
					{
						$this->mShowInMenu = !$feusers->LoggedIn();
					}
				}
			}
		}
		return $this->mShowInMenu;
	}
	
	function Active()
	{
		if(cms_utils::get_module('AdvancedContent')->GetPreference('use_advanced_pageoptions', 0))
		{
			if($this->GetProperty('use_expire_date'))
			{
				$start_date = $this->GetProperty('start_date');
				$end_date   = $this->GetProperty('end_date');
				if(($start_date > time() || $end_date < time()) && $this->mActive)
				{
					$this->mActive = false;
					$this->mShowInMenu = false;
				}
				else if($start_date < time() && $end_date > time() && !$this->mActive)
				{
					$this->mActive = true;
				}
			}
		}
		return $this->mActive;
	}
	
	function SetProperties()
	{
		parent::SetProperties();
		$AdvancedContent =& cms_utils::get_module('AdvancedContent');
		
		#$AdvancedContent->SetAllowedParam('parent_id', CLEAN_INT);
		#$AdvancedContent->SetAllowedParam('content_type', CLEAN_STRING);
		#$AdvancedContent->SetAllowedParam('cachable', CLEAN_INT);
		
		$this->AddBaseProperty('template', 4, 0, 'int');
		$this->AddBaseProperty('pagemetadata', 20);
		
		$this->AddContentProperty('searchable', 8, 0, 'int');
		$this->AddContentProperty('pagedata', 25);
		$this->AddContentProperty('disable_wysiwyg', 60, 0, 'int');
		
		#$AdvancedContent->SetAllowedParam('template_id', CLEAN_INT);
		#$AdvancedContent->SetAllowedParam('metadata', CLEAN_STRING);
		#$AdvancedContent->SetAllowedParam('searchable', CLEAN_INT);
		#$AdvancedContent->SetAllowedParam('pagedata', CLEAN_STRING);
		#$AdvancedContent->SetAllowedParam('disable_wysiwyg', CLEAN_INT);
		
		if(cms_utils::get_module('AdvancedContent')->GetPreference('use_advanced_pageoptions', 0))
		{
			$this->AddContentProperty('use_expire_date', 99, 0, 'int');
			$this->AddContentProperty('start_date', 100, 0, 'int');
			$this->AddContentProperty('end_date', 101, 0, 'int');
			
			#$AdvancedContent->SetAllowedParam('use_expire_date', CLEAN_INT);
			#$AdvancedContent->SetAllowedParam('start_date', CLEAN_INT);
			#$AdvancedContent->SetAllowedParam('AdvancedContentStartDate', CLEAN_INT);
			#$AdvancedContent->SetAllowedParam('AdvancedContentStartTime', CLEAN_INT);
			#$AdvancedContent->SetAllowedParam('end_date', CLEAN_INT);
			#$AdvancedContent->SetAllowedParam('AdvancedContentEndDate', CLEAN_INT);
			#$AdvancedContent->SetAllowedParam('AdvancedContentEndTime', CLEAN_INT);
			
			if($feusers =& cms_utils::get_module('FrontEndUsers'))
			{
				$this->AddContentProperty('feu_access', 102);
				$this->AddContentProperty('redirect_page', 103, 0, 'int');
				$this->AddContentProperty('feu_action', 110, 0, 'int');
				$this->AddContentProperty('hide_menu_item', 111, 0, 'int');
				
				$this->AddContentProperty('inherit_feu_params', 104, 0,'int');
				$this->AddContentProperty('feu_params', 105, 0);
				$this->AddContentProperty('feu_params_smarty', 106, 0, 'int');
				
				$this->AddContentProperty('inherit_custom_params', 107, 0,'int');
				$this->AddContentProperty('custom_params', 108, 0);
				$this->AddContentProperty('custom_params_smarty', 109, 0, 'int');
				
				#$AdvancedContent->SetAllowedParam('feu_access', CLEAN_NONE);
				#$AdvancedContent->SetAllowedParam('redirect_page', CLEAN_INT);
				#$AdvancedContent->SetAllowedParam('feu_action', CLEAN_INT);
				#$AdvancedContent->SetAllowedParam('hide_menu_item', CLEAN_INT);
				#$AdvancedContent->SetAllowedParam('inherit_feu_params', CLEAN_INT);
				#$AdvancedContent->SetAllowedParam('feu_params', CLEAN_STRING);
				#$AdvancedContent->SetAllowedParam('feu_params_smarty', CLEAN_INT);
				#$AdvancedContent->SetAllowedParam('inherit_custom_params', CLEAN_INT);
				#$AdvancedContent->SetAllowedParam('custom_params', CLEAN_STRING);
				#$AdvancedContent->SetAllowedParam('custom_params_smarty', CLEAN_INT);
			}
		}
		$this->mPreview = true;
	}
	
	function ReadyForEdit()
	{
		$this->_parse_template();
	}
	
	function Show($param = 'content_en')
	{
		// check page access
		if(cms_utils::get_module('AdvancedContent')->GetPreference('use_advanced_pageoptions', 0) && $this->_cms_access == 'frontend' && !$this->_check_frontend_page_access())
		{
			return $this->_do_feu_action();
		}
		
		$param = preg_replace('/-+/','_',munge_string_to_url($param));
		$this->_parse_template();
		
		if(!isset($this->_contentBlocks[$param]) || !is_object($this->_contentBlocks[$param]))
		{
			$config = cmsms()->GetConfig();
			if($config['debug'])
			{
				trigger_error("AdvancedContent: The content block '" . $param . "' does not exist!", E_USER_WARNING);
			}
			return;
		}
		
		# todo: check if this is a good idea to process smarty in params when in frontend
		if($this->_contentBlocks[$param]->GetBlockProperty('smarty'))
		{
			foreach($this->_contentBlocks[$param]->GetBlockProperties() as $propName=>$propValue)
			{
				$this->_contentBlocks[$param]->SetBlockProperty($propName, $this->DoSmarty($propValue));
			}
		}
		#---
		
		if($feusers =& cms_utils::get_module('FrontEndUsers'))
		{
			if($this->_contentBlocks[$param]->GetBlockProperty('feu_access') && !$this->_check_frontend_access($this->_contentBlocks[$param]->GetBlockProperty('feu_access')))
			{
				if($this->_contentBlocks[$param]->GetBlockProperty('feu_action') && !$this->_feuAction)
				{
					$this->_feuAction = true;
					$this->SetPropertyValueNoLoad($param,$feusers->DoAction('default', 'cntnt01', array('form'=>'login'), $this->mId));
					#$this->_contentBlocks[$param]->SetBlockProperty('content', $this->GetPropertyValue($param));
				}
				else
				{
					$this->SetPropertyValueNoLoad($param,'');
					#$this->_contentBlocks[$param]->SetBlockProperty('content','');
				}
			}
			else if($this->_contentBlocks[$param]->GetBlockProperty('feu_hide') && $feusers->LoggedInId())
			{
				$this->SetPropertyValueNoLoad($param, '');
				#$this->_contentBlocks[$param]->SetBlockProperty('content', '');
			}
		}
		
		$this->SetPropertyValueNoLoad($param, $this->_contentBlocks[$param]->ShowBlock());
		if(!$this->_contentBlocks[$param]->GetBlockProperty('allow_none') && $this->GetPropertyValue($param) == '')
		{
			#if($this->_contentBlocks[$param]->GetBlockProperty('inherit'))
			#{
			#	$this->SetPropertyValueNoLoad($param, -1);
			#	$this->SetPropertyValueNoLoad($param, $this->GetProperty($param));
			#	
			#}
			#else
			{
				$this->SetPropertyValueNoLoad($param, $this->_contentBlocks[$param]->GetBlockProperty('default'));
			}
		}
		return $this->GetPropertyValue($param);
	}
	
	function TabNames()
	{
		$tabs = array(lang('main'));
		if( check_permission(get_userid(), 'Manage All Content') )
		{
			$tabs[] = lang('options');
		}
		$AdvancedContent =& cms_utils::get_module('AdvancedContent');
		if( check_permission(get_userid(), 'Manage AdvancedContent Options') && $AdvancedContent->GetPreference('use_advanced_pageoptions', 0))
		{
			$tabs[] = $AdvancedContent->lang('advancedcontent_tabname');
		}
		
		$this->_parse_template();
		
		foreach($this->_pageTabs as $tab)
		{
			if(!in_array($tab['tab_name'], $tabs))
			{
				$tabs[] = ($tab['tab_id'] == 'options' ? lang('options') : $tab['tab_name']);
			}
			if(!in_array($tab['tab_id'], $this->_tabIds))
			{
				$this->_tabIds[] = $tab['tab_id'];
			}
		}
		return $tabs;
	}
	
	function FillParams($params, $editing = false)
	{
		# Why is FillParams is called twice?!?
		static $func_called = false;
		if($func_called) return;
		#---
		
		if(isset($params['content_type']))
		{
			$AdvancedContent =& cms_utils::get_module('AdvancedContent');
			
			$parameters = array_merge(array('pagedata', 'searchable', 'disable_wysiwyg'), $this->_advancedAttribs);
			
			$this->_contentBlocksLoaded = false;
			$this->mTemplateId          = isset($params['template_id']) ? $params['template_id'] : $this->mTemplateId;
			$this->mType                = $params['content_type'];
			
			if($this->mType == 'content2' || $this->mType == 'content')
			{
				# add content blocks
				$this->_parse_template();
				
				$this->mParentId = isset($params['parent_id']) ? $params['parent_id'] : $this->mParentId;
				
				if(check_permission(get_userid(), 'Manage AdvancedContent Options') && $AdvancedContent->GetPreference('use_advanced_pageoptions', 0))
				{
					$params['feu_access'] = isset($params['feu_access']) && is_array($params['feu_access']) ? $params['feu_access'] : ($editing ? $this->CleanArray(explode(',',$this->GetPropertyValue('feu_access'))) : $this->CleanArray(explode(',',$AdvancedContent->GetPreference('feu_access'))));
					# if page has no parents but wants to inherit -> remove inheritance
					if($this->mParentId <= 0 && in_array(-1, $params['feu_access']))
					{
						foreach($params['feu_access'] as $k=>$v)
						{
							if($v == -1)
							{
								unset($params['feu_access'][$k]);
							}
						}
					}
					# if there is still inheritance -> check if there actually is any feu group selected by parents
					$_feuAccess = array();
					if(in_array(-1, $params['feu_access']))
					{
						# $_feuAccess contains all feu groups (of current page as well as of all parent pages)
						$_feuAccess = $this->InheritParentProp('feu_access', $params['feu_access']);
					}
					
					# if we have selected any feu group -> disable caching and search
					if(count($_feuAccess) || (count($params['feu_access']) && !in_array(-1, $params['feu_access'])))
					{
						$params['cachable']   = false;
						$this->mCachable      = false;
						$params['searchable'] = false;
					}
					$params['feu_access'] = implode(',', $params['feu_access']);
					
					$params['redirect_page'] = isset($params['redirect_page']) ? $params['redirect_page'] : ($editing ? $this->GetPropertyValue('redirect_page') : $AdvancedContent->GetPreference('redirect_page'));
					if($this->mParentId <= 0 && $params['redirect_page'] == -1)
					{
						$params['redirect_page'] = '';
					}
					
					$params['feu_action'] = isset($params['feu_action']) ? $params['feu_action'] : ($editing ? $this->GetPropertyValue('feu_action') : $AdvancedContent->GetPreference('feu_action',1));
					if($this->mParentId <= 0 && $params['feu_action'] == -1)
					{
						$params['feu_action'] = 1;
					}
					
					$params['hide_menu_item'] = isset($params['hide_menu_item']) ? $params['hide_menu_item'] : ($editing ? $this->GetPropertyValue('hide_menu_item') : $AdvancedContent->GetPreference('hide_menu_item',0));
					if($this->mParentId <= 0 && $params['hide_menu_item'] == -1)
					{
						$params['hide_menu_item'] = 0;
					}
					
					/* do this on validation
					if($params['feu_access'] && $params['hide_menu_item'] == 2)
					{
						$params['hide_menu_item'] = $AdvancedContent->GetPreference('hide_menu_item',0);
					}
					*/
					
					$params['inherit_feu_params'] = isset($params['inherit_feu_params']) ? true : ($editing ? $this->GetPropertyValue('inherit_feu_params') : $AdvancedContent->GetPreference('inherit_feu_params'));
					if($this->ParentId() <= 0 && $params['inherit_feu_params'])
					{
							$params['inherit_feu_params'] = false;
					}
					
					if($params['inherit_feu_params']) {
							$params['feu_params'] = -1;
							$params['feu_params_smarty'] = -1;
					}
					
					$params['inherit_custom_params'] = isset($params['inherit_custom_params']) ? true : ($editing ? $this->GetPropertyValue('inherit_custom_params') : $AdvancedContent->GetPreference('inherit_custom_params'));
					if($this->ParentId() <= 0 && $params['inherit_custom_params'])
					{
							$params['inherit_custom_params'] = false;
					}
					
					if($params['inherit_custom_params']) {
							$params['custom_params'] = -1;
							$params['custom_params_smarty'] = -1;
					}
					
					$params['use_expire_date'] = isset($params['use_expire_date']) ? $params['use_expire_date'] : ($editing ? $this->GetPropertyValue('use_expire_date') : $AdvancedContent->GetPreference('use_expire_date'));
					if($this->mParentId <= 0 && $params['use_expire_date'] == -1)
					{
						$params['use_expire_date'] = 0;
					}
					if($params['use_expire_date'] == -1)
					{
						$params['start_date'] = -1;
						$params['end_date']   = -1;
					}
					else if($params['use_expire_date'] == 0)
					{
						$params['start_date'] = '';
						$params['end_date']   = '';
					}
					else {
						if(isset($params['start_date']))
						{
							$params['start_date'] = $params['start_date']['time'] + ($params['start_date']['date'] / 1000);
						}
						else
						{
							$params['start_date'] = ($editing && $this->GetPropertyValue('start_date') ? $this->GetPropertyValue('start_date') : strtotime('+' . $AdvancedContent->GetPreference("start_date",'1 week')));
						}
						if(isset($params['end_date']))
						{
							$params['end_date'] = $params['end_date']['time'] + ($params['end_date']['date'] / 1000);
						}
						else
						{
							$params['end_date'] = ($editing && $this->GetPropertyValue('end_date') ? $this->GetPropertyValue('end_date') : strtotime('+' . $AdvancedContent->GetPreference("end_date",'1 week'), $params['start_date']));
						}
					}
				}
				
				# do the content property parameters
				foreach ($parameters as $oneparam)
				{
					if (isset($params[$oneparam]))
					{
						$this->SetPropertyValueNoLoad($oneparam, $params[$oneparam]);
					}
				}
				if(check_permission(get_userid(), 'Manage AdvancedContent Options') && $AdvancedContent->GetPreference('use_advanced_pageoptions', 0) && $this->GetPropertyValue('use_expire_date') && ($this->GetProperty('start_date') > time() || $this->GetProperty('end_date') < time()))
				{
					$params['active'] = false;
					$this->mActive    = false;
				}
				
				# metadata
				$this->mMetadata = isset($params['metadata']) ? $params['metadata'] : $this->mMetadata;
				
				# contentblocks
				foreach($this->_contentBlocks as $blockId => $contentBlock)
				{
					$value = $contentBlock->FillBlockParams($params, $editing);
					if($value == '' && !$contentBlock->GetBlockProperty('allow_none'))
					{
						$value = $contentBlock->GetBlockProperty('default');
						if($contentBlock->GetBlockProperty('smarty'))
						{
							$value = $this->DoSmarty($value);
						}
					}
					#$this->AddExtraProperty($blockId); # is done by _register_content_block()
					$this->SetPropertyValueNoLoad($blockId, $value);
				}
			}
		}
		parent::FillParams($params, $editing);
		
		# Why is FillParams called twice?!?
		$func_called = true;
		#---
	}
	
	function EditAsArray($adding = false, $tab = 0, $showadmin = false)
	{
		$AdvancedContent =& cms_utils::get_module('AdvancedContent');
		$this->_parse_template();
		$ret = array();
		$tmp = array();
		$headerHTML = '';
		if(isset($this->_tabIds[$tab]))
		{
			$tab_id = $this->_tabIds[$tab];
		}
		else
		{
			return array();
		}
		if($tab_id == 'main' || ($tab_id == 'options' && check_permission(get_userid(), 'Manage All Content')))
		{
			$tmp = $this->CleanArray($this->display_attributes($adding, $tab));
		}
		else if($tab_id == 'AdvancedContent' && check_permission(get_userid(), 'Manage AdvancedContent Options') && $AdvancedContent->GetPreference('use_advanced_pageoptions', 0))
		{
			$tmp = $this->_display_advanced_options($adding);
		}
		
		foreach( $tmp as $one )
		{
			$ret[] = $one;
		}
		
		$j = 0;
		foreach($this->_pageTabs[$tab_id]['block_groups'] as $blockGroup)
		{
			$this->_blockGroups[$blockGroup]['display'] = true;
			if($this->_blockGroups[$blockGroup]['collapsible'])
			{
				$this->_blockGroups[$blockGroup]['display'] = $AdvancedContent->GetItemDisplay('group', $blockGroup, $this->mId, $this->mTemplateId, !$this->_blockGroups[$blockGroup]['collapse']);
					$this->_blockGroups[$blockGroup]['pref_url'] = str_replace('&amp;','&',
						$AdvancedContent->CreateLink('m1_', 'savePrefs', '', $this->lang('toggle_group'),
							array('item_type'=>'group',
								'disable_theme'=>true,
								'ajax'=>true,
								'content_id'=>$this->mId,
								'template_id'=>$this->mTemplateId,
								'item_id'=>$blockGroup),
							'', true));
			}
		}
		foreach($this->_pageTabs[$tab_id]['content_blocks'] as $blockId)
		{
			$j++;
			
			if($this->_contentBlocks[$blockId]->GetBlockProperty('type') != '' && $this->_contentBlocks[$blockId]->GetBlockProperty('smarty'))
			{
				foreach($this->_contentBlocks[$blockId]->GetBlockProperties() as $propName=>$propValue)
				{
					$this->_contentBlocks[$blockId]->SetBlockProperty($propName, $this->DoSmarty($propValue));
				}
			}
			
			$value = $this->GetPropertyValue($blockId);
			
			if(($adding && $value == '')
				|| ($value == '' && !$this->_contentBlocks[$blockId]->GetBlockProperty('allow_none')) 
				|| $this->_contentBlocks[$blockId]->GetBlockProperty('new_block'))
			{
				$value = $this->_contentBlocks[$blockId]->GetBlockProperty('default');
			}
			$this->SetPropertyValueNoLoad($blockId, $value);
			#$this->_contentBlocks[$blockId]->SetBlockProperty('content', $value);
			$this->_contentBlocks[$blockId]->SetBlockProperty('adding', $adding);
			
			if($this->_contentBlocks[$blockId]->GetBlockProperty('label') == ucwords($this->_contentBlocks[$blockId]->GetBlockProperty('name'))
				&& ($blockId == md5('content_en'.$j) || $blockId == 'content_en'))
			{
				$this->_contentBlocks[$blockId]->SetBlockProperty('label', lang('content'));
			}
			
			if($this->_contentBlocks[$blockId]->GetBlockProperty('translate_labels'))
			{
				$this->_contentBlocks[$blockId]->SetBlockProperty('label', $AdvancedContent->lang($this->_contentBlocks[$blockId]->GetBlockProperty('label')));
			}
			
			$blockDisplay = true;
			if($this->_contentBlocks[$blockId]->GetBlockProperty('collapsible'))
			{
				$blockDisplay = $AdvancedContent->GetItemDisplay('block', $blockId, $this->mId, $this->mTemplateId, !$this->_contentBlocks[$blockId]->GetBlockProperty('collapse'));
				$this->_contentBlocks[$blockId]->SetBlockProperty('pref_url', str_replace('&amp);','&',
				$AdvancedContent->CreateLink('m1_', 'savePrefs', '', $AdvancedContent->lang('toggle_block'),
					array('item_type'=>'block',
						'disable_theme'=>true,
						'ajax'=>true,
						'content_id'=>$this->mId,
						'template_id'=>$this->mTemplateId,
						'item_id'=>$blockId),
					'', true)));
			}
			$this->_contentBlocks[$blockId]->SetBlockProperty('display', $blockDisplay);
			
			if($this->_contentBlocks[$blockId]->GetBlockProperty('multiple') && $AdvancedContent->GetItemDisplay('message', $blockId, $this->mId, $this->mTemplateId))
			{
				$hideLink = str_replace('&amp;','&',
					$AdvancedContent->CreateLink('m1_', 'savePrefs', '', $AdvancedContent->lang('toggle_message'),
						array('item_type'=>'message',
							'disable_theme'=>true,
							'ajax'=>true,
							'content_id'=>$this->mId,
							'template_id'=>$this->mTemplateId,
							'item_id'=>$blockId,
							'item_display'=>0),
						'', false,'','onclick="jQuery.get(this.href); jQuery(this).parent().toggle(\'fast\'); return false;"'));
					$this->_contentBlocks[$blockId]->SetBlockProperty('description', '<p>'.$AdvancedContent->lang('notice_duplicatecontent', $this->_contentBlocks[$blockId]->GetBlockProperty('name')).' ('. $hideLink .')</p>'.$this->_contentBlocks[$blockId]->GetBlockProperty('description'));
			}
			
			if($this->_contentBlocks[$blockId]->GetBlockProperty('block_tab') != '' || $this->_contentBlocks[$blockId]->GetBlockProperty('block_group') != '')
			{
				unset($this->_pageTabs[$tab_id]['content_blocks'][$blockId]);
			}
			if($this->_contentBlocks[$blockId]->GetBlockProperty('block_tab') != '' && $this->_contentBlocks[$blockId]->GetBlockProperty('block_group') != '')
			{
				unset($this->_pageTabs[$tab_id]['block_groups'][$this->_contentBlocks[$blockId]->GetBlockProperty('block_group')]);
			}
			
			if(!$this->_blockTypes[$this->_contentBlocks[$blockId]->GetBlockProperty('type')]['header_html_called'])
			{
				$this->_blockTypes[$this->_contentBlocks[$blockId]->GetBlockProperty('type')]['header_html_called'] = true;
				$headerHTML .= $this->_contentBlocks[$blockId]->GetHeaderHTML();
			}
			
		}
		
		$AdvancedContent->smarty->assign('module_id', 'm1_');
		$AdvancedContent->smarty->assign_by_ref('page_tab_nr', $tab);
		$AdvancedContent->smarty->assign_by_ref('page_tab_id', $tab_id);
		$AdvancedContent->smarty->assign_by_ref('page_tabs', $this->_pageTabs);
		$AdvancedContent->smarty->assign_by_ref('block_tabs', $this->_blockTabs);
		$AdvancedContent->smarty->assign_by_ref('block_groups', $this->_blockGroups);
		$AdvancedContent->smarty->assign_by_ref('block_types', $this->_blockTypes);
		$AdvancedContent->smarty->assign_by_ref('content_blocks', $this->_contentBlocks);
		
		$AdvancedContent->smarty->assign('locale', substr(get_preference(get_userid(),'default_cms_language'), 0, 2));
		
		$AdvancedContent->smarty->assign('getproperty_url', 
			str_replace('&amp;','&',
				$AdvancedContent->CreateLink('m1_', 'getproperty', '', 
					$this->lang('getproperty'),
					array('disable_theme'=>true,'ajax'=>true),
					'', true)
			)
		);
		
		#if($tab == 0)
		#{
		#	debug_buffer($this->_tabIds,'AdvancedContent _tabIds');
		#	debug_buffer($this->_pageTabs,'AdvancedContent _pageTabs');
		#	debug_buffer($this->_blockTabs,'AdvancedContent _blockTabs');
		#	debug_buffer($this->_blockGroups,'AdvancedContent _blockGroups');
		#	debug_buffer($this->_contentBlocks,'AdvancedContent _contentBlocks');
		#	debug_buffer($this->_blockTypes,'AdvancedContent _blockTypes');
		#}
		
		# ugly hack!
		$headers_list = headers_list();
		$output = str_replace('</head>', ( $tab == 0 ? $AdvancedContent->GetHeaderHTML() : '') . $headerHTML . '</head>', ob_get_contents());
		@ob_end_clean();
		@ob_start();
		foreach($headers_list as $header)
		{
			header($header);
		}
		echo $output;
		#--- but works :D
		
		$headerHTML = '';
		$output = '';
		
		$ret[] = array('', $AdvancedContent->ProcessTemplate('contentType.tpl'));
		return $ret;
	}
	
	function ValidateData()
	{
		$errors = parent::ValidateData();
		if( $errors === FALSE )
		{
			$errors = array();
		}
		
		if ($this->mTemplateId <= 0 )
		{
			$errors[] = lang('nofieldgiven', array(lang('template')));
		}
		
		foreach($this->_contentBlocks as $contentBlock)
		{
			if($contentBlock->GetBlockProperty('required') && $this->GetProperty($contentBlock->GetBlockProperty('id')) == '')
			{
				$errors[] = lang('nofieldgiven', array($contentBlock->GetBlockProperty('name')));
			}
		}
		if($this->GetPropertyValue('use_expire_date') && check_permission(get_userid(), 'Manage AdvancedContent Options') && $this->GetProperty('end_date') <= $this->GetProperty('start_date'))
		{
			$AdvancedContent =& cms_utils::get_module('AdvancedContent');
			$errors[] = $AdvancedContent->lang('error_expiredate');
		}
		if(check_permission(get_userid(), 'Manage AdvancedContent Options') && $this->GetProperty('feu_access') && $this->GetProperty('hide_menu_item') == 2)
		{
			$AdvancedContent =& cms_utils::get_module('AdvancedContent');
			$errors[] = $AdvancedContent->lang('error_pageaccess');
		}
		return (count($errors) > 0?$errors:FALSE);
	}
	
	function ContentPreRender($tplSource)
	{
		$this->_parse_template();
		return $tplSource;
	}
	
	function display_single_element($one, $adding)
	{
		switch($one)
		{
			case 'template':
				$templateops =& cmsms()->GetTemplateOperations();
				return array(lang('template') . ':', $templateops->TemplateDropdown('template_id', $this->mTemplateId, 'onchange="document.Edit_Content.submit()"'));
			
			case 'pagemetadata':
				return array(lang('page_metadata') . ':', create_textarea(false, $this->mMetadata, 'metadata', 'pagesmalltextarea', 'metadata', '', '', '80', '6'));
			
			case 'pagedata':
				return array(lang('pagedata_codeblock') . ':', create_textarea(false, $this->GetPropertyValue('pagedata'), 'pagedata', 'pagesmalltextarea', 'pagedata', '', '', '80', '6'));
			
			case 'searchable':
				$searchable = $this->GetPropertyValue('searchable');
				if( $searchable == '' )
				{
					$searchable = 1;
				}
				return array(lang('searchable') . ':',
					'<div class="hidden" ><input type="hidden" name="searchable" value="0" /></div>
					<input type="checkbox" name="searchable" value="1" ' . ($searchable == 1?'checked="checked"':'') . ' />');
			
			case 'disable_wysiwyg':
				$disableWysiwyg = $this->GetPropertyValue('disable_wysiwyg');
				if( $disableWysiwyg == '' )
				{
					$disableWysiwyg = 0;
				}
				return array(lang('disable_wysiwyg') . ':',
					'<div class="hidden" ><input type="hidden" name="disable_wysiwyg" value="0" /></div>
					<input type="checkbox" name="disable_wysiwyg" value="1"  ' . ($disableWysiwyg == 1?'checked="checked"':'') . ' onclick="this.form.submit()" />');
			
			default:
				if(!in_array($one, $this->_advancedAttribs))
				{
					return parent::display_single_element($one, $adding); # ToDo: here we can hook in to add MLE features for title and menutext etc.)
				}
				break;
		}
	}

/**
 * -----------------------------------------------------------------------------
 * Custom functions
 * -----------------------------------------------------------------------------
 */
 
	public final function GetStyleSheet()
	{
		return $this->_stylesheet;
	}
	
	public final function GetProperty($propName)
	{
		$propValue = $this->GetPropertyValue($propName);
		if(cms_utils::get_module('AdvancedContent')->GetPreference('use_advanced_pageoptions', 0))
		{
			if(!$this->_inheritables)
			{
				$this->_inheritables =& cms_utils::get_module('AdvancedContent')->Inheritables($this->mId);
			}
			if(!isset($this->_inheritables[$propName]))
			{
				return $propValue;
			}
			$inherit = false;
			if($propName == 'feu_access')
			{
				$delim     = strpos($propValue,',') === FALSE ? ';' : ',';
				$propValue = $this->CleanArray(explode($delim,$propValue));
				if(in_array(-1,$propValue))
				{
					$inherit = true;
				}
			}
			else if($propValue == -1)
			{
				$inherit = true;
			}
			if($inherit)
			{
				$propValue = $this->InheritParentProp($propName,$propValue);
			}
			if($propName == 'feu_params' || $propName == 'custom_params')
			{
				$matches = array();
				$result  = preg_match_all(AC_BLOCK_PARAM_PATTERN, $propValue, $matches);
				$params1 = array();
				$params2 = array();
				for ($i = 0; $i < count($matches[1]); $i++)
				{
					if(startswith($matches[2][$i],'\''))
					{
						$matches[2][$i] = trim($matches[2][$i],'\'');
					}
					else if(startswith($matches[2][$i],'"'))
					{
						$matches[2][$i] = trim($matches[2][$i],'"');
					}
					$params1[$matches[1][$i]] = $matches[2][$i];
					$params2[]                = $matches[1][$i] . '=' . $matches[2][$i];
				}
				$propValue = array($params1,$params2);
			}
		}
		return $propValue;
	}
	
	public final function &get_content_blocks()
	{
		$this->_parse_template();
		return $this->_contentBlocks;
	}
	
	public final function GetContentBlock($block_id)
	{
		$this->_parse_template();
		return isset($this->_contentBlocks[$block_id]) ? $this->_contentBlocks[$block_id] : false;
	}
	
	public final function &GetBlockGroups()
	{
		$this->_parse_template();
		return $this->_blockGroups;
	}
	
	public final function GetBlockGroup($group_id)
	{
		$this->_parse_template();
		return isset($this->_blockGroups[$group_id]) ? $this->_blockGroups[$group_id] : false;
	}
	
	public final function SetBlockTypeProperty($blockType, $propName, $propValue)
	{
		$this->_blockTypes[$blockType]['props'][$propName] = $propValue;
	}
	
	public final function GetBlockTypeProperty($blockType, $propName, $default = '')
	{
		return isset($this->_blockTypes[$blockType]['props'][$propName]) ? $this->_blockTypes[$blockType]['props'][$propName] : $default;
	}
	
	public final function GetBlockTypeProperties($blockType, $default = array())
	{
		return isset($this->_blockTypes[$blockType]['props']) ? $this->_blockTypes[$blockType]['props'] : $default;
	}
	
	public final function GetBlockTypes()
	{
		return $this->_blockTypes;
	}
	
	public final function GetBlockType($type)
	{
		return isset($this->_blockTypes[$type]) ? $this->_blockTypes[$type] : false;
	}
	
	public final function GetBlocksByType($type)
	{
		return isset($this->_blockTypes[$type]) ? $this->_blockTypes[$type]['content_blocks'] : array();
	}
	
	public final function SetTempProperty($name, $value = '')
	{
		$this->AddExtraProperty($name);
		$this->SetPropertyValueNoLoad($name, $value);
	}
	
	public final function RemoveTempProperty($name)
	{
		$this->mProperties->mPropertyNames = array_diff($this->mProperties->mPropertyNames, array($name));
		unset($this->mProperties->mPropertyValues[$name]);
		unset($this->mProperties->mPropertyTypes[$name]);
	}
	
	private function _parse_template()
	{
		if($this->_contentBlocksLoaded || ($this->mType != 'content2' && $this->mType != 'content'))
		{
			return;
		}
		
		$this->_contentBlocks = array();
		$AdvancedContent =& cms_utils::get_module('AdvancedContent');
		if($this->_cms_access == 'backend')
		{
			$this->_set_tabs();
		}
		else if(!$this->_check_frontend_page_access())
		{
			return;
		}
		
		$templateops =& cmsms()->GetTemplateOperations();
		if ($this->mTemplateId && $this->mTemplateId > -1)
		{
			$template = $templateops->LoadTemplateByID($this->mTemplateId);
		}
		else
		{
			$template = $templateops->LoadDefaultTemplate();
			$this->mTemplateId = $template->id;
		}
		
		if($template !== false)
		{
			$this->_stylesheet = '../stylesheet.php?templateid='.$this->mTemplateId;
			
			$matches = array();
			$result = preg_match_all(AC_BLOCK_PATTERN, $template->content, $matches);
			
			if ($result && count($matches[1]) > 0)
			{
				$j = 0;
				foreach ($matches[1] as $key=>$wholetag)
				{
					$j++;
					if(!$contentBlock = $this->CreateContentBlock($wholetag))
					{
						continue;
					}
					
					if(!$contentBlock->GetBlockProperty('active'))
					{
						continue; # don't process inactive blocks
					}
					
					if(isset($this->_contentBlocks[$contentBlock->GetBlockProperty('id')]))
					{
						$this->_contentBlocks[$contentBlock->GetBlockProperty('id')]->SetBlockProperty('multiple', true);
						continue; # do not process blocks with same id twice
					}
					
					# this will create an invalid block type to print out a
					# message when using a basic content property as block name
					if($this->is_known_property($contentBlock->GetBlockProperty('id')))
					{
						$contentBlock->SetBlockProperty('id', md5($contentBlock->GetBlockProperty('id') . $j));
						$contentBlock->SetBlockProperty('type', '');
						$contentBlock->SetBlockProperty('default', $this->lang('error_basicattrib', $contentBlock->GetBlockProperty('name')));
						$this->_register_content_block($contentBlock);
						continue;
					}
					$this->_register_content_block($contentBlock);
				}
			}
			# force a load
			$this->mProperties->Load($this->mId);
			$this->_contentBlocksLoaded = true;
		}
	}
	
	public final function CreateContentBlock($wholetag) 
	{
		$matches    = array();
		$result     = preg_match_all(AC_BLOCK_PARAM_PATTERN, $wholetag, $matches);
		$params     = array();
		$block_type = 'text';
		for ($i = 0; $i < count($matches[1]); $i++)
		{
			if(startswith($matches[2][$i],'\''))
			{
				$matches[2][$i] = trim($matches[2][$i],'\'');
			}
			else if(startswith($matches[2][$i],'"'))
			{
				$matches[2][$i] = trim($matches[2][$i],'"');
			}
			$params[$matches[1][$i]] = $matches[2][$i];
		}
		
		$params['smarty'] = (isset($params['smarty'])
			&& ($this->IsTrue($params['smarty']) 
			|| $params['smarty'] == 'both' 
			|| $params['smarty'] == $this->_cms_access));
		
		# block active ?
		$params['active'] = isset($params['active']) ? $params['active'] : true;
		if($params['smarty'])
		{
			$params['active'] = $this->DoSmarty($params['active']);
		}
		if($this->IsFalse($params['active']))
		{
			return false;
		}
		#---
		
		# additional editors
		$params['editor_groups'] = isset($params['editor_groups']) ? $params['editor_groups'] : '';
		$params['editor_users']  = isset($params['editor_users'])  ? $params['editor_users']  : '';
		if($this->_cms_access == 'backend'
			&& ($params['editor_groups'] || $params['editor_users'])
			&& !$this->_check_block_permission($params['editor_users'], $params['editor_groups']))
		{
			return false; # do not process blocks without permission to edit
		}
		#---
		
		$params['block_type'] = isset($params['block_type']) ? strtolower($params['block_type']) : 'text';
		if(startswith($wholetag, 'content_image'))
		{
			$params['block_type'] = 'image';
		}
		elseif(startswith($wholetag, 'content_module'))
		{
			$params['block_type'] = 'module';
		}
		
		if(isset($params['block']) && munge_string_to_url(trim($params['block'])) == '')
		{
			if($this->_cms_access == 'backend')
			{
				$classname = 'acContentBlockBase';
			}
			else
			{
				return;
			}
		}
		else
		{
			$classname = 'acBlockType_' . $params['block_type'];
		}
		
		$contentBlock = new $classname($this, $params);
		
		return $contentBlock;
	}
	
	private function _register_content_block(&$contentBlock)
	{
		$AdvancedContent =& cms_utils::get_module('AdvancedContent');
		if($contentBlock->GetBlockProperty('type') != '')
		{
			$this->_blockTypes[$contentBlock->GetBlockProperty('type')]['content_blocks'][$contentBlock->GetBlockProperty('id')] = $contentBlock->GetBlockProperty('id');
			$this->_blockTypes[$contentBlock->GetBlockProperty('type')]['header_html_called'] = false;
			
			if($this->_cms_access == 'backend')
			{
				# this block has been added to the template after page has been created?
				if(!in_array($contentBlock->GetBlockProperty('id'),$this->mProperties->mPropertyNames))
				{
					$contentBlock->SetBlockProperty('new_block', true);
				}
				
				$pageTab = preg_replace('/-+/','_',munge_string_to_url(strtolower(trim($contentBlock->GetBlockProperty('page_tab')))));
				if(!isset($this->_pageTabs[$pageTab]))
				{
					$this->_pageTabs[$pageTab]['tab_id']       = $pageTab;
					$this->_pageTabs[$pageTab]['tab_name']     = $contentBlock->GetBlockProperty('page_tab');
					$this->_pageTabs[$pageTab]['block_tabs']   = array();
					$this->_pageTabs[$pageTab]['block_groups'] = array();
					$contentBlock->SetBlockProperty('page_tab', $pageTab);
				}
				$this->_pageTabs[$pageTab]['content_blocks'][$contentBlock->GetBlockProperty('id')] = $contentBlock->GetBlockProperty('id');
				
				$blockTab = '';
				if($contentBlock->GetBlockProperty('block_tab') != '')
				{
					$blockTab = $pageTab . '_' . preg_replace('/-+/','_',munge_string_to_url(strtolower(trim($contentBlock->GetBlockProperty('block_tab')))));
					if(!isset($this->_blockTabs[$blockTab]))
					{
						$this->_blockTabs[$blockTab]['tab_id']       = $blockTab;
						$this->_blockTabs[$blockTab]['tab_name']     = $contentBlock->GetBlockProperty('block_tab');
						$this->_blockTabs[$blockTab]['block_groups'] = array();
					}
					$this->_blockTabs[$blockTab]['content_blocks'][$contentBlock->GetBlockProperty('id')] = $contentBlock->GetBlockProperty('id');
					$this->_pageTabs[$pageTab]['block_tabs'][$blockTab] = $blockTab;
					$contentBlock->SetBlockProperty('block_tab', $blockTab);
				}
				
				$blockGroup = '';
				if($contentBlock->GetBlockProperty('block_group') != '')
				{
					$blockGroup = ($blockTab?$blockTab:$pageTab) . '_' . preg_replace('/-+/','_',munge_string_to_url(strtolower(trim($contentBlock->GetBlockProperty('block_group')))));
					if(!isset($this->_blockGroups[$blockGroup]))
					{
						$this->_blockGroups[$blockGroup]['group_id']            = $blockGroup;
						$this->_blockGroups[$blockGroup]['group_name']          = $contentBlock->GetBlockProperty('block_group');
						$this->_blockGroups[$blockGroup]['collapsible']         = $contentBlock->GetBlockProperty('collapsible');
						if(!$this->_blockGroups[$blockGroup]['collapsible'])
						{
							$this->_blockGroups[$blockGroup]['collapse'] = false;
						}
						else
						{
							$this->_blockGroups[$blockGroup]['collapse'] = $AdvancedContent->GetPreference('collapse_group_default',1);
						}
						$this->_pageTabs[$pageTab]['block_groups'][$blockGroup] = $blockGroup;
					}
					$this->_blockGroups[$blockGroup]['content_blocks'][$contentBlock->GetBlockProperty('id')] = $contentBlock->GetBlockProperty('id');
					unset($this->_blockTabs[$blockTab]['content_blocks'][$contentBlock->GetBlockProperty('id')]);
					if($blockTab)
					{
						$this->_blockTabs[$blockTab]['block_groups'][$blockGroup] = $blockGroup;
					}
					else
					{
						unset($this->_blockTabs[$blockTab]['block_groups'][$blockGroup]);
					}
					$contentBlock->SetBlockProperty('block_group', $blockGroup);
				}
			}
			
			#$AdvancedContent =& cms_utils::get_module('AdvancedContent');
			#$AdvancedContent->SetAllowedParam($contentBlock->GetBlockProperty('id'), CLEAN_NONE);
			#foreach($contentBlock->GetBlockProperties() as $paramName => $paramValue)
			#{
			#	if(is_string($paramValue))
			#	{
			#		$AdvancedContent->SetAllowedParam($paramName, CLEAN_STRING);
			#		continue;
			#	}
			#	if(is_bool($paramValue) || is_int($paramValue))
			#	{
			#		$AdvancedContent->SetAllowedParam($paramName, CLEAN_INT);
			#		continue;
			#	}
			#	if(is_float($paramValue) || is_double($paramValue))
			#	{
			#		$AdvancedContent->SetAllowedParam($paramName, CLEAN_FLOAT);
			#		continue;
			#	}
			#	$AdvancedContent->SetAllowedParam($paramName, CLEAN_NONE);
			#}
			
			$this->_blockTypes[$contentBlock->GetBlockProperty('type')]['props'] = $contentBlock->GetBlockTypeProperties($this->_cms_access);
			$this->AddExtraProperty($contentBlock->GetBlockProperty('id'));
			
			#if($contentBlock->GetBlockProperty('inherit'))
			#{
			#	$this->_inheritables[$contentBlock->GetBlockProperty('id')] = -1;
			#	$this->SetPropertyValueNoLoad($contentBlock->GetBlockProperty('id'), -1);
			#}
		}
		$this->_contentBlocks[$contentBlock->GetBlockProperty('id')] = $contentBlock;
	}
	
	private function _set_tabs()
	{
		$AdvancedContent          =& cms_utils::get_module('AdvancedContent');
		$this->_tabIds            = array();
		$this->_blockTabs         = array();
		$this->_blockGroups       = array();
		
		$this->_pageTabs = array(
			'main' => array(
				'tab_id'         => 'main',
				'tab_name'       => lang('main'),
				'block_tabs'     => array(),
				'block_groups'   => array(),
				'content_blocks' => array()));
		$this->_tabIds[] = 'main';
		
		if( check_permission(get_userid(), 'Manage All Content') )
		{
			$this->_pageTabs['options'] = array(
				'tab_id'         => 'options',
				'tab_name'       => lang('options'),
				'block_tabs'     => array(),
				'block_groups'   => array(),
				'content_blocks' => array());
			$this->_tabIds[] = 'options';
		}
		
		if( check_permission(get_userid(), 'Manage AdvancedContent Options') && $AdvancedContent->GetPreference('use_advanced_pageoptions', 0) )
		{
			$this->_pageTabs['AdvancedContent'] = array(
				'tab_id'         => 'AdvancedContent',
				'tab_name'       => $AdvancedContent->lang('advancedcontent_tabname'),
				'block_tabs'     => array(),
				'block_groups'   => array(),
				'content_blocks' => array());
			$this->_tabIds[] = 'AdvancedContent';
		}
	}
	
	/**
	 * Display the advanced options
	 * @param boolean $adding - true if page is added, false if edited
	 * @return array - array(array(prompt,imput))
	 */
	private function _display_advanced_options($adding)
	{
		$AdvancedContent =& cms_utils::get_module('AdvancedContent');
		$ret = array();
		foreach( $this->_advancedAttribs as $oneAttrib )
		{
			switch($oneAttrib)
			{
				case 'feu_access':
					if($feusers =& cms_utils::get_module('FrontEndUsers'))
					{
						if($adding)
						{
							$selectedGroups = $AdvancedContent->GetPreference('feu_access');
						}
						else
						{
							$selectedGroups = $this->GetPropertyValue('feu_access');
						}
						$delim          = strpos($selectedGroups,',') === FALSE ? ';' : ',';
						$selectedGroups = $this->CleanArray(explode($delim,$selectedGroups));
						
						$feuAccess = array($AdvancedContent->lang('inherit_from_parent')=>-1);
						$feuAccess = array_merge($feuAccess,$feusers->GetGroupList());
						$ret[] = array($AdvancedContent->lang('frontendaccess').' : ',
							'<input type="hidden" value="" name="feu_access" />'.
							$AdvancedContent->CreateInputSelectList('','feu_access[]',$feuAccess,$selectedGroups,count($feuAccess),'',1));
							#$AdvancedContent->CreateInputSelectList('','feu_access[]',$feuAccess,$selectedGroups,count($feuAccess),'onchange="if(this.value){AdvancedContent.getProperty(this.name, function(input,data){if(parseInt(data)>0){alert(\'error\');}});}"',1));
					}
					break;
				
				case 'redirect_page':
					if($feusers =& cms_utils::get_module('FrontEndUsers'))
					{
						if($adding)
						{
							$this->SetPropertyValueNoLoad("redirect_page",$AdvancedContent->GetPreference('redirect_page',''));
							$this->SetPropertyValueNoLoad('inherit_custom_params',$AdvancedContent->GetPreference('inherit_custom_params',''));
							$this->SetPropertyValueNoLoad("custom_params",$AdvancedContent->GetPreference('custom_params',''));
							$this->SetPropertyValueNoLoad("custom_params_smarty",$AdvancedContent->GetPreference('custom_params_smarty',''));
						}
						$redirectPage = $this->GetPropertyValue('redirect_page');
						$inherit      = $this->GetPropertyValue('inherit_custom_params');
						$params       = $this->GetPropertyValue("custom_params");
						$do_smarty    = $this->GetPropertyValue("custom_params_smarty");
						$ret[] = array($AdvancedContent->lang('redirectpage').' : ',
							$AdvancedContent->CreateRedirectDropdown('', 'redirect_page',$redirectPage, $this->mId, 'onchange="if(!this.value){jQuery(\'#AdvancedContent_custom_params input\').attr(\'disabled\',\'disabled\');if(jQuery(\'#AdvancedContent_custom_params\').css(\'display\') != \'none\'){jQuery(\'#AdvancedContent_custom_params\').slideUp();}}else{jQuery(\'#AdvancedContent_custom_params input\').removeAttr(\'disabled\');if(jQuery(\'#AdvancedContent_custom_params\').css(\'display\') == \'none\'){jQuery(\'#AdvancedContent_custom_params\').slideDown();}}"').
							'<br /><span id="AdvancedContent_custom_params" class="AdvancedContent_custom_params" style="overflow:hidden;white-space:nowrap;'.(!$this->GetPropertyValue("redirect_page") ? 'display:none' :'').'"><br /><strong>' . $AdvancedContent->lang('custom_params').' : </strong><br />
							<span class="AdvancedContent_custom_params" style="overflow:hidden;white-space:nowrap;">'.$AdvancedContent->lang('inherit_from_parent') . ' : ' .
							'<input type="checkbox" name="inherit_custom_params" value="1" ' . ($inherit ? 'checked="checked"':'') . ' onchange="if(this.checked){jQuery(\'#AdvancedContent_custom_params_wrapper input\').attr(\'disabled\',\'disabled\');if(jQuery(\'#AdvancedContent_custom_params_wrapper\').css(\'display\') != \'none\'){jQuery(\'#AdvancedContent_custom_params_wrapper\').slideUp();}}else{jQuery(\'#AdvancedContent_custom_params_wrapper input\').removeAttr(\'disabled\');if(jQuery(\'#AdvancedContent_custom_params_wrapper\').css(\'display\') == \'none\'){jQuery(\'#AdvancedContent_custom_params_wrapper\').slideDown();}}"/><br /><br />
							<span id="AdvancedContent_custom_params_wrapper" style="overflow:hidden;white-space:nowrap;'.($inherit ? 'display:none' :'').'"><input class="AdvancedContent_custom_params" type="text" size="32" maxlength="128" name="custom_params" value="'.($inherit ? '' : $params).'" '.($inherit ? 'disabled="disabled" ' : '').'/>&nbsp;<em>(param1=value1 param2=value2 ...)</em><br /><br />'.
							$AdvancedContent->lang('evaluatesmarty') . ' : '.
							'<input type="hidden" name="custom_params_smarty" value="0" '.($inherit ? 'disabled="disabled" ' : '').'/>
							<input type="checkbox" name="custom_params_smarty" value="1"  ' . ($do_smarty == 1 && !$inherit ? 'checked="checked" ':'') . ($inherit ? 'disabled="disabled" ' : '').'/></span></span></span>');
					}
					break;
				
				case 'feu_action':
					if($feusers =& cms_utils::get_module('FrontEndUsers'))
					{
						if($adding)
						{
							$this->SetPropertyValueNoLoad('feu_action', $AdvancedContent->GetPreference('feu_action',1));
							$this->SetPropertyValueNoLoad('inherit_feu_params',$AdvancedContent->GetPreference('inherit_feu_params',''));
							$this->SetPropertyValueNoLoad("feu_params",$AdvancedContent->GetPreference('feu_params',''));
							$this->SetPropertyValueNoLoad("feu_params_smarty",$AdvancedContent->GetPreference('feu_params_smarty',''));
						}
						$feu_action = $this->GetPropertyValue('feu_action');
						$inherit    = $this->GetPropertyValue('inherit_feu_params');
						$params     = $this->GetPropertyValue("feu_params");
						$do_smarty  = $this->GetPropertyValue("feu_params_smarty");
						
						$ret[] = array($AdvancedContent->lang('showloginform').' : ',
							$AdvancedContent->CreateInputDropdown('','feu_action',
								array($AdvancedContent->lang('yes')=>1,
									$AdvancedContent->lang('no')=>0,
									$AdvancedContent->lang('inherit_from_parent')=>-1),
								0,$feu_action,
								'onchange="if(this.value == 0){jQuery(\'#AdvancedContent_feu_params input\').attr(\'disabled\',\'disabled\');if(jQuery(\'#AdvancedContent_feu_params\').css(\'display\') != \'none\'){jQuery(\'#AdvancedContent_feu_params\').slideUp();}}else{jQuery(\'#AdvancedContent_feu_params input\').removeAttr(\'disabled\');if(jQuery(\'#AdvancedContent_feu_params\').css(\'display\') == \'none\'){jQuery(\'#AdvancedContent_feu_params\').slideDown();}}"').
								'<br /><span id="AdvancedContent_feu_params" style="overflow:hidden;white-space:nowrap;'.(!$feu_action ? 'display:none' :'').'"><br /><strong>' . $AdvancedContent->lang('feu_params').' : </strong><br />
								<span class="AdvancedContent_feu_params" style="overflow:hidden;white-space:nowrap;">'.$AdvancedContent->lang('inherit_from_parent') . ' : ' .
								'<input type="checkbox" name="inherit_feu_params" value="1" ' . ($inherit ? 'checked="checked"':'') . ' onchange="if(this.checked){jQuery(\'#AdvancedContent_feu_params_wrapper input\').attr(\'disabled\',\'disabled\');if(jQuery(\'#AdvancedContent_feu_params_wrapper\').css(\'display\') != \'none\'){jQuery(\'#AdvancedContent_feu_params_wrapper\').slideUp();}}else{jQuery(\'#AdvancedContent_feu_params_wrapper input\').removeAttr(\'disabled\');if(jQuery(\'#AdvancedContent_feu_params_wrapper\').css(\'display\') == \'none\'){jQuery(\'#AdvancedContent_feu_params_wrapper\').slideDown();}}"/><br /><br />
								<span id="AdvancedContent_feu_params_wrapper" style="overflow:hidden;white-space:nowrap;'.($inherit ? 'display:none' :'').'"><input class="AdvancedContent_feu_params" type="text" size="32" maxlength="128" name="feu_params" value="'.($inherit ? '' : $params).'" '.($inherit ? 'disabled="disabled" ' : '').'/>&nbsp;<em>(param1=value1 param2=value2 ...)</em><br /><br />'.
								$AdvancedContent->lang('evaluatesmarty') . ' : '.
								'<input type="hidden" name="feu_params_smarty" value="0" '.($inherit ? 'disabled="disabled" ' : '').'/>
								<input type="checkbox" name="feu_params_smarty" value="1"  ' . ($do_smarty == 1 && !$inherit ? 'checked="checked" ':'') . ($inherit ? 'disabled="disabled" ' : '').'/></span></span></span>');
					}
					break;
				
				case 'use_expire_date':
					if($adding)
					{
						$useExp    = $AdvancedContent->GetPreference('use_expire_date',false);
						$startDate = strtotime('+' . $AdvancedContent->GetPreference("start_date",'1 week'));
						$endDate   = strtotime('+' . $AdvancedContent->GetPreference("end_date",'1 week'), $startDate);
					}
					else
					{
						$useExp    = $this->GetPropertyValue('use_expire_date');
						$startDate = $this->GetPropertyValue('start_date') ? $this->GetPropertyValue('start_date') : strtotime('+' . $AdvancedContent->GetPreference("start_date",'1 week'));
						$endDate   = $this->GetPropertyValue('end_date') ? $this->GetPropertyValue('end_date') : strtotime('+' . $AdvancedContent->GetPreference("end_date",'1 week'), $startDate);
					}
					
					setlocale(LC_ALL, get_preference(get_userid(), 'default_cms_language'));
					
					$date        = strftime('%x', intval($startDate));
					$time        = strftime('%H:%M', intval($startDate));
					$_tmp        = $this->CleanArray(explode(':',$time));
					$timeSeconds = (($_tmp[0] * 3600) + ($_tmp[1] * 60));
					$dateSeconds = $startDate - $timeSeconds;
					
					$dateInput = '<br /><br />
						<span id="AdvancedContent_expire_date_wrapper" style="overflow:hidden;white-space:nowrap;'.($useExp <= 0 ? 'display:none' : '').'"><strong>'.
						$AdvancedContent->lang('startdate').' : </strong><br />
						<input type="text" id="AdvancedContentStartDatePickerDisplay" value="'.$date.'" />&nbsp;&nbsp;-&nbsp;&nbsp;
						<input id="AdvancedContentStartDate" type="hidden" '.($useExp <= 0 ? 'disabled="disabled"' : '').' name="start_date[date]" value="'.($dateSeconds * 1000).'" />
						<select name="start_date[time]" '.($useExp <= 0 ? 'disabled="disabled"' : '').'>';
						
					for($i=0; $i<=23; $i++)
					{
						for($j=0; $j<=59; $j++)
						{
							$value = ($i*3600) + ($j*60);
							$dateInput .= '<option value="'. $value .'"'. ($value == $timeSeconds && $useExp > 0 ? ' selected="selected" ':'') . '>'. ($i<10?'0'.$i:$i) .':'. ($j<10?'0'.$j:$j) .'</option>';
						}
						$j = 0;
					}
					$dateInput .= '</select><br /><br />';
					
					$date        = strftime('%x', intval($endDate));
					$time        = strftime('%H:%M', intval($endDate));
					$_tmp        = $this->CleanArray(explode(':',$time));
					$timeSeconds = (($_tmp[0] * 3600) + ($_tmp[1] * 60));
					$dateSeconds = $endDate - $timeSeconds;
					
					$dateInput .= '<strong>' . $AdvancedContent->lang('enddate').' : </strong><br />
						<input type="text" id="AdvancedContentEndDatePickerDisplay" value="'.$date.'" />&nbsp;&nbsp;-&nbsp;&nbsp;
						<input id="AdvancedContentEndDate" type="hidden" '.($useExp <= 0 ? 'disabled="disabled"' : '').' name="end_date[date]" value="'.($dateSeconds * 1000).'" />
						<select name="end_date[time]" '.($useExp <= 0 ? 'disabled="disabled"' : '').'>';
						
					for($i=0; $i<=23; $i++)
					{
						for($j=0; $j<=59; $j++)
						{
							$value = ($i*3600) + ($j*60);
							$dateInput .= '<option value="'. $value .'"'. ($value == $timeSeconds && $useExp > 0 ? ' selected="selected"':'') .'>'. ($i<10?'0'.$i:$i) .':'. ($j<10?'0'.$j:$j) .'</option>';
						}
						$j = 0;
					}
					$dateInput .= '</select></span>';
					
					$ret[] = array($AdvancedContent->lang('useexpiredate') . ':',
						$AdvancedContent->CreateInputDropdown('','use_expire_date',
								array($AdvancedContent->lang('yes')=>1,
									$AdvancedContent->lang('no')=>0,
									$AdvancedContent->lang('inherit_from_parent')=>-1),
								-1,$useExp,'onchange="if(this.value != \'1\'){jQuery(\'#AdvancedContent_expire_date_wrapper input, #AdvancedContent_expire_date_wrapper select, #AdvancedContent_expire_date_wrapper textarea\').attr(\'disabled\',\'disabled\');if(jQuery(\'#AdvancedContent_expire_date_wrapper\').css(\'display\') != \'none\'){jQuery(\'#AdvancedContent_expire_date_wrapper\').slideUp();}}else{jQuery(\'#AdvancedContent_expire_date_wrapper input, #AdvancedContent_expire_date_wrapper select, #AdvancedContent_expire_date_wrapper textarea\').removeAttr(\'disabled\');if(jQuery(\'#AdvancedContent_expire_date_wrapper\').css(\'display\') == \'none\'){jQuery(\'#AdvancedContent_expire_date_wrapper\').slideDown();}}"') . $dateInput);
					
					break;
					
				case 'hide_menu_item':
					if($feusers =& cms_utils::get_module('FrontEndUsers'))
					{
						if($adding)
						{
							$hide = $AdvancedContent->GetPreference('hide_menu_item',0);
						}
						else
						{
							$hide = $this->GetPropertyValue('hide_menu_item');
						}
						$ret[] = array($AdvancedContent->lang('hide_menu_item') . ':',
							$AdvancedContent->CreateInputDropdown('','hide_menu_item',
								array($AdvancedContent->lang('no')=>0,
									$AdvancedContent->lang('loggedout')=>1,
									$AdvancedContent->lang('loggedin')=>2,
									$AdvancedContent->lang('inherit_from_parent')=>-1),
								0,$hide));
					}
					break;
				
				default:break;
			}
		}
		return $ret;
	}
	
	
	/**
	 * This is just a wrapper to process a template from data
	 * @param string $data - The template content to process
	 * @return string - The processed template data
	 */
	public final function DoSmarty($data)
	{
		if(is_array($data))
		{
			foreach($data as $k => $v)
			{
				$data[$k] = $this->DoSmarty($v);
			}
		}
		if(!is_array($data) && !is_object($data) && preg_match_all('/:::([^:]+):::/', $data, $matches))
		{
			$AdvancedContent =& cms_utils::get_module('AdvancedContent');
			$AdvancedContent->smarty->assign_by_ref('content_obj', $this);
			$AdvancedContent->smarty->assign_by_ref('content_id', $this->mId);
			$AdvancedContent->smarty->assign_by_ref('content_alias', $this->mAlias);
			$AdvancedContent->smarty->assign_by_ref('page', $this->mAlias);
			$AdvancedContent->smarty->assign_by_ref('page_id', $this->mAlias);
			$AdvancedContent->smarty->assign_by_ref('page_alias', $this->mAlias);
			$AdvancedContent->smarty->assign_by_ref('page_name', $this->mAlias);
			$AdvancedContent->smarty->assign_by_ref('position', $this->mHierarchy);
			$AdvancedContent->smarty->assign('friendly_position', cmsms()->GetContentOperations()->CreateFriendlyHierarchyPosition($this->mHierarchy));
			$data = $AdvancedContent->ProcessTemplateFromData(preg_replace('/:::([^:]+):::/', '{$1}', $data));
		}
		return $data;
	}
	
	public final function InheritParentProp($propName, $currentProp = array())
	{
		return cms_utils::get_module('AdvancedContent')->InheritParentProp($this->mId, $this->mParentId, $propName, $currentProp);
	}
	
	/**
	 * Get the groups of the backend user
	 * @return array
	 * @access private
	 */
	private function &_get_admin_groups()
	{
		if(!$this->_userGroups)
		{
			$db =& cmsms()->GetDb();
			$this->_userGroups = array();
			$query = "SELECT group_id FROM ".cms_db_prefix()."user_groups WHERE user_id = ?";
			$dbresult = $db->Execute($query, array(get_userid()));
			while( $dbresult && $row = $dbresult->FetchRow() )
			{
				$this->_userGroups[] = $row['group_id'] * -1;
			}
		}
		return $this->_userGroups;
	}
	
	
	/**
	 * Get all backend groups
	 * @return array
	 * @access private
	 */
	private function &_get_all_admin_groups()
	{
		if(!$this->_allAdminGroups)
		{
			$groupOps              =& cmsms()->GetGroupOperations();
			$this->_allAdminGroups = $groupOps->LoadGroups();
		}
		return $this->_allAdminGroups;
	}
	
	
	/**
	 * Get all backend users
	 * @return array
	 * @access private
	 */
	private function &_get_all_admin_users()
	{
		if(!$this->_allAdminUsers)
		{
			$userOps              =& cmsms()->GetUserOperations();
			$this->_allAdminUsers =& $userOps->LoadUsers();
		}
		return $this->_allAdminUsers;
	}
	
	
	/**
	 * Checks if a backend user has sufficient permission to edit a block
	 * @return boolean
	 * @access private
	 */
	private function _check_block_permission($editor_users, $editor_groups)
	{
		$addt_editors = array();
		if(($editor_users != '' || $editor_groups != '')
			&& !check_permission(get_userid(), 'Manage All AdvancedContent Blocks'))
		{
			$editorGroups =  $this->CleanArray(explode(',',$editor_groups));
			$editorUsers  =  $this->CleanArray(explode(',',$editor_users));
			foreach ($this->_get_all_admin_groups() as $oneGroup)
			{
				if(in_array($oneGroup->name,$editorGroups))
				{
					$addt_editors[] = $oneGroup->id*-1;
				}
			}
			
			foreach ($this->_get_all_admin_users() as $oneUser)
			{
				if(in_array($oneUser->username,$editorUsers))
				{
					$addt_editors[] = $oneUser->id;
				}
			}
			
			if(!in_array(get_userid(),$addt_editors)
				&& !count(array_intersect($this->_get_admin_groups(),$addt_editors)))
			{
				return false;
			}
		}
		return true;
	}
	
	
	/**
	 * checks if a var is really empty. 
	 * if var is an array it recursivley checks all elements
	 *
	 * @param mixed $var - the var to check for empty value(s)
	 * @param boolean $trim - true to trim off spaces
	 * @param boolean $unsetEmptyIndexes - true to delete empty elements from array
	 * @return boolean - true if empty, false if not
	 */
	public final function IsVarEmpty(&$var, $trim = true, $unset = false)
	{
		if (is_array($var))
		{
			foreach ($var as $k=>$v)
			{
				if (!$this->IsVarEmpty($v))
				{
					return false;
				}
				else
				{
					if($unset)
					{
						unset($var[$k]);
					}
					return true;
				}
			}
		}
		else if($trim && trim($var) == '')
		{
			return true;
		}
		else if($var == '')
		{
			return true;
		}
		return false;
	}
	
	
	/**
	 * function CleanArray($array)
	 * not part of the module api
	 * removes empty elements from an array
	 * (can be useful when using function explode to create the array of a csv)
	 *
	 * @param array $array - the array to clean up
	 * @return array - an array without empty elements or an empty array
	 */
	public final function CleanArray($array, $trim = true, $unset = true)
	{
		if (!is_array($array))
		{
			return array();
		}
		foreach ($array as $k=>$v)
		{
			if ($this->IsVarEmpty($v,$trim,$unset))
			{
				unset($array[$k]);
			}
			else if(is_array($v))
			{
				$v = $this->CleanArray($v);
				if($this->IsVarEmpty($v,$trim,$unset))
				{
					unset($array[$k]);
				}
				else
				{
					$array[$k] = $v;
				}
			}
		}
		return $array;
	}
	
	
	/**
	 * checks if a value is really meant to be "true"
	 *
	 * @param mixed $value - the value to check
	 * @return bool
	 */
	public final function IsTrue($value)
	{
		return (strtolower($value) === 'true' || $value === 1 || $value === '1' || $value === true);
	}
	
	
	/**
	 * checks if a value is really meant to be "false"
	 *
	 * @param mixed $value - the value to check
	 * @return bool
	 */
	public final function IsFalse($value)
	{
		return (strtolower($value) === 'false' || $value === '0' || $value === 0 || $value === false || $value === '');
	}
	
	
	/**
	 * Checks if a frontend user is logged in and belongs to a certain group
	 *
	 * @param array|string $feu_groups - the allowed frontend user groups the user should belong to (array or csv)
	 * @return bool
	 */
	private function _check_frontend_access($feu_groups)
	{
		$access = true;
		if(!is_array($feu_groups))
		{
			$feu_groups = $this->CleanArray(explode(',',$feu_groups));
		}
		if( $feusers =& cms_utils::get_module('FrontEndUsers') && !empty($feu_groups))
		{
			$access = false;
			$userid = $feusers->LoggedInId();
			if($userid && $groups =& $this->_get_feu_groups($userid))
			{
				foreach($groups as $onegroup)
				{
					#if(in_array($onegroup['groupid'],$feu_groups) || in_array($onegroup['groupname'],$feu_groups))
					if(in_array($onegroup['groupid'],$feu_groups))
					{
						$access = true;
						break;
					}
				}
			}
		}
		return $access;
	}
	
	
	/**
	 * Just gets all frontend user groups a frontend user belongs to
	 * and caches them in a member variable
	 *
	 * @param int $userid - the id of the user
	 * @return array
	 */
	private function &_get_feu_groups($userid)
	{
		if(!$userid)
		{
			return false;
		}
		if( $feusers =& cms_utils::get_module('FrontEndUsers') && !$this->_feuGroups)
		{
			$this->_feuGroups = $feusers->GetMemberGroupsArray($userid);
		}
		return $this->_feuGroups;
	}
	
	
	/**
	 * Checks if a frontend user has access to a page
	 *
	 * @return boolean
	 */
	private function _check_frontend_page_access()
	{
		if($this->_feuAccess == -1)
		{
			$this->_feuAccess = ($this->GetProperty('hide_menu_item') == 2 && cms_utils::get_module('FrontEndUsers')->LoggedInId()) ? false : $this->_check_frontend_access($this->GetProperty('feu_access'));
		}
		return $this->_feuAccess;
	}
	
	
	/**
	 * Perform the selected action if a page is accessed where the user has no access
	 */
	private function _do_feu_action()
	{
		if( $feusers =& cms_utils::get_module('FrontEndUsers' ))
		{
			$redirectPage = $this->GetProperty('redirect_page');
			if($redirectPage == $this->mId || $redirectPage == $this->mAlias)
			{
				$redirectPage = '';
			}
			
			# get feu_params
			if(!$this->GetPropertyValue('inherit_feu_params'))
			{
				$feu_params        = $this->GetPropertyValue('feu_params');
				$feu_params_smarty = $this->GetPropertyValue('feu_params_smarty');
			}
			else
			{
				$feu_params        = $this->InheritParentProp('feu_params');
				$feu_params_smarty = $this->InheritParentProp('feu_params_smarty');
			}
			if($feu_params_smarty)
			{
				$feu_params = $feusers->ProcessTemplateFromData($feu_params);
			}
			$matches = array();
			$result  = preg_match_all(AC_BLOCK_PARAM_PATTERN, $feu_params, $matches);
			$feu_params1 = array(); # array(param_name => param_value)
			$feu_params2 = array(); # string "param_name=param_value"
			for ($i = 0; $i < count($matches[1]); $i++)
			{
				if(startswith($matches[2][$i],'\''))
				{
					$matches[2][$i] = trim($matches[2][$i],'\'');
				}
				else if(startswith($matches[2][$i],'"'))
				{
					$matches[2][$i] = trim($matches[2][$i],'"');
				}
				$feu_params1[$matches[1][$i]] = $matches[2][$i];
				$feu_params2[]                = $matches[1][$i] . '=' . $matches[2][$i];
			}
			#---
			
			# do feu_action
			$feuAction = $this->GetProperty('feu_action');
			if(!$redirectPage)
			{
				if($feuAction && !$this->_feuAction)
				{
					$this->_feuAction = true;
					# cannot pass custom_params when DoAction() is used
					return $feusers->DoAction('default', 'cntnt01', array_merge(array('form'=>'login'),$feu_params1), $this->mId);
				}
				return;
			}
			
			# get custom_params
			if(!$this->GetPropertyValue('inherit_custom_params'))
			{
				$custom_params        = $this->GetPropertyValue('custom_params');
				$custom_params_smarty = $this->GetPropertyValue('custom_params_smarty');
			}
			else
			{
				$custom_params        = $this->InheritParentProp('custom_params');
				$custom_params_smarty = $this->InheritParentProp('custom_params_smarty');
			}
			if($custom_params_smarty)
			{
				$custom_params = $feusers->ProcessTemplateFromData($custom_params);
			}
			$matches = array();
			$result  = preg_match_all(AC_BLOCK_PARAM_PATTERN, $custom_params, $matches);
			$custom_params1 = array();
			$custom_params2 = array();
			for ($i = 0; $i < count($matches[1]); $i++)
			{
				if(startswith($matches[2][$i],'\''))
				{
					$matches[2][$i] = trim($matches[2][$i],'\'');
				}
				else if(startswith($matches[2][$i],'"'))
				{
					$matches[2][$i] = trim($matches[2][$i],'"');
				}
				$custom_params1[$matches[1][$i]] = $matches[2][$i];
				$custom_params2[]                = $matches[1][$i] . '=' . $matches[2][$i];
			}
			
			if($feuAction)
			{
				$url = $feusers->CreateFrontendLink('cntnt01', $redirectPage, 'default', '', $feu_params1, '', true, false, true) . (!empty($custom_params2) ? '&' . implode('&',$custom_params2) : ''); 
				#return $feusers->RedirectForFrontEnd('cntnt01', $redirectPage, 'default', $feu_params1, false);
			}
			else
			{
				$manager =& cmsms()->GetHierarchyManager();
				$node    = $manager->sureGetNodeByAlias($redirectPage);
				if(!is_object($node))
				{
					return;
				}
				$content =& $node->GetContent();
				if (!is_object($content) || !$url = $content->GetURL())
				{
					return;
				}
				
				$config = cmsms()->GetConfig();
				$url = trim(str_replace(
					array($config['root_url'] . '/index.php',
						$config['ssl_url'] . '/index.php',
						$config['root_url'],
						$config['ssl_url']),
					'', $url),'/?');
				
				if(!empty($custom_params1) && !empty($custom_params2))
				{
					if($config['url_rewriting'] == 'none')
					{
						if($content->Secure())
						{
							$url = $config['ssl_url'] . '/index.php?' . implode('&',$custom_params2) . '&' . $url;
						}
						else
						{
							$url = $config['root_url'] . '/index.php?' . implode('&',$custom_params2) . '&' . $url;
						}
					}
					else if($config['url_rewriting'] == 'internal')
					{
						if($content->Secure())
						{
							$url = $config['ssl_url'] . '/index.php/' . implode('/',$custom_params1) . '/' . $url;
						}
						else
						{
							$url = $config['root_url'] . '/index.php/' . implode('/',$custom_params1) . '/' . $url;
						}
						if($content->DefaultContent())
						{
							$url .= $content->Alias() . $config['page_extension'];
						}
					}
					else if($config['url_rewriting'] == 'mod_rewrite')
					{
						if($content->Secure())
						{
							$url = $config['ssl_url'] . '/' . implode('/',$custom_params1) . '/' . $url;
						}
						else
						{
							$url = $config['root_url'] . '/' . implode('/',$custom_params1) . '/' . $url;
						}
						if($content->DefaultContent())
						{
							$url .= $content->Alias() . $config['page_extension'];
						}
					}
				}
			}
			return redirect($url);
		}
	}
	
	
	/**
	 * Just a wrapper to get a module instance in the template
	 *
	 * @param string $module_name - the exact name of the module (case sensitive)
	 * @param string $module_version (optional) - the minimum version of the module
	 * @return object
	 */
	public final function &get_module($module_name,$module_version = '') 
	{
		return cms_utils::get_module($module_name, $module_version);
	}
	
	/**
	 * Just for backwards compatibility
	 */
	public function SetPropertyValueNoLoad($name, $value)
	{
		if(method_exists('parent', 'SetPropertyValueNoLoad'))
		{
			return parent::SetPropertyValueNoLoad($name, $value);
		}
		return parent::SetPropertyValue($name, $value);
	}
}

?>

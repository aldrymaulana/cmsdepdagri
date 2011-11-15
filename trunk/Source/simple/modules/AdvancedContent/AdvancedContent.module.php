<?php
#-------------------------------------------------------------------------------
#
# Module : AdvancedContent (c) 2010-2011 by Georg Busch (georg.busch@gmx.net)
#          a content management tool for CMS Made Simple
#          The projects homepage is dev.cmsmadesimple.org/projects/content2/
#          CMS Made Simple is (c) 2004-2011 by Ted Kulp
#          The projects homepage is: cmsmadesimple.org
# Version: 0.9.1
# File   : AdvancedContent.module.php
# Purpose: initial module class.
# License: GPL
#
#-------------------------------------------------------------------------------

class AdvancedContent extends CMSModule
{
	#private $_allowedParams = array(
	#	'cancel'                   => CLEAN_INT,
	#	'input_id'                 => CLEAN_STRING,
	#	'input_fields'             => CLEAN_STRING,
	#	'input_tpl'                => CLEAN_STRING,
	#	'submit'                   => CLEAN_INT,
	#	'tpl_name'                 => CLEAN_STRING,
	#	'template'                 => CLEAN_STRING,
	#	'active'                   => CLEAN_STRING,
	#	'block_type'               => CLEAN_STRING,
	#	'block'                    => CLEAN_STRING,
	#	'returnid'                 => CLEAN_STRING,
	#	'default'                  => CLEAN_STRING,
	#	'smarty'                   => CLEAN_STRING,
	#	'allow_none'               => CLEAN_STRING,
	#	'active_tab'               => CLEAN_STRING,
	#	'errormessage'             => CLEAN_STRING,
	#	'message'                  => CLEAN_STRING,
	#	'old_type'                 => CLEAN_STRING,
	#	'new_type'                 => CLEAN_STRING,
	#	'submit_bulkaction'        => CLEAN_INT,
	#	'ajax'                     => CLEAN_INT,
	#	'tpl_id'                   => CLEAN_STRING,
	#	'submit_prefs'             => CLEAN_INT,
	#	'use_advanced_pageoptions' => CLEAN_INT,
	#	'uninstall_action'         => CLEAN_INT,
	#	'block_display_settings'   => CLEAN_STRING,
	#	'collapse_block_default'   => CLEAN_INT,
	#	'message_display_settings' => CLEAN_STRING,
	#	'group_display_settings'   => CLEAN_STRING,
	#	'collapse_group_default'   => CLEAN_INT,
	#	'use_expire_date'          => CLEAN_INT,
	#	'AdvancedContentStartDate' => CLEAN_INT,
	#	'AdvancedContentStartTime' => CLEAN_INT,
	#	'AdvancedContentEndDate'   => CLEAN_INT,
	#	'AdvancedContentEndTime'   => CLEAN_INT,
	#	'feu_access'               => CLEAN_INT,
	#	'redirect_page'            => CLEAN_INT,
	#	'feu_params'               => CLEAN_STRING,
	#	'feu_params_smarty'        => CLEAN_STRING,
	#	'inherit_feu_params'       => CLEAN_STRING,
	#	'custom_params'            => CLEAN_STRING,
	#	'custom_params_smarty'     => CLEAN_STRING,
	#	'inherit_custom_params'    => CLEAN_STRING,
	#	'feu_action'               => CLEAN_INT,
	#	'hide_menu_item'           => CLEAN_INT,
	#	'item_type'                => CLEAN_STRING,
	#	'item_display'             => CLEAN_INT,
	#	'item_id'                  => CLEAN_STRING,
	#	'content_id'               => CLEAN_INT,
	#	'template_id'              => CLEAN_INT,
	#	'set_default'              => CLEAN_INT
	#);
	
	private $_displaySettings = array();
	
	protected $_pp = '<div style="float:right"><form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick" />
<input type="hidden" name="hosted_button_id" value="FA2D3FPLSTAKJ" />
<input type="image" src="https://www.paypal.com/en_GB/i/btn/btn_donate_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online." />
<img alt="" border="0" src="https://www.paypal.com/de_DE/i/scr/pixel.gif" width="1" height="1" />
</form></div>';

	public $_inheritables = array( 0 => array(
			'feu_access'           => -1,
			'redirect_page'        => -1,
			'custom_params'        => -1,
			'custom_params_smarty' => -1,
			'feu_params'           => -1,
			'feu_params_smarty'    => -1,
			'feu_action'           => -1,
			'start_date'           => -1,
			'end_date'             => -1,
			'hide_menu_item'       => -1,
			'use_expire_date'      => -1));
	
	public final function __construct()
	{
		parent::__construct();
		$this->RegisterContentType('Content2', dirname(__FILE__) .
			DIRECTORY_SEPARATOR . 'contenttype.Content2.php', $this->lang('AdvancedContent'));
		$config = cmsms()->GetConfig();
		$this->smarty->plugins_dir[] = $config["root_path"].'/modules/AdvancedContent/plugins';
	}
	
	public final function GetName()
	{
		return 'AdvancedContent';
	}
	
	public final function GetFriendlyName()
	{
		return $this->Lang('AdvancedContent');
	}
	
	public final function GetVersion()
	{
		return '0.9.1';
	}
	
	public final function GetHelp()
	{
		if(isset($_GET['action']) && $_GET['action'] == 'showmodulehelp')
		{
			$block_help = array();
			foreach($this->_get_custom_block_types() as $blockType)
			{
				$block_help[] = $blockType->GetHelp();
			}
			$block_help = implode('<div class="pageheader"></div>', $block_help);
			
			$plugin_help = array();
			$d = dir(dirname(__FILE__) . DIRECTORY_SEPARATOR . 'plugins');
			while ($entry = $d->read())
			{
				if(preg_match('/^function\.(\w+)\.php$/i',$entry,$matches))
				{
					if(!function_exists('smarty_cms_function_' . $matches[1]))
					{
						require_once(dirname(__FILE__) . DIRECTORY_SEPARATOR . 'plugins' . DIRECTORY_SEPARATOR . $entry);
					}
					if(function_exists('smarty_cms_help_function_' . $matches[1]))
					{
						$plugin_help[] = call_user_func('smarty_cms_help_function_' . $matches[1]);
					}
				}
			}
			$plugin_help = implode('<div class="pageheader"></div>', $plugin_help);
			
			$help_file = dirname(__FILE__) . DIRECTORY_SEPARATOR . 'doc' . DIRECTORY_SEPARATOR . 'help_' . $this->curlang . '.html';
			if(!is_file($help_file))
			{
				$help_file = dirname(__FILE__) . DIRECTORY_SEPARATOR . 'doc' . DIRECTORY_SEPARATOR . 'help_en_US.html';
			}
			
			$helptext = $this->_pp;
			
			if($block_help || $plugin_help)
			{
				$helptext .= $this->StartTabHeaders() . $this->SetTabHeader('help', lang('help'), true);
				if($block_help)
				{
					$helptext .= $this->SetTabHeader('custom_blocktypes', $this->lang('custom_blocktypes'), false);
				}
				if($plugin_help)
				{
					$helptext .= $this->SetTabHeader('plugins', $this->lang('plugins'), false);
				}
				$helptext .= $this->EndTabHeaders() . $this->StartTabContent() . $this->StartTab('help');
			}
			
			$helptext .= file_get_contents($help_file);
			
			if($block_help || $plugin_help)
			{
				$helptext .= $this->EndTab();
				if($block_help)
				{
					$helptext .= $this->StartTab('custom_blocktypes') . $block_help . $this->EndTab();
				}
				if($plugin_help)
				{
					$helptext .= $this->StartTab('plugins') . $plugin_help . $this->EndTab();
				}
				$helptext .= $this->EndTabContent();
			}
			return $helptext;
		}
		return true;
	}
	
	public final function GetAuthor()
	{
		return 'Georg Busch (NaN)';
	}
	
	/**
	 * @todo plugin changelog
	 */
	public final function GetChangeLog()
	{
		if(isset($_GET['action']) && $_GET['action'] == 'showmoduleabout')
		{
			$blockChangeLog = array();
			foreach($this->_get_custom_block_types() as $blockType)
			{
				$blockChangeLog[] = $blockType->GetChangeLog();
			}
			$blockChangeLog = implode('',$blockChangeLog);
			$changeLog      = $this->_pp;
			if($blockChangeLog)
			{
				$changeLog .=
					$this->StartTabHeaders() .
						$this->SetTabHeader('help', lang('help'), true) .
						$this->SetTabHeader('custom_blocktypes', $this->lang('custom_blocktypes'), false) .
					$this->EndTabHeaders() .
					$this->StartTabContent() . 
						$this->StartTab('help');
			}
			$changeLog .= file_get_contents(dirname(__FILE__) . DIRECTORY_SEPARATOR . 'doc' . DIRECTORY_SEPARATOR . 'changelog.html');
			if($blockChangeLog)
			{
				$changeLog .= 
						$this->EndTab() .
						$this->StartTab('custom_blocktypes') . 
							$blockChangeLog . 
						$this->EndTab() .
					$this->EndTabContent();
			}
			return $changeLog;
		}
		return true;
	}
	
	public final function HasContentType()
	{
		return true;
	}
	
	public final function IsPluginModule()
	{
		return true;
	}
	
	public final function HasAdmin()
	{
		return true;
	}
	
	public final function GetAdminSection()
	{
		return 'extensions';
	}
	
	public final function GetAdminDescription()
	{
		return $this->lang('admindescription');
	}
	
	public final function VisibleToAdminUser()
	{
		return $this->CheckPermission('Manage AdvancedContent Preferences') || $this->CheckPermission('Manage AdvancedContent MultiInputs') || $this->CheckPermission('Manage AdvancedContent MultiInput Templates');
	}
	
	public final function MinimumCMSVersion()
	{
		return "1.9";
	}
	
	public final function MaximumCMSVersion()
	{
		return "1.11";
	}
	
	public final function InstallPostMessage()
	{
		return $this->Lang('postinstall', $this->GetVersion());
	}
	
	public final function UninstallPostMessage()
	{
		return $this->Lang('postuninstall', $this->GetVersion());
	}
	
	public final function UninstallPreMessage()
	{
		return $this->Lang('confirmuninstall',$this->lang('warninguninstall'.$this->GetPreference('uninstall_action')));
	}
	
	public final function HandlesEvents()
	{
		return true;
	}
	
	public final function DoAction($action, $id, $params, $returnid = '')
	{
		switch($action) {
			case 'importpages':
			case 'deleteMultiInput':
			case 'deleteMultiInputTpl':
			case 'switchParams':
			case 'default':
			case 'savePrefs':
			case 'defaultadmin':
			case 'addMultiInput':
			case 'editMultiInput':
			case 'addMultiInputTpl':
			case 'editMultiInputTpl':
				parent::DoAction($action, $id, $params, $returnid);
				break;
			default: break;
		}
	}
	
	public final function InitializeFrontend()
	{
		$this->SetParameters();
	}
	
	public final function InitializeAdmin()
	{
		#$this->SetParameters();
	}
	
	public final function SetParameters()
	{
		$this->RegisterModulePlugin();
		#$this->RestrictUnknownParams();
		#foreach($this->GetAllowedParams() as $k => $v) {
		#	$this->SetParameterType($k,$v);
		#}
	}
	
	public final function GetHeaderHTML()
	{
		$config = cmsms()->GetConfig();
		$this->smarty->assign('module_id', 'm1_');
		$this->smarty->assign('debug',$config['debug'] ? 'true' : '\'\'');
		
		$dir = cms_join_path($config['root_path'], 'lib', 'jquery', 'css', 'smoothness');
		if(!is_dir($dir))
		{
			$jq_ui_css = $config['root_url'] . '/modules/' . $this->GetName() . '/css/jquery-ui/base/jquery.ui.all.css';
		}
		else 
		{
			$d = @dir($dir);
			while ($entry = $d->read())
			{
				if(preg_match('/jquery-ui-[\d\.]+\.custom\.css/i', $entry))
				{
					$jq_ui_css = $config['root_url'] . '/lib/jquery/css/smoothness/' . $entry;
					break;
				}
			}
		}
		$this->smarty->assign('jq_ui_css', $jq_ui_css);
		
		return $this->ProcessTemplate('header.tpl');
	}
	
	public final function LazyLoadFrontend()
	{
		return FALSE;
	}
	
	public final function LazyLoadAdmin()
	{
	  return TRUE;
	}
	
/**
 * -----------------------------------------------------------------------------
 * Not part of the CMSms module API
 * -----------------------------------------------------------------------------
 */
	
	#public final function SetAllowedParam($name, $type = 'CLEAN_NONE')
	#{
	#	#$this->SetParameterType($name,$type);
	#	$this->_allowedParams[$name] = $type;
	#}
	#
	#public final function GetAllowedParams() {
	#	return $this->_allowedParams;
	#}
	
	/**
	 * function IsVarEmpty($var, $trim, $unsetEmptyIndexes)
	 * not part of the module api
	 * checks if a var is empty. if var is an array it recursivley checks all elements
	 *
	 * @param mixed $var - the var to check for empty value(s)
	 * @param boolean $trim - true to trim off spaces
	 * @param boolean $unsetEmptyIndexes - true to delete empty elements from array
	 * @return boolean - true if empty, false if not
	 */
	public final function IsVarEmpty(&$var, $trim = true, $unsetEmptyIndexes = false)
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
					if($unsetEmptyIndexes)
						unset($var[$k]);
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
	public final function CleanArray($array)
	{
		if (is_array($array))
		{
			foreach ($array as $k=>$v)
			{
				if ($this->IsVarEmpty($v,true,true))
				{
					unset($array[$k]);
				}
				else
				{
					if(is_array($v))
					{
						$v = $this->CleanArray($v);
						if($this->IsVarEmpty($v,true,true))
							unset($array[$k]);
						else
							$array[$k] = $v;
					}
				}
			}
			return $array;
		}
		return array();
	}
	
	
	/**
	 * function GetPages()
	 * not part of the module api
	 * gets all pages to list in a dropdown
	 *
	 * @return array - a set of pages
	 */
	public final function GetPages()
	{
		$db =& $this->GetDb();
		$query = "SELECT C.active, C.type, C.content_id, C.parent_id, C.hierarchy, C.menu_text, CP.content FROM " . cms_db_prefix() . "content C
			LEFT JOIN " . cms_db_prefix() . "content_props CP ON CP.content_id = C.content_id AND CP.prop_name = ?
			ORDER BY hierarchy";
		$dbresult = $db->Execute($query, array('redirect_page'));
		if(!$pages = $dbresult->GetArray())
			return array();
		return $pages;
	}
	
	
	/**
	 * function CreateRedirectDropdown()
	 * not part of the module api
	 * this creates a dropdown of pages including only pages of type content but
	 * excluding the current page and pages that may only be accessed by frontend users
	 *
	 * @return string - HTML select element with options
	 */
	public final function CreateRedirectDropdown($id = '', $name = 'redirect_page', $selectedPage = '', $currentPage = '', $add_txt = '')
	{
		$pages      = $this->GetPages();
		$dropdown   = '<select name="'.$id.$name.'" '.($add_txt != '' ? $add_txt: '').(!$this->GetPreference('use_advanced_pageoptions',0) ? ' disabled="disabled"' : '') .'>';
		$dropdown  .= '<option value=""' . ($selectedPage == ''?' selected="selected"':'') . '>' . $this->lang('hide_content') . '</option>';
		$dropdown  .= '<option value="-1"' . ($selectedPage == -1?' selected="selected"':'') . '>' . $this->lang('inherit_from_parent') . '</option>';
		if(count($pages))
		{
			$dropdown  .= '<optgroup label="------------------------------------">';
			$contentops =& cmsms()->GetContentOperations();
			foreach($pages as $page)
			{
				$page['content'] = ($page['content'] < 0 ? $this->InheritParentProp($page['content_id'], $page['parent_id'], 'redirect_page') : $page['content']);
				$disabled = '';
				$indent   = '';
				foreach(explode('.',$page['hierarchy']) as $v)
				{
					$indent .= '&nbsp;&nbsp;&nbsp;';
				}
				# don't redirect to pages with no public access, invalid content type, inactive or same content id
				if($page['active'] != 1 || $page['content']<>0 || $page['content_id'] == $currentPage || ($page['type'] != 'content' && $page['type'] != 'content2'))
				{
					$disabled = ' disabled="disabled"';
				}
				$dropdown .= '<option'. $disabled .' value="' . $page['content_id'] . '" ' .
					($selectedPage == $page['content_id'] && $disabled == ''?'selected="selected"':'') . '>' . $indent . 
					$contentops->CreateFriendlyHierarchyPosition($page['hierarchy']) .
					' - ' . $page['menu_text'] . ($disabled != ''?' (' . $this->lang('invalid') . ')':'') . '</option>';
			}
			$dropdown  .= '</optgroup>';
		}
		$dropdown .= '</select>';
		return $dropdown;
	}
	
	
	/**
	 * function IsTrue($value)
	 * not part of the module api
	 * checks if a value is literally "true"
	 * can be usefull when checking smarty params for the value true
	 *
	 * @param mixed $value - the value to check
	 * @return bool
	 */
	public final function IsTrue($value)
	{
		return (strtolower($value) === 'true' || $value === 1 || $value === '1' || $value === true);
	}
	
	
	/**
	 * function IsFalse($value)
	 * not part of the module api
	 * checks if a value is literally "false"
	 * can be usefull when checking smarty params for the value false
	 *
	 * @param mixed $value - the value to check
	 * @return bool
	 */
	public final function IsFalse($value)
	{
		return (strtolower($value) === 'false' || $value === '0' || $value === 0 || $value === false || $value === '');
	}
	
	
	/**
	 * saves the display status of content blocks, content blocks messages and block groups
	 *
	 * @param int $content_id - the id of the content where to set the display status
	 * @param int $template_id - the id of the template where to set the display status
	 * @param string $block_id - the content block to toggle the block itself or the message/group
	 * @param int $display - 0 to hide, 1 to show
	 *
	 */
	public final function SetItemDisplay($item_type, $item_id, $content_id, $template_id, $display)
	{
		$db =& $this->GetDb();
		$query = "SELECT item_display FROM ". cms_db_prefix() . "module_AdvancedContent_".$item_type."display
			WHERE user_id = ? AND item_id = ? AND ";
		
		$q = array();
		$p = array(get_userid(), $item_id);
		
		if($content_id
		&& ($this->GetPreference($item_type.'_display_settings','content') == 'content'
		|| $this->GetPreference($item_type.'_display_settings','content') == 'both1'
		|| $this->GetPreference($item_type.'_display_settings','content') == 'both2'))
		{
			$q[] = "content_id = ?";
			$p[] = $content_id;
		}
		
		if($template_id > 0
		&& ($this->GetPreference($item_type.'_display_settings','content') == 'template'
		|| $this->GetPreference($item_type.'_display_settings','content') == 'both1'
		|| $this->GetPreference($item_type.'_display_settings','content') == 'both2'))
		{
			$q[] = "template_id = ?";
			$p[] = $template_id;
		}
		
		if(!count($q)) {
			return;
		}
		
		if($this->GetPreference($item_type.'_display_settings','content') == 'both1')
		{
			$query .= "(" . implode(" OR ",$q) . ")";
		}
		else if($this->GetPreference($item_type.'_display_settings','content') == 'both2')
		{
			$query .= "(" . implode(" AND ",$q) . ")";
		}
		else
		{
			$query .= $q[0];
		}
		
		$dbresult = $db->Execute($query, $p);
		if($dbresult && $row = $dbresult->FetchRow()) {
			echo $display;
			array_unshift($p,$display);
			$query = "UPDATE ". cms_db_prefix() . "module_AdvancedContent_".$item_type."display
				SET item_display = ? WHERE user_id = ? AND item_id = ? AND ".implode(' AND ',$q);
			$dbresult = $db->Execute($query, $p);
		}
		else
		{
			$query = "INSERT INTO ". cms_db_prefix() ."module_AdvancedContent_".$item_type."display
				(user_id, content_id, template_id, item_id, item_display) VALUES (?,?,?,?,?)";
			$dbresult = $db->Execute($query, array(get_userid(), $content_id, $template_id, $item_id, $display));
		}
		$this->_displaySettings[$item_type][implode('_',array($content_id,$template_id))][$item_id] = $display;
	}
	
	
	/**
	 * gets the display status of content blocks, content blocks messages or block groups
	 *
	 * @param int $item_type - the id of the content/template to get the display status from
	 * @param int $tpl_or_content_id - the id of the content/template to get the display status from
	 * @param string $block_id - the content block to get the display status from
	 * @param int $default_value - the default status if nothing is found
	 *
	 * @return boolean - 0 = hidden, 1 = shown
	 */
	public final function GetItemDisplay($item_type, $item_id, $content_id, $template_id, $default_value = 1)
	{
		$ids = array();
		
		if($content_id
		&& ($this->GetPreference($item_type.'_display_settings','content') == 'content'
		|| $this->GetPreference($item_type.'_display_settings','content') == 'both1'
		|| $this->GetPreference($item_type.'_display_settings','content') == 'both2'))
		{
			$ids[] = $content_id;
		}
		
		if($template_id > 0
		&& ($this->GetPreference($item_type.'_display_settings','content') == 'template'
		|| $this->GetPreference($item_type.'_display_settings','content') == 'both1'
		|| $this->GetPreference($item_type.'_display_settings','content') == 'both2'))
		{
			$ids[] = $template_id;
		}
		
		if(!count($ids))
		{
			return $default_value;
		}
		
		if(!isset($this->_displaySettings[$item_type][implode('_',$ids)]))
		{
			$this->GetAllItemsDisplay($item_type, $content_id, $template_id);
		}
		if(!isset($this->_displaySettings[$item_type][implode('_',$ids)][$item_id]))
		{
			$this->_displaySettings[$item_type][implode('_',$ids)][$item_id] = $default_value;
		}
		return $this->_displaySettings[$item_type][implode('_',$ids)][$item_id];
	}
	
	
	/**
	 * gets the display status of all content blocks, content blocks messages or block groups of a given template or content id
	 * @access private
	 * @ignore
	 */
	private function GetAllItemsDisplay($item_type, $content_id, $template_id)
	{
		$db =& $this->GetDb();
		$query = "SELECT * FROM ". cms_db_prefix() . "module_AdvancedContent_".$item_type."display
			WHERE user_id = ? AND ";
		
		$q = array();
		$p = array(get_userid());
		
		if($content_id
		&& ($this->GetPreference($item_type.'_display_settings','content') == 'content'
		|| $this->GetPreference($item_type.'_display_settings','content') == 'both1'
		|| $this->GetPreference($item_type.'_display_settings','content') == 'both2'))
		{
			$q[] = "content_id = ?";
			$p[] = $content_id;
		}
		
		if($template_id > 0
		&& ($this->GetPreference($item_type.'_display_settings','content') == 'template'
		|| $this->GetPreference($item_type.'_display_settings','content') == 'both1'
		|| $this->GetPreference($item_type.'_display_settings','content') == 'both2'))
		{
			$q[] = "template_id = ?";
			$p[] = $template_id;
		}
		
		if(!count($q))
		{
			return;
		}
		
		if($this->GetPreference($item_type.'_display_settings','content') == 'both1')
		{
			$query .= "(" . implode(" OR ",$q) . ")";
		}
		else if($this->GetPreference($item_type.'_display_settings','content') == 'both2')
		{
			$query .= "(" . implode(" AND ",$q) . ")";
		}
		else
		{
			$query .= $q[0];
		}
		$dbresult = $db->Execute($query, $p);
		while($dbresult && $row = $dbresult->FetchRow())
		{
			if($this->GetPreference($item_type.'_display_settings','content') == 'both1'
			|| $this->GetPreference($item_type.'_display_settings','content') == 'both2')
			{
				$this->_displaySettings[$item_type][$row['content_id'] . '_' . $row['template_id']][$row['item_id']] = $row['item_display'];
			}
			else
			{
				$this->_displaySettings[$item_type][$row[$this->GetPreference($item_type.'_display_settings','content').'_id']][$row['item_id']] = $row['item_display'];
			}
		}
	}
	
	public final function GetMultiInputFull($inputs = array())
	{
		if(!is_array($inputs))
		{
			$inputs = $this->CleanArray(explode(",",$inputs));
		}
		$db    =& $this->GetDb();
		$query = "SELECT MULTI_INPUT.*, TPL_ASSOCS.tpl_name FROM ". cms_db_prefix() . "module_AdvancedContent_multi_inputs MULTI_INPUT
			LEFT OUTER JOIN ".cms_db_prefix()."module_AdvancedContent_multi_input_tpl_assocs TPL_ASSOCS
			ON MULTI_INPUT.input_id = TPL_ASSOCS.input_id";
		
		$q     = array();
		$p     = array();
		$return_array = array();
		foreach($inputs as $input_id)
		{
			$q[$input_id] = "MULTI_INPUT.input_id = ?";
			$p[$input_id] = $input_id;
		}
		if(count($p))
		{
			$query .= " WHERE " . implode(" OR ", $q);
		}
		$dbresult = $db->Execute($query, $p);
		while($dbresult && $row = $dbresult->FetchRow())
		{
			$return_array[$row['input_id']] = $row;
		}
		return $return_array;
	}
	
	public final function GetMultiInput($input_id)
	{
		$db       =& $this->GetDb();
		$query    = "SELECT input_fields FROM ". cms_db_prefix() . "module_AdvancedContent_multi_inputs WHERE input_id = ? LIMIT 1";
		$dbresult = $db->Execute($query, array($input_id));
		if($dbresult && $row = $dbresult->FetchRow())
		{
			return $row['input_fields'];
		}
	}
	
	public final function GetMultiInputList()
	{
		$db       =& $this->GetDb();
		$query    = "SELECT A.input_id, B.tpl_name FROM ". cms_db_prefix() . "module_AdvancedContent_multi_inputs A
			LEFT JOIN ". cms_db_prefix() . "module_AdvancedContent_multi_input_tpl_assocs B
			ON A.input_id = B.input_id";
		$dbresult = $db->Execute($query);
		$return_array = array();
		while($dbresult && $row = $dbresult->FetchRow())
		{
			$return_array[] = $row;
		}
		return $return_array;
	}
	
	public final function AddMultiInput($input_id, $input_fields)
	{
		$db    =& $this->GetDb();
		$query = "SELECT input_id FROM ". cms_db_prefix() . "module_AdvancedContent_multi_inputs
			WHERE input_id = ? LIMIT 1";
		
		$dbresult = $db->Execute($query, array($input_id));
		if($dbresult && $row = $dbresult->FetchRow())
		{
			return false;
		}
		
		$query = "INSERT INTO ". cms_db_prefix() ."module_AdvancedContent_multi_inputs
			(input_id, input_fields) VALUES (?,?)";
		$dbresult = $db->Execute($query, array($input_id, $input_fields));
		return $dbresult;
	}
	
	public final function UpdateMultiInput($input_id, $input_fields)
	{
		$db    =& $this->GetDb();
		$query = "UPDATE ". cms_db_prefix() . "module_AdvancedContent_multi_inputs
			SET input_fields = ? WHERE input_id = ? ";
		$dbresult = $db->Execute($query, array($input_fields, $input_id));
		return $dbresult;
	}
	
	public final function UpdateTplAssoc($tpl_type, $input_id, $tpl_name)
	{
		$db    =& $this->GetDb();
		$query = "UPDATE ". cms_db_prefix() . "module_AdvancedContent_".$tpl_type."_tpl_assocs
			SET tpl_name = ? WHERE input_id = ? ";
		$dbresult = $db->Execute($query, array($tpl_name, $input_id));
		return $dbresult;
	}
	
	public final function AddTplAssoc($tpl_type, $input_id, $tpl_name)
	{
		$db    =& $this->GetDb();
		$query = "INSERT INTO ". cms_db_prefix() ."module_AdvancedContent_".$tpl_type."_tpl_assocs
			(input_id, tpl_name) VALUES (?,?)";
		$dbresult = $db->Execute($query, array($input_id, $tpl_name));
		return $dbresult;
	}
	
	public final function DeleteTplAssoc($tpl_type,$input_ids = array())
	{
		$db =& $this->GetDb();
		if(!is_array($input_ids))
		{
			$input_ids = $this->CleanArray(explode(",",$input_ids));
		}
		if(!count($input_ids))
		{
			return false;
		}
		$query = "DELETE FROM ". cms_db_prefix() . "module_AdvancedContent_".$tpl_type."_tpl_assocs WHERE ";
		$q = array();
		foreach($input_ids as $_id)
		{
			$q[] = "input_id = ?";
		}
		$query   .=  implode(" OR ", $q);
		$dbresult = $db->Execute($query, $input_ids);
		return $dbresult;
	}
	
	public final function DeleteMultiInput($input_ids = array())
	{
		$db =& $this->GetDb();
		if(!is_array($input_ids))
		{
			$input_ids = $this->CleanArray(explode(",",$input_ids));
		}
		if(!count($input_ids))
		{
			return false;
		}
		$query = "DELETE FROM ". cms_db_prefix() . "module_AdvancedContent_multi_inputs WHERE ";
		$q = array();
		foreach($input_ids as $_id)
		{
			$q[] = "input_id = ?";
		}
		
		$query   .=  implode(" OR ", $q);
		$dbresult = $db->Execute($query, $input_ids);
		return $dbresult;
	}
	
	public final function GetTemplates($prefix)
	{
		$db     =& $this->GetDb();
		$query  = "SELECT TPL.template_name, TPL_ASSOCS.* FROM ". cms_db_prefix() . "module_templates TPL
			LEFT OUTER JOIN ".cms_db_prefix()."module_AdvancedContent_".$prefix."_tpl_assocs TPL_ASSOCS
			ON TPL.template_name = TPL_ASSOCS.tpl_name
			WHERE TPL.module_name = ? AND TPL.template_name LIKE ? ";
		$return_array = array();
		$dbresult     = $db->Execute($query, array($this->GetName(),$prefix.'_%'));
		while($dbresult && $row = $dbresult->FetchRow())
		{
			if(!isset($return_array[$row['template_name']]))
			{
				$return_array[$row['template_name']] = array();
			}
			$return_array[$row['template_name']]['tpl_name'] = substr($row['template_name'],strlen($prefix.'_'));
			$return_array[$row['template_name']]['tpl_id']   = $row['template_name'];
			if(!isset($return_array[$row['template_name']]['tpl_assocs']))
			{
				$return_array[$row['template_name']]['tpl_assocs'] = array();
				$return_array[$row['template_name']]['is_used'] = false;
			}
			if($row['input_id'])
			{
				$return_array[$row['template_name']]['tpl_assocs'][] = $row['input_id'];
				$return_array[$row['template_name']]['is_used'] = true;
			}
		}
		return $return_array;
	}
	
	public final function GetTplList($prefix)
	{
		$prefix = trim($prefix,'_') . '_';
		$db     =& $this->GetDb();
		$query  = "SELECT template_name FROM ". cms_db_prefix() . "module_templates
			WHERE module_name = ? AND template_name LIKE ? ";
		$return_array = array();
		$dbresult = $db->Execute($query, array($this->GetName(),$prefix.'%'));
		while($dbresult && $row = $dbresult->FetchRow())
		{
			$tpl_name = substr($row['template_name'],strlen($prefix));
			$return_array[$tpl_name] = $row['template_name'];
		}
		return $return_array;
	}
	
	public final function IsTplUsed($tpl_name, $assoc_type)
	{
		$db     =& $this->GetDb();
		$query  = "SELECT tpl_name FROM ". cms_db_prefix() . "module_AdvancedContent_".$assoc_type."_tpl_assocs
			WHERE template_name = ? ";
		$dbresult = $db->Execute($query, array($tpl_name));
		if(!$dbresult || !$row = $dbresult->FetchRow())
		{
			return false;
		}
		return true;
	}
	
	public final function &Inheritables($content_id = '')
	{
		$content_id = intval($content_id);
		if(!isset($this->_inheritables[$content_id]))
		{
			$this->_inheritables[$content_id] = $this->_inheritables[0];
		}
		return $this->_inheritables[$content_id];
	}
	
	/**
	 * Inherits a property of a parent page (recursivley)
	 *
	 * @param int $currentId - The id of the current page
	 * @param int $parentId - The id of the parent page
	 * @param string $propName - The name of the property to inherit
	 * @param array $currentProp (optional) - If prop is an array this will be the items of the current page; So return array will contain all items of the current page and parent pages; otherwise only the parents items will be returned (feu_access only)
	 *
	 * @return array|string - The prop of the last found parent that has no inheritance or an array of items of all parents that have inheritance
	 */
	public final function InheritParentProp($currentId, $parentId, $propName, $currentProp = array())
	{
		$currentId = intval($currentId);
		$this->Inheritables($currentId);
		if(!isset($this->_inheritables[$currentId][$propName]))
		{
			return; // should never happen
		}
		if(isset($this->_inheritables[$parentId]) && $this->_inheritables[$parentId][$propName] > -1)
		{
			$this->_inheritables[$currentId][$propName] = $this->_inheritables[$parentId][$propName];
		}
		if($this->_inheritables[$currentId][$propName] == -1)
		{
			if($propName == 'feu_access')
			{
				$this->_inheritables[$currentId][$propName] = array();
				foreach($currentProp as $k=>$v)
				{
					if($v != -1)
					{
						$this->_inheritables[$currentId][$propName][] = $v;
					}
				}
			}
			else
			{
				$this->_inheritables[$currentId][$propName] = '';
			}
			$inherit = true;
			while( $parentId > 0 && $inherit && $content = $this->LoadContentProps($parentId, $propName, 'parent_id','content2',1))
			{
				$propValue = $content[$parentId][$propName];
				$parentId  = $content[$parentId]['parent_id'];
				if($propName == 'feu_access')
				{
					$delim = strpos($propValue,',') === FALSE ? ';' : ',';
					$propValue = $this->CleanArray(explode($delim,$propValue));
					foreach($propValue as $_p)
					{
						if(!in_array($_p, $this->_inheritables[$currentId][$propName]) && $_p != -1 && $_p != '')
						{
							$this->_inheritables[$currentId][$propName][] = $_p;
						}
					}
					if(!in_array(-1, $propValue))
					{
						$inherit = false;
						#return $this->_inheritables[$currentId][$propName];
					}
				}
				else if($propValue != -1)
				{
					$this->_inheritables[$currentId][$propName] = $propValue;
					$inherit = false;
				}
			}
			if(isset($this->_inheritables[$parentId]) && $this->_inheritables[$parentId] == -1)
			{
				$this->_inheritables[$parentId][$propName] = $this->_inheritables[$currentId][$propName];
			}
		}
		return $this->_inheritables[$currentId][$propName];
	}
	
	/**
	 * Loads properties and/or attribs of one or more content pages from DB 
	 * Caution! If no ids, properties or atributes are specified it will load ALL content of ALL pages.
	 *
	 * @param string|array $contentIds - The ids of the content to get the property from
	 * @param string|array $props - The name of the property to get the value from
	 * @param string|array $attribs - The name of the property to get the value from
	 * @param string|array $contentTypes (optional) - The type of the content
	 *
	 * @return mixed - False if not exists or array('parent_id','prop_value')
	 *
	 */
	public final function LoadContentProps($contentIds = array(), $props = array(), $attribs = array(), $contentTypes = array(), $limit = '')
	{
		$db  =& cmsms()->GetDb();
		$ret =  false;
		if(!is_array($contentIds))
		{
			$contentIds = $this->CleanArray(explode(',',$contentIds));
		}
		if(!is_array($props))
		{
			$props = $this->CleanArray(explode(',',$props));
		}
		if(!is_array($attribs))
		{
			$attribs = $this->CleanArray(explode(',',$attribs));
		}
		if(!is_array($contentTypes))
		{
			$contentTypes = $this->CleanArray(explode(',',$contentTypes));
		}
		$where_ids          = array();
		$where_props        = array();
		$where_contentTypes = array();
		$params             = array();
		$select             = array();
		foreach($contentIds as $cId)
		{
			$where_ids[] = " C.content_id = ? ";
			$params[]    = $cId;
		}
		if(count($props)) {
			$select[] = " CP.content ";
			$select[] = " CP.prop_name ";
			foreach($props as $p)
			{
				$where_props[] = " CP.prop_name = ? ";
				$params[]      = $p;
			}
		}
		foreach($attribs as $a)
		{
			$select[] = " C.$a ";
		}
		foreach($contentTypes as $t)
		{
			$where_contentTypes[] = " C.type = ? ";
			$params[]             = $t;
		}
		$query = "SELECT ";
		if(count($select))
		{
			$query .= 'C.content_id,'.implode(',',$select);
		}
		else
		{
			$query .= " * ";
		}
		
		$query .= " FROM " . cms_db_prefix() . "content_props CP
			LEFT JOIN " . cms_db_prefix() . "content C ON C.content_id = CP.content_id ";
		
		$where = array();
		if(count($where_ids))
		{
			$where[] = ' ( ' . implode(' OR ',$where_ids) . ' ) ';
		}
		if(count($where_props))
		{
			$where[] = ' ( ' . implode(' OR ',$where_props) . ' ) ';
		}
		if(count($where_contentTypes))
		{
			$where[] = ' ( ' . implode(' OR ',$where_contentTypes) . ' ) ';
		}
		if(count($where))
		{
			$query .= " WHERE " . implode(' AND ', $where);
		}
		if($limit)
		{
			$query .= " LIMIT $limit";
		}
		$dbresult = $db->Execute($query, $params);
		while($dbresult && $row = $dbresult->FetchRow())
		{
			$cId       = $row['content_id'];
			$ret[$cId] = array();
			unset($row['content_id']);
			if(count($props))
			{
				$ret[$cId][$row['prop_name']] = $row['content'];
				unset($row['prop_name']);
				unset($row['content']);
			}
			if(count($attribs))
			{
				$ret[$cId] = array_merge($ret[$cId], $row);
			}
		}
		return $ret;
	}
	
	private function &_get_custom_block_types()
	{
		$config     = cmsms()->GetConfig();
		$dir        = cms_join_path($config['root_path'], 'module_custom', 'AdvancedContent', 'lib');
		$blockTypes = array();
		
		if(is_dir($dir))
		{
			$contentops =& cmsms()->GetContentOperations();
			$contentobj = $contentops->CreateNewContent('Content2');
			$classnames = array();
			
			$d = @dir($dir);
			while($entry = $d->read())
			{
				if(preg_match('/class\.(acBlockType_\w+)\.php/', $entry, $matches))
				{
					$blockTypes[] = new $matches[1]($contentobj, $params);
				}
			}
		}
		return $blockTypes;
	}
	
	private function &_get_core_block_types()
	{
		$config     = cmsms()->GetConfig();
		$dir        = dirname(__FILE__) . DIRECTORY_SEPARATOR . 'lib';
		$blockTypes = array();
		
		$contentops =& cmsms()->GetContentOperations();
		$contentobj = $contentops->CreateNewContent('Content2');
		$classnames = array();
		
		$d = @dir($dir);
		while($entry = $d->read())
		{
			if(preg_match('/class\.(acBlockType_\w+)\.php/', $entry, $matches))
			{
				$blockTypes[] = new $matches[1]($contentobj, $params);
			}
		}
		return $blockTypes;
	}
}

function AdvancedContent_Autoloader($classname)
{
	$config = cmsms()->GetConfig();
	$fn     = cms_join_path($config['root_path'], 'module_custom', 'AdvancedContent', 'lib', 'class.'.$classname.'.php');
	if( file_exists($fn) )
	{
		require_once($fn);
		return TRUE;
	}
	return FALSE;
}
spl_autoload_register('AdvancedContent_Autoloader');

?>

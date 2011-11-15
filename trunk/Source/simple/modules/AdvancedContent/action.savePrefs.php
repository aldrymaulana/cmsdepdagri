<?php
#-------------------------------------------------------------------------------
#
# Module : AdvancedContent (c) 2010-2011 by Georg Busch (georg.busch@gmx.net)
#          a content management tool for CMS Made Simple
#          The projects homepage is dev.cmsmadesimple.org/projects/content2/
#          CMS Made Simple is (c) 2004-2011 by Ted Kulp
#          The projects homepage is: cmsmadesimple.org
# Version: 0.9.1
# File   : action.savePrefs.php
# Purpose: saves the preferences in the database
# License: GPL
#
#-------------------------------------------------------------------------------

if(!is_object(cmsms())) exit;

if(isset($params['submit']) || isset($params['submit_prefs']))
{
	if(isset($params['use_advanced_pageoptions']))
	{
		$this->SetPreference('use_advanced_pageoptions', $params['use_advanced_pageoptions']);
	}
	if(isset($params['uninstall_action']))
	{
		$this->SetPreference('uninstall_action', $params['uninstall_action']);
	}
	if(isset($params['block_display_settings']))
	{
		$this->SetPreference('block_display_settings', $params['block_display_settings']);
	}
	if(isset($params['collapse_block_default']))
	{
		$this->SetPreference('collapse_block_default', $params['collapse_block_default']);
	}
	if(isset($params['message_display_settings']))
	{
		$this->SetPreference('message_display_settings', $params['message_display_settings']);
	}
	if(isset($params['group_display_settings']))
	{
		$this->SetPreference('group_display_settings', $params['group_display_settings']);
	}
	if(isset($params['collapse_group_default']))
	{
		$this->SetPreference('collapse_group_default', $params['collapse_group_default']);
	}
	if(isset($params['use_expire_date']))
	{
		$this->SetPreference('use_expire_date', $params['use_expire_date']);
	}
	if(isset($params['AdvancedContentStartDate']))
	{
		$this->SetPreference('start_date', intval($params['AdvancedContentStartDate']) . ' ' . $params['AdvancedContentStartTime']);
	}
	if(isset($params['AdvancedContentEndDate']))
	{
		$this->SetPreference('end_date', intval($params['AdvancedContentEndDate']) . ' ' . $params['AdvancedContentEndTime']);
	}
	if(isset($params['feu_access']))
	{
		$this->SetPreference('feu_access', implode(',',$this->CleanArray($params['feu_access'])));
	}
	if(isset($params['redirect_page']))
	{
		$this->SetPreference('redirect_page', $params['redirect_page']);
	}
	
	if(isset($params['feu_params']))
	{
		$this->SetPreference('feu_params', $params['feu_params']);
	}
	if(isset($params['feu_params_smarty']))
	{
		$this->SetPreference('feu_params_smarty', $params['feu_params_smarty']);
	}
	if(isset($params['inherit_feu_params']))
	{
		$this->SetPreference('inherit_feu_params', $params['inherit_feu_params']);
	}
	
	if(isset($params['custom_params']))
	{
		$this->SetPreference('custom_params', $params['custom_params']);
	}
	if(isset($params['custom_params_smarty']))
	{
		$this->SetPreference('custom_params_smarty', $params['custom_params_smarty']);
	}
	if(isset($params['inherit_custom_params']))
	{
		$this->SetPreference('inherit_custom_params', $params['inherit_custom_params']);
	}
	
	if(isset($params['feu_action']))
	{
		$this->SetPreference('feu_action', $params['feu_action']);
	}
	if(isset($params['hide_menu_item']))
	{
		$this->SetPreference('hide_menu_item', $params['hide_menu_item']);
	}
}
if(isset($params['item_type']) && isset($params['item_display']))
{
	$this->SetItemDisplay($params['item_type'], $params['item_id'], $params['content_id'], $params['template_id'], $params['item_display']);
}
if(isset($params['set_default']))
{
	$this->SetPreference('default_'.$params['set_default'].'_tpl', $params['tpl_id']);
}
if(isset($params['ajax']))
{
	echo '<div class="pagemcontainer"><p class="pagemessage">'.$this->lang('prefsupdated').'</p></div>';
	exit;
}
else
{
	$this->Redirect($id, 'defaultadmin', $returnid, array('message' => 'prefsupdated', 'submit' => true));
}
?>

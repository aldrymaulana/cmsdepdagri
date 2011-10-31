<?php
/*======================================================================================
Module: MultiDomains
======================================================================================*/

// Check authorisation
if ( !isset($gCms) ) exit;
check_login();
if ( !$this->CheckPermission('Modify Site Preferences') ) exit;

// Set Tab name
$tabto = 'options';

// Assign Smarty vars
$smarty->assign('formstart',$this->CreateFormStart($id,'admin_options',$returnid,'post','multipart/form-data',true,array()));
$smarty->assign('formend',$this->CreateFormEnd());
$smarty->assign('submit',$this->CreateInputSubmit($id,'submit',$this->Lang('submit')));
$smarty->assign('tabto',$this->CreateInputHidden($id,'tabto',$tabto));

$smarty->assign('prompt_spamprotect',$this->Lang('spamprotect'));
$smarty->assign('input_spamprotect', $this->CreateInputCheckbox($id,'spamprotect','1',$this->GetPreference('spamprotect'),'0'));
$smarty->assign('prompt_moderate',$this->Lang('moderate'));
$smarty->assign('input_moderate', $this->CreateInputCheckbox($id,'moderate','1',$this->GetPreference('moderate'),'0'));
$smarty->assign('prompt_notify',$this->Lang('notify'));
$smarty->assign('input_notify', $this->CreateInputText($id,'notify',$this->GetPreference('notify'),30,100));
$smarty->assign('prompt_disable_html',$this->Lang('disable_html'));
$smarty->assign('input_disable_html', $this->CreateInputCheckbox($id,'disable_html','1',$this->GetPreference('disable_html'),'0'));
$smarty->assign('prompt_akismet_check',$this->Lang('akismet_check'));
$smarty->assign('input_akismet_check', $this->CreateInputCheckbox($id,'akismet_check','1',$this->GetPreference('akismet_check'),'0'));
$smarty->assign('prompt_enable_trackbacks',$this->Lang('enable_trackbacks'));
$smarty->assign('input_enable_trackbacks', $this->CreateInputCheckbox($id,'enable_trackbacks','1',$this->GetPreference('enable_trackbacks'),'0'));
$smarty->assign('prompt_enable_trackback_backlink_check',$this->Lang('enable_trackback_backlink_check'));
$smarty->assign('input_enable_trackback_backlink_check', $this->CreateInputCheckbox($id,'enable_trackback_backlink_check','1',$this->GetPreference('enable_trackback_backlink_check'),'0'));
$smarty->assign('prompt_enable_cookie_support',$this->Lang('enable_cookie_support'));
$smarty->assign('input_enable_cookie_support', $this->CreateInputCheckbox($id,'enable_cookie_support','1',$this->GetPreference('enable_cookie_support'),'0'));

// Display Template
echo $this->ProcessTemplate('admin_options.tpl');

// EOF
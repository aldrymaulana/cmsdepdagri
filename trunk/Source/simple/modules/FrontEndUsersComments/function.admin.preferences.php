<?php
/***************************************************************************
 *                              function.admin.preferences.php
 *                            -------------------
 *   begin                : 14 nov. 08
 *   copyright            : (C) 2006 Anyware Hosting
 * 	 author				  : Alexandre Courtois
 *   email                : alexandre@anyware-hosting.co.uk
 *
 ***************************************************************************/
 
if(!isset($gCms)) exit;


$pref_nbPerPage_admin = $this->GetPreference('nbCommentsPerPage_admin',25);
$pref_disable_html = $this->GetPreference('disable_html',1);
$pref_moderate = $this->GetPreference('moderate',0);
$pref_notify = $this->GetPreference('notify',0);
$pref_notify_address = $this->GetPreference('notify_address','');

$startForm = $this->CreateFormStart($id, 'admin_save_preferences', $returnid);

$inputNotify = $this->CreateInputCheckbox($id, 'inputNotify', 1, $pref_notify);
$inputNotifyAddress = $this->CreateInputText($id,'inputNotifyAddress',$pref_notify_address,30,100);
$inputDisable_html = $this->CreateInputCheckbox($id, 'inputDisable_html', 1, $pref_disable_html);
$inputNbPerPage_admin = $this->CreateInputText($id,'inputNbPerPage_admin',$pref_nbPerPage_admin,4,3);
$inputModerate = $this->CreateInputCheckbox($id, 'inputModerate', 1, $pref_moderate);

$submit = $this->CreateInputSubmit($id, 'submit', $this->Lang('submit'));
$endform = $this->CreateFormEnd();

$this->smarty->assign('notify', $this->Lang('notify'));
$this->smarty->assign('notify_address', $this->Lang('notify_address'));
$this->smarty->assign('disable_html', $this->Lang('disable_html'));
$this->smarty->assign('nbPerPage_admin', $this->Lang('nbPerPage_admin'));
$this->smarty->assign('moderate', $this->Lang('moderate'));

//Form data
$this->smarty->assign('error', $params['error']);
$this->smarty->assign('startForm', $startForm);
$this->smarty->assign('inputNotify', $inputNotify);
$this->smarty->assign('inputNotifyAddress', $inputNotifyAddress);
$this->smarty->assign('inputDisable_html', $inputDisable_html);
$this->smarty->assign('inputNbPerPage_admin', $inputNbPerPage_admin);
$this->smarty->assign('inputModerate', $inputModerate);
$this->smarty->assign('submit', $submit);
$this->smarty->assign('endForm', $endform);


echo $this->ProcessTemplate('admin.preferences.tpl');

?>

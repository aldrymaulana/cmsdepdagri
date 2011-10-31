<?php
/*======================================================================================
Module: TicketDesk
======================================================================================*/

// Check authorisation
if ( !isset($gCms) ) exit;
check_login();

// Set needed objects
$db =& $gCms->GetDb();
$smarty =& $gCms->GetSmarty();

// Insert content operations class
$contentops =& $gCms->GetContentOperations();

// Get Tab Redirect action
$tabto = isset($params['tabto']) ? preg_replace('/[^0-9a-zA-Z_]/','',$params['tabto']) : 'comments';

// Build Tabs
echo $this->StartTabHeaders();
	if ($this->CheckPermission('Manage AComments')) echo $this->SetTabHeader('comments',$this->Lang('title_comments'),$tabto=='comments'?true:false);
	if ($this->CheckPermission('Modify Templates')) echo $this->SetTabHeader('templates',$this->Lang('title_templates'),$tabto=='templates'?true:false);
	if ($this->CheckPermission('Modify Site Preferences')) echo $this->SetTabHeader('options',$this->Lang('title_options'),$tabto=='options'?true:false);
echo $this->EndTabHeaders();

// Display the content of the tabs
echo $this->StartTabContent();
if ( $this->CheckPermission('Manage MultiDomains') ) {
	echo $this->StartTab('comments');
	include(dirname(__FILE__).'/function.admin_comments.php');
	echo $this->EndTab();
}
if ($this->CheckPermission('Modify Templates')) {
	echo $this->StartTab('templates', $params);
	include(dirname(__FILE__).'/function.admin_templates.php');
	echo $this->EndTab();
}
if ($this->CheckPermission('Modify Site Preferences')) {
	echo $this->StartTab('options', $params);
	include(dirname(__FILE__).'/function.admin_options.php');
	echo $this->EndTab();
}
echo $this->EndTabContent();

// EOF
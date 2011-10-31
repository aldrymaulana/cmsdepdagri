<?php
/*======================================================================================
Module: AComments
======================================================================================*/

// Check authorisation
if ( !isset($gCms) ) exit;
check_login();
if ( !$this->CheckPermission('Manage AComments') ) exit;

// Get POST data
$tabto = preg_replace('/[^0-9a-zA-Z_]/','',$params['tabto']);
$comment = (int)$params['comment'];
$active = $params['active'] ? 1 : 0;

// De-/Activate comment
if ($comment) {
	// Get db instance
	$db =& $this->GetDb();
	// De-/Activate the comment
	$sql = 'UPDATE '.cms_db_prefix().'module_acomments SET active=? WHERE comment_id=?';
	$res = $db->Execute($sql,array($active, $comment));
}

// Redirect
$this->Redirect($id, 'defaultadmin', $returnid, array( 'tabto'=>$tabto ));

// EOF
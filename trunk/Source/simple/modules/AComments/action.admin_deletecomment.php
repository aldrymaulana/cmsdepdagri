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

// Delete the comment
if ($comment) {
	// Get db instance
	$db =& $this->GetDb();
	// Delete the comment
	$sql = 'DELETE FROM '.cms_db_prefix().'module_acomments WHERE comment_id=?';
	$res = $db->Execute($sql,array($comment));
}

// Redirect
$this->Redirect($id, 'defaultadmin', $returnid, array( 'tabto'=>$tabto ));

// EOF
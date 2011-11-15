<?php
if (!isset($gCms)) exit;

$db =& $gCms->GetDb();

// remove the database table
$dict = NewDataDictionary( $db );

$sqlarray = $dict->DropTableSQL( cms_db_prefix()."module_feusers_comments" );
$dict->ExecuteSQLArray($sqlarray);

$db->DropSequence(cms_db_prefix()."module_feusers_comments_seq");

// remove the permissions
$this->RemovePermission('Manage FrontEndUsersComments');

// templates
$this->DeleteTemplate();

// preferences
$this->RemovePreference();

// put mention into the admin log
$this->Audit( 0, $this->Lang('friendlyname'), $this->Lang('uninstalled', $this->GetName()));
?>

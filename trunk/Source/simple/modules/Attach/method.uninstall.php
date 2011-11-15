<?php
if(!isset($gCms)) exit;

// Typical Database Initialization
$db = &$this->cms->db;
$dict = NewDataDictionary($db);

$sqlarray = $dict->DropTableSQL(cms_db_prefix()."module_attach_attachments");
$dict->ExecuteSQLArray($sqlarray);
$db->DropSequence(cms_db_prefix()."module_attach_attachments_seq");

$sqlarray = $dict->DropTableSQL(cms_db_prefix()."module_attach_restypes");
$dict->ExecuteSQLArray($sqlarray);
$db->DropSequence(cms_db_prefix()."module_attach_restypes_seq");
	
$this->DeleteTemplate("",$this->GetName());

// permissions
	$this->RemovePermission("attach_use");
	$this->RemovePermission("attach_admin");

// put mention into the admin log
	$this->Audit( 0, $this->Lang("friendlyname"), $this->Lang("uninstalled"));

?>

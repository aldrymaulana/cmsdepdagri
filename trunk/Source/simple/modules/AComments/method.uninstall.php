<?php
/*======================================================================================
Module: AComments
======================================================================================*/

// Check authorisation
if ( !isset($gCms) ) exit;
check_login();

// Get DB instance and make DB settings
$db =& $this->GetDb();
$dict = NewDataDictionary($db);

// Delete db tables
$sqlarray = $dict->DropTableSQL(cms_db_prefix().'module_acomments');
$dict->ExecuteSQLArray($sqlarray);
$db->DropSequence(cms_db_prefix().'module_acomments_seq');

// Delete module preferences
$this->RemovePreference();

// Delete module templates
$this->DeleteTemplate();

// Delete module permissions
$this->RemovePermission('Manage AComments');

// EOF
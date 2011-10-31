<?php
/*============================================================================ 
Module: AComments
============================================================================*/

// Check authorisation
if ( !isset($gCms) ) exit;
check_login();

// Get var
$current_version = $oldversion;

// Get db handle
$db =& $this->GetDb();
$dict = NewDataDictionary($db);
$taboptarray = array('mysql' => 'TYPE=MyISAM');

switch ($current_version) {
	case '0.9':
		// Create extra domain table
		#$flds = "id I KEY AUTO,domain_id I,domain C(100),created_date ".CMS_ADODB_DT.",modified_date ".CMS_ADODB_DT;
		#$sqlarray = $dict->CreateTableSQL(cms_db_prefix()."module_multidomains_extradomains", $flds, $taboptarray);
		#$dict->ExecuteSQLArray($sqlarray);
		// Set preference for development domain
		#$this->SetPreference('devdomain',0);
		#$this->SetPreference('devip','');
		// Add column for development domain
		#$sqlarray = $dict->AddColumnSQL(cms_db_prefix()."module_multidomains", "devdomain C(100)");
		#$dict->ExecuteSQLArray($sqlarray);
		// Set new current version
		$current_version = '1.0';
}

// Generate an audit trail in the admin log
$this->Audit( 0, $this->Lang('friendlyname'), $this->Lang('upgraded',$this->GetVersion()));

// EOF
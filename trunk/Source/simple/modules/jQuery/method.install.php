<?php
if (!isset($gCms)) exit;

if (! $this->CheckAccess())
{
	return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}
				
foreach ($this->GetPlugins() as $plugin)
{
	$this->SetPreference($plugin, false);
}

$this->AddEventHandler('Core', 'ContentPostRender', false);


// Typical Database Initialization
$db =& $gCms->GetDb();
// mysql-specific, but ignored by other database
$taboptarray = array('mysql' => 'TYPE=MyISAM');
$dict = NewDataDictionary($db);

// TABLES CREATION

// table schema description
$flds = "
	id	I AUTO KEY,
	name	C(255),
	position I,
	code XL,
	load_default I,
	in_header I,
	required_plugins C(255)
	";

// create it. This should do error checking, but I'm a lazy sod.
$sqlarray = $dict->CreateTableSQL(cms_db_prefix()."module_jquery_scripts",
		$flds, $taboptarray);
$dict->ExecuteSQLArray($sqlarray);
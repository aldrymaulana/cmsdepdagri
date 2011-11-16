<?php
if(!isset($gCms)) exit;

// Typical Database Initialization
$db =& $this->GetDb();
$dict = NewDataDictionary($db);
		
// mysql-specific, but ignored by other database
$taboptarray = array("mysql" => "TYPE=MyISAM");
		

// Creates the attachment table
$flds = "
	attachid I KEY,
	name C(64),
	sourcetype I,
	sourceid I,
	desttype I,
	destid C(128)
	";

$sqlarray = $dict->CreateTableSQL(cms_db_prefix()."module_attach_attachments", $flds, $taboptarray);
$dict->ExecuteSQLArray($sqlarray);
$db->CreateSequence(cms_db_prefix()."module_attach_attachments_seq");

// Creates the ressource type table
$flds = "
	typeid I KEY,
	typename C(32),
	destonly L,
	active L,
	iscore L,
	type_retrievecombo X,
	type_retrieveitem X,
	type_activecheck X
	";

$sqlarray = $dict->CreateTableSQL(cms_db_prefix()."module_attach_restypes", $flds, $taboptarray);
$dict->ExecuteSQLArray($sqlarray);
$db->CreateSequence(cms_db_prefix()."module_attach_restypes_seq");



// CREATING STOCK RESSOURCE TYPES :
require 'basetypes.php';



// INSERTING DEFAULT TEMPLATE
	$template = '<fieldset><legend><b>{$restitle}</b></legend>
<ul id="ressources_list">
{foreach from=$itemlist item="item"}
	<li><a href="{$item->ressource_url}">{$item->ressource_name}</a>{if $item->ressource_type->typename == "File"} ({$item->ext}, {$item->size_wformat}){/if}</li>
{/foreach}
</ul>

</fieldset>';
$this->SetTemplate("default",$template,$this->GetName());
$this->SetPreference("deftemplate","default",$this->GetName());

// permissions
	$this->CreatePermission("attach_use", "Attach: use module");
	$this->CreatePermission("attach_admin", "Attach: admin");

// try to create upload folder
	if(@mkdir($gCms->config['uploads_path'].DIRECTORY_SEPARATOR.'attachments')){
		@chmod($gCms->config['uploads_path'].DIRECTORY_SEPARATOR.'attachments', 0777);
	}

// put mention into the admin log
	$this->Audit( 0, $this->Lang("friendlyname"), $this->Lang("installed",$this->GetVersion()));

?>

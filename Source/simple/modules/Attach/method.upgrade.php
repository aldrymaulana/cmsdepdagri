<?php
if (!isset($gCms)) exit;

$db =& $gCms->GetDb();

$current_version = $oldversion;
switch($current_version){
	case "0.6":
		$newcode = '$item->ressource_name = $item->name;
$item->ressource_url = $gCms->config["uploads_url"].str_replace("//","/","/attachments/".$item->destid);';
$activecheck = '$result=true;';
		$query = "UPDATE ".cms_db_prefix()."_module_attach_restypes SET type_retrieveitem=? WHERE typename=? AND iscore=1";
		$db->Execute($query,array(addslashes($newcode),"File"));
	break;
}
		
// put mention into the admin log
$this->Audit( 0, $this->Lang('friendlyname'), $this->Lang('upgraded',$this->GetVersion()));

?>

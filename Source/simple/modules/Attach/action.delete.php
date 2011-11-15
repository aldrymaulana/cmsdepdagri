<?php
if(!isset($gCms)) exit;

$newparams = array();
if(isset($params["tplname"])){
	$newparams = array("active_tab"=>"templates");
	if($this->DeleteTemplate($params["tplname"]))	   $newparams["module_message>"] = $this->lang("message_modified");
}elseif(isset($params["attachid"])){
	global $gCms;
	$db =& $this->GetDb();					
	$newparams = array("active_tab"=>"attachments");
	$query = "DELETE FROM ".cms_db_prefix()."module_attach_attachments WHERE attachid=? LIMIT 1";
	if($db->Execute($query,array($params["attachid"])))	   $newparams["module_message>"] = $this->lang("message_modified");
}elseif(isset($params["typeid"])){
	global $gCms;
	$db =& $this->GetDb();					
	$newparams = array("active_tab"=>"types");
	$query = "DELETE FROM ".cms_db_prefix()."module_attach_restypes WHERE typeid=? LIMIT 1";
	if($db->Execute($query,array($params["typeid"]))){
		  $newparams["module_message>"] = $this->lang("message_modified");
		  $query = "DELETE FROM ".cms_db_prefix()."module_attach_attachments WHERE (sourcetype=? OR desttype=?)";
		  $db->Execute($query,array($params["typeid"],$params["typeid"]));
	}
}
$this->Redirect($id, "defaultadmin", $returnid, $newparams);
?>

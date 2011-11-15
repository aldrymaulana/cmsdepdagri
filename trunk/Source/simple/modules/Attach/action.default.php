<?php
if(!isset($gCms)) exit;

$types = $this->getResTypes();
$typelist = array();
foreach($types as $onetype)	$typelist[$onetype->typename] = $onetype->typeid;

$where = array("active"=>1);

$sourcetype = isset($params["from_type"])?$params["from_type"]:false;

if(!$sourcetype || !isset($typelist[$sourcetype])){
	$sourcetype = "Content Page";
	if(!isset($typelist[$sourcetype]))	return false;
}
$where["sourcetype"] = $typelist[$sourcetype];

if(isset($params["ressourcetype"])){
	$allowed = explode('|',$params["ressourcetype"]);
	$where["typename"] = $allowed;
}
$sourceid = isset($params["from_id"])?$params["from_id"]:false;
if(!$sourceid && $sourcetype != "Content Page"){
	return false;
}elseif(!$sourceid){
	$sourceid = $gCms->variables["content_id"];
}
$where["sourceid"] = $sourceid;

if(isset($params["orderbytype"]) && $params["orderbytype"]){
	$where["orderbytype"] = true;
}

$inline = (isset($params["inline"]) && $params["inline"])?true:false;

// we do the query
$itemlist = $this->getAttachments($where,false,$id,$returnid,$types);

$newlist = array();
foreach($itemlist as $item){
	$db =& $this->GetDb();
	$type = $item->ressource_type;
	$item->ressource_name = '';
	$item->ressource_url = '';
	eval($type->type_retrieveitem);
	//$item = $this->getRessourceInfo($item,$types,$id,$returnid);
	if($item)	$newlist[] = $item;
}
$itemlist = $newlist;

if(count($newlist) > 0){
	$template = false;
	if(isset($params["template"]) && $params["template"] != ""){
		$template = $this->GetTemplate($params["template"]);
	}
	// if no template has been specified, we retrieve the default template
	//$this->SetPreference("defaulttemplate","default");
	if(!$template || $template == ""){
		$templatename = $this->GetPreference("deftemplate",false);
		$template = $this->GetTemplate($templatename, $this->GetName());
	}
	
	$this->smarty->assign("itemlist",$newlist);
	$this->smarty->assign("restitle",$this->Lang("attachments"));
	echo $this->ProcessTemplateFromData($template);	
}	

?>

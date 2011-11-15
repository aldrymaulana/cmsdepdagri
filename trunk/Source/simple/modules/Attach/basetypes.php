<?php
if(!isset($gCms) || !isset($db))	exit;

$query = "INSERT INTO ".cms_db_prefix()."module_attach_restypes SET typeid=?, typename=?, iscore=?, destonly=?, active=?, type_retrievecombo=?, type_retrieveitem=?, type_activecheck=?";

// Content Page
$typeid = $db->GenID(cms_db_prefix()."module_attach_restypes_seq");
$name = "Content Page";
$iscore = 1;
$destonly = 0;
$active = 1;
$retrievecombo = '';
$retrieveitem = '$manager =& $gCms->GetHierarchyManager();
$node =& $manager->sureGetNodeById($item->destid);
if(!isset($node))	return false;
$content =& $node->GetContent();
$item->ressource_name = $content->Name();
$item->ressource_url = $content->getURL();';
$activecheck = '$result=true;';
$db->Execute($query, array($typeid, $name, $iscore, $destonly, $active, $retrievecombo, $retrieveitem, $activecheck));



// URL
$typeid = $db->GenID(cms_db_prefix()."module_attach_restypes_seq");
$name = "URL";
$iscore = 1;
$destonly = 1;
$active = 1;
$retrievecombo = '';
$retrieveitem = '$item->ressource_name = $item->name;
$item->ressource_url = $item->destid;';
$activecheck = '$result=true;';
$db->Execute($query, array($typeid, $name, $iscore, $destonly, $active, $retrievecombo, $retrieveitem, $activecheck));



// FILE
$typeid = $db->GenID(cms_db_prefix()."module_attach_restypes_seq");
$name = "File";
$iscore = 1;
$destonly = 1;
$active = 1;
$retrievecombo = '';
$retrieveitem = '$item->ressource_name = $item->name;
$item->ressource_url = $gCms->config["uploads_url"].str_replace("//","/","/attachments/".$item->destid);
$info = $this->plGetFileInfo($gCms->config["uploads_path"]."/attachments/".$item->destid);
if($info){
	foreach($info as $key=>$value)	$item->$key = $value;
}';
$activecheck = '$result=true;';
$db->Execute($query, array($typeid, $name, $iscore, $destonly, $active, $retrievecombo, $retrieveitem, $activecheck));



// NEWS
$typeid = $db->GenID(cms_db_prefix()."module_attach_restypes_seq");
$name = "News-article";
$iscore = 0;
$destonly = 0;
$active = (isset($gCms->modules["News"]) && $gCms->modules["News"]["active"])?1:0;
$retrievecombo = '$query = "SELECT news_id, news_title FROM ".cms_db_prefix()."module_news";
$dbresult =& $db->Execute($query);
while ($dbresult && $row = $dbresult->FetchRow()){
	$options[$row["news_id"]] = $row["news_title"];
}';
$retrieveitem = '$newsmodule = $this->GetModuleInstance("News");
if(!$newsmodule) return false;

$query = "SELECT news_title FROM ".cms_db_prefix()."module_news WHERE news_id=?";
$dbresult = $db->Execute($query,array($item->destid));
if($dbresult && $row = $dbresult->FetchRow()){
	$item->ressource_name = $row["news_title"];
}else{
	return false;
}

$prettyurl = "news/" . $item->destid."/".$returnid."/".munge_string_to_url($item->ressource_name);
$item->ressource_url = $newsmodule->CreateLink($id,"detail",$returnid,"",array("articleid"=>$item->destid),"",true, false, "", true, $prettyurl);';
$activecheck = 'if(!isset($gCms->modules["News"]) || !$gCms->modules["News"]["active"]){
	$result = false;
}else{
	$result = true;
}';
$db->Execute($query, array($typeid, $name, $iscore, $destonly, $active, $retrievecombo, $retrieveitem, $activecheck));



// ShopMadeSimple
$typeid = $db->GenID(cms_db_prefix()."module_attach_restypes_seq");
$name = "ShopMadeSimple-Product";
$iscore = 0;
$destonly = 0;
$active = (isset($gCms->modules["ShopMadeSimple"]) && $gCms->modules["ShopMadeSimple"]["active"])?1:0;
$retrievecombo = '$dbresult = $db->Execute("SELECT product_id, name FROM ".cms_db_prefix()."module_sms_products");
while ($dbresult && $row = $dbresult->FetchRow()){
	$options[$row["product_id"]] = $row["name"];
}';
$retrieveitem = '$smsmodule = $this->GetModuleInstance("ShopMadeSimple");

if(!$smsmodule) return false;
$dbresult = $db->Execute("SELECT name FROM ".cms_db_prefix()."module_sms_products WHERE product_id=?",array($item->destid));
if($dbresult && $row = $dbresult->FetchRow()){
	$item->ressource_name = $row["name"];
	$item->ressource_url = $smsmodule->CreateLink($id, "fe_product_detail", $returnid, $row["name"], array("product_id"=>$item->destid), "", true);
}';
$activecheck = 'return (isset($gCms->modules["ShopMadeSimple"]) && $gCms->modules["ShopMadeSimple"]["active"]);';
$db->Execute($query, array($typeid, $name, $iscore, $destonly, $active, $retrievecombo, $retrieveitem, $activecheck));



// Album
$typeid = $db->GenID(cms_db_prefix()."module_attach_restypes_seq");
$name = "Album";
$iscore = 0;
$destonly = 0;
$active = (isset($gCms->modules["Album"]) && $gCms->modules["Album"]["active"])?1:0;
$retrievecombo = '$dbresult = $db->Execute("SELECT album_id, album_name FROM ".cms_db_prefix()."module_album_albums");
while ($dbresult && $row = $dbresult->FetchRow()){
	$options[$row["album_id"]] = $row["album_name"];
}';
$retrieveitem = '$module = $this->GetModuleInstance("Album");
if(!$module) return false;
$dbresult = $db->Execute("SELECT album_name FROM ".cms_db_prefix()."module_album_albums WHERE album_id=?",array($item->destid));
if($dbresult && $row = $dbresult->FetchRow()){
	$item->ressource_name = $row["album_name"];
	$pretty_url = false;
	if(FALSE){	// SET THIS TO TRUE TO ENABLE PRETTY URLS
		$q = "SELECT hierarchy_path FROM ".cms_db_prefix()."content WHERE content_id=\'".$returnid."\'";
		$dbresult = $db->Execute( $q );
		if($dbresult && $call_page = $dbresult->FetchRow()){
			$pretty_url = $call_page["hierarchy_path"]."/album-".$this->albums[$i]->id."/".$returnid;
		}
	}
	$item->ressource_url = $module->CreateLink($id, "default", $returnid, $row["album_name"], array("albumid"=>$item->destid), "", true, false, "", false, $pretty_url);
}';
$activecheck = 'return (isset($gCms->modules["Album"]) && $gCms->modules["Album"]["active"]);';
$db->Execute($query, array($typeid, $name, $iscore, $destonly, $active, $retrievecombo, $retrieveitem, $activecheck));

<?php
if (!isset($gCms)) exit;
$admintheme = $gCms->variables["admintheme"];

if (isset($params["cancel"]))	$this->Redirect($id, "defaultadmin", $returnid, array("active_tab" => "attachments"));

$db =& $this->GetDb();

if(isset($params["attachid"])) {
	// if we are working on an item that exists, we load it. We must do this even when the form is submitted, otherwise we won't have the file fields
	$items = $this->getAttachments(array("attachid"=>$params["attachid"]),false,$id,$returnid);
	$item = $items[0];
}elseif(isset($params["sourcetype"])){
	$item = new stdClass();
	$item->sourcetype = $params["sourcetype"];
	$item->desttype = $params["desttype"];
}else{
	$this->Redirect($id, "defaultadmin", $returnid, array("active_tab" => "attachments"));
}

$typelist = $this->getResTypes();

// CHECK IF THE FORM IS BEING SUBMITTED :
// (we must detect all kinds of submit buttons, including files, since information must be saved before we go to file submission)
if (isset($params["submitedit"]) || 
	isset($params["apply"]) ||
	isset($params["add_file"]) ||
	isset($params["remove_file"]) 
	)
{
	
	// RETRIEVING THE FORM VALUES (and escaping it, if needed)
	if(!isset($item)) $item = new stdClass();
	$variables = array('name','sourcetype','sourceid','desttype','destid');
	foreach($variables as $onevar)	$item->$onevar = (isset($params[$onevar])?$params[$onevar]:"");
	if(trim($item->name) == ''){
		if($item->destid != "")	$item = $this->getRessourceInfo($item,$typelist,$id,$returnid,true);
		if($item && $item->destid != ""){
			$item->name = $typelist[$item->desttype]->typename;
			if(isset($item->ressource_name))	$item->name .= ": ".$item->ressource_name;
		}else{
			$item->name = 'untitled';
		}
	}
	if(!$item){
		echo $this->ShowErrors($this->Lang("error_typeerror"));
	}
	
	if( ($item->destid == '' && $typelist[$item->desttype]->typename != 'File')	|| $item->destid == -1 ){
		echo $this->ShowErrors($this->Lang("error_invaliddest"));
	}elseif($item->sourceid == -1){
		echo $this->ShowErrors($this->Lang("error_invalidsource"));
	}else{
		// FIELDS TO UPDATE
		$updatestring = "";
		$values = array();
		foreach($variables as $onevar){
			if($onevar != "destid" || $typelist[$item->desttype]->typename != 'File'){
				$updatestring .= ($updatestring == ""?"":", ").$onevar."=?";
				$values[] = addslashes($item->$onevar);
			}
		}
			
		$query = (isset($item->attachid)?"UPDATE ":"INSERT INTO ").cms_db_prefix()."module_attach_attachments SET ".$updatestring;
		
		if(isset($item->attachid)){
			$query .= " WHERE attachid=?;";
			array_push($values,$item->attachid);
		}else{
			// NEW ITEM
			// get a new id from the sequence table
			$item->attachid = $db->GenID(cms_db_prefix()."module_attach_attachments_seq");
			$query .= ", attachid=".$item->attachid;
		}
		$db->Execute($query, $values);
		
		if( isset($params["reciproc"]) && $params["reciproc"] ){
			// we create a verso attachment
			$newid = $db->GenID(cms_db_prefix()."module_attach_attachments_seq");
			$query = "INSERT INTO ".cms_db_prefix()."module_attach_attachments SET attachid=?, name=?, sourcetype=?, sourceid=?, desttype=?, destid=?";
			// we simply switch source and destination
			$values = array($newid, $item->name.$this->Lang("verso"), $item->desttype, $item->destid, $item->sourcetype, $item->sourceid);
			$db->Execute($query, $values);
		}

		// REDIRECTING...
			if(isset($params["add_file"])){
				$params = array("attachid"=>$item->attachid,"field"=>"destid","tablename"=>"attach_attachments","startdir"=>"attachments/","extensions"=>false);
				$this->Redirect($id, "browsefiles", $returnid, $params);
			}elseif(isset($params["apply"])){
				echo $this->ShowMessage($this->Lang("message_modified"));
			}else{
				$params = array("module_message" => $this->Lang("message_modified"), "active_tab"=>"attachments");
				$this->Redirect($id, "defaultadmin", $returnid, $params);	
			}
	}
	// END OF FORM SUBMISSION
}



/* ## PREPARING SMARTY ELEMENTS
CreateInputText : (id,name,value,size,maxlength)
CreateInputDropdown : (id,name,items,sindex,svalue)
*/

$sourceoptions = $this->getRessourceCombo($item->sourcetype,$typelist);
$thetype = $typelist[$item->desttype];
if($thetype->typename == 'File'){
	$this->smarty->assign("attachment_label", $this->Lang("attachedfile"));		
	$tmp = '';
	if(isset($item->destid) && $item->destid != "")	$tmp .= '<a href="../uploads/attachments'.$item->destid.'" >'.$item->destid.'</a><br/>';
	$tmp .= $this->CreateInputSubmit($id,"add_file",$this->Lang("select_file"));
	$this->smarty->assign("attachment_input", $tmp);
}elseif($thetype->typename == 'URL'){
	$this->smarty->assign("attachment_label", $this->Lang("attachedurl"));	
	$this->smarty->assign("attachment_input", $this->CreateInputText($id,"destid",isset($item->destid)?$item->destid:"",50,128));
}elseif($thetype->typename == 'Content Page'){
	$cntoperations = $gCms->getContentOperations();
	$this->smarty->assign("attachment_label", $this->Lang("attachedpage"));	
	$this->smarty->assign("attachment_input", $cntoperations->CreateHierarchyDropdown("",isset($item->destid)?$item->destid:"-1",$id."destid"));
}else{
	$this->smarty->assign("attachment_label", $this->Lang("attach")." (".$thetype->typename.")");		
	$destoptions = $this->getRessourceCombo($item->desttype,$typelist);
	$this->smarty->assign("attachment_input", $this->CreateInputDropdown($id,"destid",$destoptions,"",isset($item->destid)?$item->destid:"-1"));
}

$srctype = $typelist[$item->sourcetype];
if($srctype->typename == 'Content Page'){
	$cntoperations = $gCms->getContentOperations();
	$this->smarty->assign("source_label", $this->Lang("to")." (content page)");
	$this->smarty->assign("source_input", $cntoperations->CreateHierarchyDropdown("",isset($item->sourceid)?$item->sourceid:"-1",$id."sourceid"));	
}else{
	$this->smarty->assign("source_label", $this->Lang("to")." (".$srctype->typename.")");
	$this->smarty->assign("source_input", $this->CreateInputDropdown($id,"sourceid",$sourceoptions,"",isset($item->sourceid)?$item->sourceid:"-1"));
}

$this->smarty->assign("name_label", $this->Lang("name"));
$this->smarty->assign("name_input", $this->CreateInputText($id,"name",isset($item->name)?$item->name:"",50,64));

$reciproc = false;
if(!isset($item->attachid) && $thetype->destonly == 0 && $srctype->destonly == 0){
	$reciproc = $this->CreateInputCheckbox($id,"reciproc",1,(isset($params["reciproc"]) && $params["reciproc"])?1:0).' '.$this->Lang("reciproc");
}
$this->smarty->assign("reciproc", $reciproc);

$this->smarty->assign("edittitle", $this->Lang(isset($item->attachid)?"edit_attachment":"add_attachment"));

$this->smarty->assign("submit", $this->CreateInputSubmit($id, "submitedit", lang("submit")));
$this->smarty->assign("apply", $this->CreateInputSubmit($id, "apply", lang("apply")));
$this->smarty->assign("cancel", $this->CreateInputSubmit($id, "cancel", lang("cancel")));

// DISPLAYING
echo $this->CreateFormStart($id, "editAttachment", $returnid);
	if(isset($item->attachid) && isset($item->attachid))	echo $this->CreateInputHidden($id, "attachid", $item->attachid);
	echo $this->CreateInputHidden($id, "sourcetype", $item->sourcetype);
	echo $this->CreateInputHidden($id, "desttype", $item->desttype);
	echo $this->ProcessTemplate("editAttachment.tpl");
echo $this->CreateFormEnd();
	
?>

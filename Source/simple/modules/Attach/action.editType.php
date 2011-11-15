<?php
if (!isset($gCms)) exit;
$admintheme = $gCms->variables["admintheme"];

if (isset($params["cancel"]) || !$this->CheckPermission("attach_admin") )	$this->Redirect($id, "defaultadmin", $returnid, array("active_tab" => "types"));

$db =& $this->GetDb();


if(isset($params["typeid"]) && $params["typeid"] > 0) {
	// if we are working on an item that exists, we load it. We must do this even when the form is submitted, otherwise we won't have the file fields
	$items = $this->getResType(array("typeid"=>$params["typeid"]));
	$item = $items[$params["typeid"]];
}

// CHECK IF THE FORM IS BEING SUBMITTED :
if (isset($params["submit"]) || isset($params["apply"])){

	// RETRIEVING THE FORM VALUES (and escaping it, if needed)
	if(!isset($item)) $item = new stdClass();
	$variables = array('typename','iscore','destonly','type_retrievecombo','type_retrieveitem','type_activecheck');
	foreach($variables as $onevar)	$item->$onevar = (isset($params[$onevar])?$params[$onevar]:0);
	if(!isset($item->active))	$item->active = 1;
	$item->typename = munge_string_to_url($item->typename, false);
	
	$errors = $this->testcode($item);
	
	if(	!isset($params["typename"]) || $params["typename"] == "" ){
		$errors[] = array("Name",$this->Lang("error_nonamegiven"));
	}
	if(count($errors) > 0){
		foreach($errors as $error){
			if($error[0] == "Name"){
				$errortext = $error[1];
			}else{
				$errortext = $this->Lang("error_invalidcode").$error[0].': '.$error[1];
			}
			echo $this->ShowErrors($errortext);
		}
	}else{
		############ DOING THE UPDATE

		// FIELDS TO UPDATE
		$updatestring = "";
		foreach($variables as $onevar)	$updatestring .= $onevar."=?, ";
		$query = (isset($item->typeid)?"UPDATE ":"INSERT INTO ").cms_db_prefix()."module_attach_restypes SET ".$updatestring;
		$query .= "active=?";

		// VALUES
		$values = array();
		foreach($variables as $onevar)	$values[] = addslashes($item->$onevar);
		$values[] = $item->active;
		
		if(isset($item->typeid)){
			$query .= " WHERE typeid=?;";
			array_push($values,$item->typeid);
		}else{
			// NEW ITEM
			$item->typeid = $db->GenID(cms_db_prefix()."module_attach_restypes_seq");
			$query .= ", typeid=".$item->typeid;
		}
		$db->Execute($query, $values);	
		if(isset($params["apply"])){
			echo $this->ShowMessage($this->Lang("message_modified"));
		}else{
			$params = array("module_message" => $this->Lang("message_modified"), "active_tab"=>"types");
			$this->Redirect($id, "defaultadmin", $returnid, $params);	
		}
	}
	// END OF FORM SUBMISSION
}



/* ## PREPARING SMARTY ELEMENTS
CreateInputText : (id,name,value,size,maxlength)
CreateInputTextArea : (wysiwyg,id,text,name)
CreateInputDropdown : (id,name,items,sindex,svalue)
*/
$this->smarty->assign("name_label", $this->Lang("name"));
$this->smarty->assign("name_input", $this->CreateInputText($id,"typename",isset($item)?$item->typename:"",50,64));
$this->smarty->assign("retrieveitem_help", $this->Lang("type_retrieveitem"));
$this->smarty->assign("retrieveitem_input", $this->CreateTextArea(false,$id,isset($item)?$item->type_retrieveitem:"","type_retrieveitem"));
$this->smarty->assign("retrievecombo_help", $this->Lang("type_retrievecombo"));
$this->smarty->assign("retrievecombo_input", $this->CreateTextArea(false,$id,isset($item)?$item->type_retrievecombo:"","type_retrievecombo"));
$this->smarty->assign("activecheck_help", $this->Lang("type_activecheck"));
$this->smarty->assign("activecheck_input", $this->CreateTextArea(false,$id,isset($item)?$item->type_activecheck:"","type_activecheck"));
$this->smarty->assign("destonly_label", $this->Lang("type_destonly"));
$this->smarty->assign("destonly_input", $this->CreateInputCheckbox($id,"destonly",1,isset($item)?$item->destonly:0));

$this->smarty->assign("edittitle", $this->Lang(isset($item->typeid)?"edit_restype":"add_restype"));

$this->smarty->assign("submit", $this->CreateInputSubmit($id, "submit", lang("submit")));
$this->smarty->assign("apply", $this->CreateInputSubmit($id, "apply", lang("apply")));
$this->smarty->assign("cancel", $this->CreateInputSubmit($id, "cancel", lang("cancel")));


// DISPLAYING

echo $this->StartTabHeaders();
	echo $this->SetTabHeader("type", $this->Lang("restype"), true);
	echo $this->SetTabHeader("typehelp", $this->Lang("typehelp"), false);		
echo $this->EndTabHeaders();

echo $this->StartTabContent();

	echo $this->StartTab("type");
		echo $this->CreateFormStart($id, "editType", $returnid);
			echo $this->ProcessTemplate("editType.tpl");
			if(isset($item) && isset($item->typeid))	echo $this->CreateInputHidden($id, "typeid", $item->typeid);
		echo $this->CreateFormEnd();
	echo $this->EndTab();
	
	echo $this->StartTab("typehelp");
		echo $this->Lang("help_edittype");
	echo $this->EndTab();	

echo $this->EndTabContent();	
?>

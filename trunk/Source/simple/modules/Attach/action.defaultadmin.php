<?php
if (!isset($gCms)) exit;
$admintheme = $gCms->variables["admintheme"];
$active_tab = isset($params["active_tab"])?$params["active_tab"]:"attachments";

echo $this->StartTabHeaders();
	echo $this->SetTabHeader("attachments", $this->Lang("attachments"), "attachments" == $active_tab ? true : false);
	if( $this->CheckPermission("Modify Templates") || $this->CheckPermission("attach_admin") ) {
		echo $this->SetTabHeader("templates", $this->Lang("templates"), "templates" == $active_tab ? true : false);		
	}
	echo $this->SetTabHeader("types", $this->Lang("restypes"), "types" == $active_tab ? true : false);
echo $this->EndTabHeaders();

echo '
<script type="text/javascript">
';
echo $this->getFileContent("instantsearch.js");
echo '</script>';

echo $this->StartTabContent();

	echo $this->StartTab("attachments");
		$whereclause = array();
		echo '<div style="float: right; text-align: right;">';
		if(!isset($params["showonly"]) || ($params["showonly"] == '-' && $params["showonly2"] =='-') ){
			$desttypes = $this->getTypeList(true);
			$desttypes["-"] = $this->Lang("anything");
			$srctypes = $this->getTypeList(false);
			$srctypes["-"] = $this->Lang("anything");				
			echo $this->CreateFormStart($id, "defaultadmin", $returnid);
				echo "<p>".$this->Lang("showonly")." ".$this->CreateInputDropdown($id, "showonly", array_flip($desttypes), -1, '-');
				echo $this->Lang("attachedto")." ".$this->CreateInputDropdown($id, "showonly2", array_flip($srctypes), -1, '-');
				echo $this->CreateInputHidden($id, "active_tab", "attachments");
				echo " ".$this->CreateInputSubmit($id, "submit", lang("submit"))."</p>";
			echo $this->CreateFormEnd();
		}else{
			echo "<p>".$this->CreateLink($id, "defaultadmin", $returnid, $this->Lang("showall"), array("active_tab" => "attachments"))."</p>";
			if($params["showonly"] != '-')	$whereclause = array("desttype"=>$params["showonly"]);
			if($params["showonly2"] != '-')	$whereclause = array("sourcetype"=>$params["showonly2"]);
		}
		echo "<p>".$this->Lang("searchthistable").' '.$this->CreateInputText($id, "innersearch", "", 10, 64, ' onkeyup="ctlmm_search(this.value,\'attachmentlist\');"')."</p>";
		echo '</div>';
		echo "<br/><p>".$this->CreateLink($id, "addAttachment", $returnid, $admintheme->DisplayImage("icons/system/newobject.gif", "","","","systemicon")." ".$this->Lang("add_attachment"))."</p><br/>";
		$itemlist = $this->getAttachments($whereclause,true, $id, $returnid);
		$this->smarty->assign("itemlist", $itemlist);
		$adminshow = array(
			array($this->Lang("name"),"editlink",true),
			array($this->Lang("attachment"),"destname",true),
			array($this->Lang("attachedto"),"sourcename",true),
			array($this->Lang("Actions"),"deletelink")		
			);
		$this->smarty->assign("adminshow", $adminshow);
		echo $this->ProcessTemplate("adminpanel.tpl");
		echo "<p>".$this->CreateLink($id, "addAttachment", $returnid, $admintheme->DisplayImage("icons/system/newobject.gif", "","","","systemicon")." ".$this->Lang("add_attachment"))."</p>";
	echo $this->EndTab();

if( $this->CheckPermission("Modify Templates") || $this->CheckPermission("attach_admin") ) {
	echo $this->StartTab("templates");

    $templatelist = $this->ListTemplates($this->GetName());
    $defaulttemplate = $this->GetPreference("deftemplate",false);
    $tploptions = array();
    $itemlist = array();
    foreach($templatelist as $onetpl){
	   $tploptions[$onetpl] = $onetpl;
	   $tpl = new stdClass();
	   $tpl->editlink = $this->CreateLink( $id, "editTemplate", $returnid, $onetpl, array("tplname"=>$onetpl) );
	   $tpl->deletelink = ($defaulttemplate == $onetpl)?"":$this->CreateLink( $id, "delete", $returnid, $admintheme->DisplayImage("icons/system/delete.gif", $this->Lang("delete"), "", "", "systemicon"), array("tplname"=>$onetpl) );
	   array_push($itemlist, $tpl);
    }
	echo $this->CreateFormStart($id, "changedeftemplate", $returnid);
    echo "	<div class=\"pageoverflow\">
			 <p class=\"pagetext\"><b>".$this->Lang("defaulttemplate").":</b></p>
			 <p class=\"pageinput\">".$this->CreateInputDropdown($id,"template",$tploptions,-1,$defaulttemplate)." ".$this->CreateInputSubmit($id, "submit", lang("submit"))."</p>
		</div>";
    echo $this->CreateFormEnd();

    echo "<br/><br/><hr/><h2>".$this->Lang("templates")."</h2>";
    $this->smarty->assign("itemlist", $itemlist);
    $adminshow = array(	array($this->Lang("template"), "editlink"), array($this->Lang("Actions"), "deletelink")	);
    $this->smarty->assign("adminshow", $adminshow);
    $this->smarty->assign("tableid", false);
    echo $this->ProcessTemplate("adminpanel.tpl");
    echo "<p>".$this->CreateLink($id, "editTemplate", $returnid, $admintheme->DisplayImage("icons/system/newobject.gif", "","","","systemicon")." ".$this->Lang("addtemplate"))."</p>";

	echo $this->EndTab();
}

	echo $this->StartTab("types");
		echo "<p>".$this->CreateLink($id, "editType", $returnid, $admintheme->DisplayImage("icons/system/newobject.gif", "","","","systemicon")." ".$this->Lang("add_restype"))."</p>";
		$itemlist = $this->getResTypes(array(),true, $id, $returnid);
		$this->smarty->assign("itemlist", $itemlist);
		$adminshow = array(
			array($this->Lang("name"),"editlink"),
			array($this->Lang("active"),"toggleactive"),
			array($this->Lang("Actions"),"deletelink")		
			);
		$this->smarty->assign("adminshow", $adminshow);
		$this->smarty->assign("tableid", false);
		echo $this->ProcessTemplate("adminpanel.tpl");
		echo "<p>".$this->CreateLink($id, "editType", $returnid, $admintheme->DisplayImage("icons/system/newobject.gif", "","","","systemicon")." ".$this->Lang("add_restype"))."</p>";
	echo $this->EndTab();

echo $this->EndTabContent();

?>

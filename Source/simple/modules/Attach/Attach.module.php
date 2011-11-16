<?php
#-------------------------------------------------------------------------
# Module: Attach
# Pierre-Luc Germain
#
#-------------------------------------------------------------------------
# CMS - CMS Made Simple is (c) 2008 by Ted Kulp (wishy@cmsmadesimple.org)
# This project"s homepage is: http://www.cmsmadesimple.org
#
# This module was created with CTLModuleMaker 1.7.1, which is
# based on material from the ModuleMaker module version 0.2
# Copyright (c) 2008 by Samuel Goldstein (sjg@cmsmadesimple.org) 
#
#-------------------------------------------------------------------------
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
# Or read it online: http://www.gnu.org/licenses/licenses.html#GPL
#
#-------------------------------------------------------------------------

class Attach extends CMSModule
{

	function GetName()
	{
		return "Attach";
	}

	/*---------------------------------------------------------
	   GetFriendlyName()
	   This can return any string, preferably a localized name
	   of the module. This is the name that"s shown in the
	   Admin Menus and section pages (if the module has an admin
	   component).
	   
	   See the note on localization at the top of this file.
	  ---------------------------------------------------------*/
	function GetFriendlyName()
	{
		return $this->Lang("friendlyname");
	}
	
	/*---------------------------------------------------------
	   GetVersion()
	   This can return any string, preferably a number or
	   something that makes sense for designating a version.
	   The CMS will use this to identify whether or not
	   the installed version of the module is current, and
	   the module will use it to figure out how to upgrade
	   itself if requested.	   
	  ---------------------------------------------------------*/
	function GetVersion()
	{
		return "0.7.2.1";
	}


	/*---------------------------------------------------------
	   GetDependencies()
	   Your module may need another module to already be installed
	   before you can install it.
	   This method returns a list of those dependencies and
	   minimum version numbers that this module requires.
	   
	   It should return an hash, eg.
	   return array("somemodule"=>"1.0", "othermodule"=>"1.1");
	  ---------------------------------------------------------*/
	function GetDependencies()
	{
		return array();
	}

	/*---------------------------------------------------------
	   GetHelp()
	   This returns HTML information on the module.
	   Typically, you"ll want to include information on how to
	   use the module.
	   
	   See the note on localization at the top of this file.
	  ---------------------------------------------------------*/
	function GetHelp()
	{
		return $this->Lang("help");
	}

	/*---------------------------------------------------------
	   GetAuthor()
	   This returns a string that is presented in the Module
	   Admin if you click on the "About" link.
	  ---------------------------------------------------------*/
	function GetAuthor()
	{
		return "Pierre-Luc Germain (plger on the forge & forum)";
	}


	/*---------------------------------------------------------
	   GetAuthorEmail()
	   This returns a string that is presented in the Module
	   Admin if you click on the "About" link. It helps users
	   of your module get in touch with you to send bug reports,
	   questions, cases of beer, and/or large sums of money.
	  ---------------------------------------------------------*/
	function GetAuthorEmail()
	{
		return "";
	}


	/*---------------------------------------------------------
	   IsPluginModule()
	   This function returns true or false, depending upon
	   whether users can include the module in a page or
	   template using a smarty tag of the form
	   {cms_module module="Prod" param1=val param2=val...}
	   
	   If your module does not get included in pages or
	   templates, return "false" here.
	  ---------------------------------------------------------*/
	function IsPluginModule()
	{
		return true;
	}


	/*---------------------------------------------------------
	   HasAdmin()
	   This function returns a boolean value, depending on
	   whether your module adds anything to the Admin area of
	   the site. For the rest of these comments, I"ll be calling
	   the admin part of your module the "Admin Panel" for
	   want of a better term.
	  ---------------------------------------------------------*/
	function HasAdmin() {	return true;	}
	function GetAdminSection() {return "content";}
	function GetAdminDescription() {return $this->Lang("admindescription");}

	function VisibleToAdminUser(){
		return ($this->CheckPermission("attach_use") || $this->CheckPermission("attach_admin"));
	}

	/*---------------------------------------------------------
	   SetParameters()
	   This function enables you to create mappings for
	   your module when using "Pretty Urls".
	   
	   Typically, modules create internal links that have
	   big ugly strings along the lines of:
	   index.php?mact=ModName,cntnt01,actionName,0&cntnt01param1=1&cntnt01param2=2&cntnt01returnid=3
	   
	   You might prefer these to look like:
	   /ModuleFunction/2/3
	   
	   To do this, you have to register routes and map
	   your parameters in a way that the API will be able
	   to understand.

	   Also note that any calls to CreateLink will need to
	   be updated to pass the pretty url parameter.
	   
	   Since the Skeleton doesn"t really create any links,
	   the section below is commented out, but you can
	   use it to figure out pretty urls.
	   
	   ---------------------------------------------------------*/
	function SetParameters()
	{
		$this->RegisterModulePlugin();
		$this->RestrictUnknownParams();
		$this->CreateParameter("action", "default", $this->Lang("phelp_action"));
		$this->CreateParameter("ressourcetype", "", $this->Lang("phelp_ressourcetype"));
		$this->CreateParameter("from_type", "Content Page", $this->Lang("phelp_fromtype"));
		$this->CreateParameter("from_id", "", $this->Lang("phelp_fromid"));
		$this->CreateParameter("template", "", $this->Lang("phelp_template"));
		$this->CreateParameter("orderbytype", false, $this->Lang("phelp_orderbytype"));
		$this->CreateParameter("inline", false, $this->Lang("phelp_inline"));
		
		$this->SetParameterType("action",CLEAN_STRING);
		$this->SetParameterType("ressourcetype",CLEAN_STRING);
		$this->SetParameterType("from_type",CLEAN_STRING);
		$this->SetParameterType("from_id",CLEAN_INT);
		$this->SetParameterType("template",CLEAN_STRING);
		$this->SetParameterType("orderbytype",CLEAN_STRING);
		$this->SetParameterType("inline",CLEAN_STRING);
	}

	function InstallPostMessage()
	{
		return $this->Lang("postinstall");
	}
	function UninstallPostMessage()
	{
		return $this->Lang("postuninstall");
	}
	function UninstallPreMessage()
	{
		return $this->Lang("really_uninstall");
	}


	/*---------------------------------------------------------
	   Install()
	   When your module is installed, you may need to do some
	   setup. Typical things that happen here are the creation
	   and prepopulation of database tables, database sequences,
	   permissions, preferences, etc.
	   	   
	   For information on the creation of database tables,
	   check out the ADODB Data Dictionary page at
	   http://phplens.com/lens/adodb/docs-datadict.htm
	   
	   This function can return a string in case of any error,
	   and CMS will not consider the module installed.
	   Successful installs should return FALSE or nothing at all.
	  ---------------------------------------------------------*/
	function Install()
	{
		global $gCms;
		require "method.install.php";
	}

	/*---------------------------------------------------------
	   Uninstall()
	   Sometimes, an exceptionally unenlightened or ignorant
	   admin will wish to uninstall your module. While it
	   would be best to lay into these idiots with a cluestick,
	   we will do the magnanimous thing and remove the module
	   and clean up the database, permissions, and preferences
	   that are specific to it.
	   This is the method where we do this.
	  ---------------------------------------------------------*/
	function Uninstall()
	{
		global $gCms;
		require "method.uninstall.php";
	}


	function DoAction($action, $id, $params, $returnid=-1){
		global $gCms;
		
		switch($action){
			case "changedeftemplate":
				if(isset($params["template"])){
					$this->SetPreference("deftemplate", $params["template"], $this->GetName());
					$params = array("active_tab"=>"templates", "module_message"=>$this->lang("message_modified"));
				}
				// no break, natural redirect to defaultadmin
			case "defaultadmin":
				require "action.defaultadmin.php";
				break;
			case "delete":
				require "action.delete.php";
				break;
			case "editTemplate":
				require "action.editTemplate.php";
				break;
			case "editType":
				require "action.editType.php";
				break;
			case "editAttachment":
				require "action.editAttachment.php";
				break;
			case "addAttachment":
				$desttypes = $this->getTypeList(true,true);
				$srctypes = $this->getTypeList(false,true);
				echo '<h2>'.$this->Lang("whattodo").'</h2><br/><br/>';
				echo $this->CreateFormStart($id, "editAttachment", $returnid);
				echo '<p>'.$this->Lang("attach")." ".$this->CreateInputDropdown($id, "desttype", array_flip($desttypes));
				echo " ".$this->Lang("to")." ".$this->CreateInputDropdown($id, "sourcetype", array_flip($srctypes)).'</p>';
				echo '<p>'.$this->CreateInputSubmit($id, "submitadd", lang("submit")).'</p>';
				echo $this->CreateFormEnd();
				break;				
			case "browsefiles":
				require "action.browsefiles.php";
				break;
			case "uploadFile":
				require "action.uploadFile.php";
				// no break, natural redirect to assign function
			case "assignfile":
				if(!isset($params['field']) || !isset($params['attachid']) || !isset($params['tablename']))	$this->Redirect($id, 'defaultadmin', $returnid, array());
				$filepath = isset($params['filepath'])?str_replace('//','/',$params['filepath']):'';
				$tablename = cms_db_prefix().'module_'.$params['tablename'];
				$query = "UPDATE $tablename SET ".$params['field']."=? WHERE attachid=? LIMIT 1";
				$db = $this->GetDb();
				$dbresult = $db->Execute($query,array($filepath,$params['attachid']));
				$this->Redirect($id, 'editAttachment', $returnid, array( 'attachid' => $params["attachid"] ) );
				break;
			case "toggleactive":
				if(isset($params["typeid"])){
					$newval = isset($params["newval"])?$params["newval"]:0;
					if($newval == 0 || $this->type_activeCheck($params["typeid"])){
						global $gCms;
						$db =& $this->GetDb();
						$query = "UPDATE FROM ".cms_db_prefix()."module_attach_restypes SET active=? WHERE typeid=? LIMIT 1";
						$db->Execute($query, array($newval, $params["typeid"]));
					}
				}
				$this->Redirect($id, "defaultadmin", $returnid, array("active_tab"=>"types"));
				break;
			case "default":
			default:
				require "action.default.php";
				break;
		}


	}

/* ---------------------------------------------
NOT PART OF THE NORMAL MODULE API
----------------------------------------------*/
	
	function getTypeList($destonly="all", $onlyactive=false){
		global $gCms;
		$db =& $this->GetDb();
		$query = "SELECT typeid, typename FROM ".cms_db_prefix()."module_attach_restypes";
		if($destonly != 'all'){
			$query .= " WHERE destonly='".($destonly?'1':'0')."'";
			if($onlyactive)	$query .= " AND active=1";
		}
		$dbresult = $db->Execute($query);
		$types = array();
		while ($dbresult && $row = $dbresult->FetchRow()){
			$types[$row["typeid"]] = stripslashes($row["typename"]);
		}
		return $types;
	}

	function getResType($where=array(), $admin=false, $id="", $returnid=""){
		return $this->getResTypes($where, $admin, $id, $returnid);
	}
	function getResTypes($where=array(), $admin=false, $id="", $returnid=""){
		global $gCms;
		$db =& $this->GetDb();
		$wherestring = '';
		$wherevalues = array();
		foreach($where as $key=>$value){
			$wherestring .= ($wherestring == ""?"":" AND ").$key."=?";
			$wherevalues[] = $value;
		}
		$query = "SELECT * FROM ".cms_db_prefix()."module_attach_restypes ".($wherestring == ""?"":" WHERE ".$wherestring);

		$dbresult = $db->Execute($query,$wherevalues);
		$itemlist = array();
		while ($dbresult && $row = $dbresult->FetchRow()){
			$item = new stdClass();
			foreach($row as $key=>$value){
				$item->$key = stripslashes($value);
			}
			if($admin){
				if( $item->iscore || !$this->CheckPermission("attach_admin") ){
					$item->editlink = $item->typename;
					$item->deletelink = '';
				}else{	
					$item->editlink = $this->CreateLink($id, "editType", $returnid, $item->typename, array("typeid"=>$item->typeid));
					$item->deletelink = $this->CreateLink($id, "delete", $returnid, $gCms->variables["admintheme"]->DisplayImage("icons/system/delete.gif",lang("delete"),"","","systemicon"), array("typeid"=>$item->typeid),$this->Lang("prompt_deletetype"));
				}
				if ($item->active == 1){
					$item->toggleactive = $this->CreateLink($id, "toggleactive", $returnid, $gCms->variables["admintheme"]->DisplayImage("icons/system/true.gif",lang("setfalse"),"","","systemicon"), array("typeid"=>$item->typeid));
				}else{
					$item->toggleactive = $this->CreateLink($id, "toggleactive", $returnid, $gCms->variables["admintheme"]->DisplayImage("icons/system/false.gif",lang("settrue"),"","","systemicon"), array("typeid"=>$item->typeid, "newval"=>1));
				}
			}
			$itemlist[$item->typeid] = $item;
		}
		return $itemlist;
	}

	function getAttachments($where=array(),$admin=false,$id,$returnid,$types=false){
		if(!is_array($types))	$types = $this->getResTypes();
		global $gCms;
		$db =& $this->GetDb();
		$wherestring = '';
		$wherevalues = array();
		$orderbytype = false;
		foreach($where as $key=>$value){
			if($key == "orderbytype" && $value){
				$orderbytype = true;
			}elseif(is_array($value)){
				$tmp = '';
				foreach($value as $oneval){
					$tmp .= ($tmp==''?'':' OR ').$key.'=?';
					$wherevalues[] = $value;
				}
				$wherestring .= " AND (".$tmp.")";
			}else{
				$wherestring .= " AND ".$key."=?";
				$wherevalues[] = $value;
			}
		}
		$query = "SELECT A.* FROM ".cms_db_prefix()."module_attach_attachments A, ".cms_db_prefix()."module_attach_restypes B WHERE A.desttype = B.typeid ".$wherestring." ORDER BY ".($orderbytype?"B.typename":"name");

		$dbresult = $db->Execute($query,$wherevalues);
		$itemlist = array();
		while ($dbresult && $row = $dbresult->FetchRow()){
			$item = new stdClass();
			foreach($row as $key=>$value){
				$item->$key = stripslashes($value);
			}
			$item->ressource_type = $types[$item->desttype];
			$item = $this->getRessourceInfo($item,$types,$id,$returnid);
			
			if($admin)	$item = $this->admin_getRessourceInfo($item, $types, $id, $returnid);
			
			array_push($itemlist,$item);
		}
		return $itemlist;
	}

	function getRessourceInfo($item,$types,$id,$returnid,$sourcetype=false){
		global $gCms;
		$db =& $this->GetDb();
		
		$wanted = $sourcetype?"sourcetype":"desttype";
		if(is_array($types) && isset($types[$item->$wanted])){
			$type = $types[$item->$wanted];
		}else{
			$type = $this->getResTypes(array("typeid"=>$item->$wanted));
			if(!isset($type[0]))	return false;
			$type = $type[0];
		}
		$item->ressource_name = '';
		$item->ressource_url = '';
		eval($type->type_retrieveitem);
		return $item;
	}
	
	function getRessourceCombo($typeid,$types=false){
		global $gCms;
		$db =& $this->GetDb();
		
		if($types && isset($types[$typeid])){
			$type = $types[$typeid];
		}else{
			$type = $this->getResTypes(array("typeid"=>$typeid));
			if(!isset($type[0]))	return false;
		}
		$options = array();
		eval($type->type_retrievecombo);
		return array_flip($options);
	}
	
	function admin_getRessourceInfo($realitem, $types, $id, $returnid){
		$srctype = $types[$realitem->sourcetype];
		$desttype = $types[$realitem->desttype];
		$realitem->sourcename = '';
		$realitem->destname = '';
		if(!$srctype || !$desttype)	return $realitem;
		
		global $gCms;
		$db =& $this->GetDb();
		
		// retrieve source:
		$type = $srctype;
		$item = new StdClass();
		$item->name = '';
		$item->desttype = $realitem->sourcetype;
		$item->destid = $realitem->sourceid;
		eval($type->type_retrieveitem);
		$realitem->sourcename = $type->typename.': '.$item->ressource_name;
		
		// retrieve destination:
		if($desttype->typename == "File"){
			$realitem->destname = "File: ".substr(strrchr($realitem->destid, "/"), 1);
		}elseif($desttype->typename == "URL"){
			$realitem->destname = "URL";
		}else{
			$type = $desttype;
			$item = $realitem;
			eval($type->type_retrieveitem);		
			$realitem->destname = $type->typename.': '.$item->ressource_name;		
		}
		
		// creating admin links
		$realitem->editlink = $this->CreateLink($id, "editAttachment", $returnid, $realitem->name, array("attachid"=>$realitem->attachid));
		$realitem->deletelink = $this->CreateLink($id, "delete", $returnid, $gCms->variables["admintheme"]->DisplayImage("icons/system/delete.gif",lang("delete"),"","","systemicon"), array("attachid"=>$realitem->attachid));
		
		return $realitem;
	}
	
	function type_activeCheck($typeid){
		$type = $this->getResTypes(array("typeid"=>$typeid));
		if(!isset($type[0]))	return false;
		if($type[0]->iscore)	return true;
		
		global $gCms;
		$db =& $this->GetDb();
		$result = false;
		eval($type[0]->type_activecheck);
		return $result;
	}
	
	function testcode($item){
		$codefields = array('type_retrievecombo','type_retrieveitem','type_activecheck');
		$errors = array();
		foreach($codefields as $field){
			$code = isset($item->$field)?$item->$field:"";
	
			// taken from cms core...
			if (strrpos($code, '{') !== FALSE){
				$lastopenbrace = strrpos($code, '{');
				$lastclosebrace = strrpos($code, '}');
				
				if ($lastopenbrace > $lastclosebrace){
					$errors[] = array($field,"Missing brace");
				}
			}
	
			srand();
			ob_start();
			if (eval('function testfunction'.rand().'() {'.$code.'}') === FALSE){
				$buffer = ob_get_clean();
				$errors[] = array($field,preg_replace('/<br \/>/', '', $buffer ));
			}else{
				ob_get_clean();
			}
		}
		return $errors;
	}
	
	function plGetFileInfo($filepath){
		if(!file_exists($filepath))	return false;
		require "function.plGetFileInfo.php";
		return $info;
	}
	
	function getFileContent($filename){
		$filepath = dirname(__FILE__).DIRECTORY_SEPARATOR.$filename;
		if(file_exists($filepath)){
			$fhandle = fopen($filepath, "r+");
			$content = fread($fhandle, filesize($filepath));
			return $content;
		}else{
			return false;
		}
	}
}

?>

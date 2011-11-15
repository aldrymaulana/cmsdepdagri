<?php

class FrontEndUsersComments extends CMSModule
{
	function GetName() {
		return 'FrontEndUsersComments';
	}
	
	function GetFriendlyName() {
		return $this->Lang('friendlyname');
	}

	function GetVersion() {
		return '0.1';
	}

	function GetHelp($lang = 'fr_FR') {
		return $this->Lang('help');
	}
	
	function GetAuthor() {
		return 'Alexandre COURTOIS';
	}

	function GetAuthorEmail() {
		return 'alexandre.courtois@gmail.com';
	}
	
	function GetChangeLog() {
		return '0.1: Initial Release';
	}

	function IsPluginModule() {
		return true;
	}

	function HasAdmin() {
		return true;
	}

	function GetAdminSection() {
		return 'content';
	}

	function GetAdminDescription() {
		return $this->Lang('description');
	}

	function VisibleToAdminUser() {
		return $this->CheckPermission('Manage FrontEndUsersComments');
	}

	function GetDependencies() {
		return array('FrontEndUsers'=>'1.4.2','CMSMailer'=>'1.73.14');
	}

	function MinimumCMSVersion() {
		return '1.3.1';
	}
	
	function SetParameters() {
		$this->RestrictUnknownParams();
	
		$this->CreateParameter('authorid', '', $this->Lang('param_authorid'), false);
		$this->CreateParameter('pageid', '',$this->Lang('param_pageid'), false);
		$this->CreateParameter('modulename', '',$this->Lang('param_modulename'), false);
		$this->CreateParameter('number', '10', $this->Lang('param_number'), true);
		$this->CreateParameter('sortorder', 'ASC', $this->Lang('param_sortorder'), true);

		$this->SetParameterType('authorid', CLEAN_INT);
		$this->SetParameterType('pageid', CLEAN_INT);
		$this->SetParameterType('modulename', CLEAN_STRING);
		$this->SetParameterType('sortorder', CLEAN_STRING);
		$this->SetParameterType('number', CLEAN_INT);
		
		// Form params
		$this->SetParameterType('returnTo', CLEAN_NONE);
		$this->SetParameterType('submit', CLEAN_STRING);
		$this->SetParameterType('comment_data', CLEAN_NONE); // Will be clean if disable_html is set to true
	}

	function GetEventDescription($eventname) {
		return $this->Lang('event_info_' . $eventname);
	}
	
	function GetEventHelp($eventname) {
		return $this->Lang('event_help_' . $eventname);
	}

	function InstallPostMessage() {
		return $this->Lang('postinstall');
	}

	function UninstallPostMessage() {
		return $this->Lang('uninstalled',$this->GetName());
	}

	function UninstallPreMessage() {
		return $this->Lang('really_uninstall',$this->GetName());
	}
	
	/**
	 * Should always get this page url even when using internal pretty urls
	 */
	function selfURL() {
		$s = empty($_SERVER["HTTPS"]) ? '' : ($_SERVER["HTTPS"] == "on") ? "s" : "";
		$protocol = $this->strleft(strtolower($_SERVER["SERVER_PROTOCOL"]), "/").$s;
		$port = ($_SERVER["SERVER_PORT"] == "80") ? "" : (":".$_SERVER["SERVER_PORT"]);
 		$s = $protocol."://".$_SERVER['SERVER_NAME'].$port;

		return $s.$_SERVER['REQUEST_URI'];
	}

	function strleft($s1, $s2) {
		return substr($s1, 0, strpos($s1, $s2));
	}
	
	function nbComments($pageid, $modulename, $active = 1) {
		global $gCms;
    	$db =& $gCms->GetDb();
    	$sql = 'SELECT COUNT(*) as nbComments FROM ' . cms_db_prefix() . 'module_feusers_comments WHERE page_id = ? AND module_name = ?';
    	if($active == 1) // Count only active messages
    		$sql .= ' AND active = 1';
    	$res = $db->GetRow($sql, array($pageid,$modulename));
    	
    	return $res['nbComments'];
	}
	
	function nbCommentsAdmin() {
		global $gCms;
    	$db =& $gCms->GetDb();
    	$sql = 'SELECT COUNT(*) as nbComments FROM ' . cms_db_prefix() . 'module_feusers_comments';
    	$res = $db->GetRow($sql);    	
    	return $res['nbComments'];
	}
	
	function print_array($var) {
		echo '<pre>';
		print_r($var);
		echo '</pre>';
	}
} //end class
?>

<?php
/*======================================================================================
Module:		AComments
Title:		Main class
Version:	1.0
Descript.:	An addon module for CMS Made Simple to comments on pages or with modules.
Last Mod.:	18.10.2010
Author:		Andi Petzoldt
Email:		info@petzoldt.net
Notes:		
Licence:	This program is free software; you can redistribute it and/or modify
			it under the terms of the GNU General Public License as published by
			the Free Software Foundation; either version 2 of the License, or
			(at your option) any later version.
			However, as a special exception to the GPL, this software is distributed
			as an addon module to CMS Made Simple.  You may not use this software
			in any Non GPL version of CMS Made simple, or in any version of CMS
			Made Simple that does not indicate clearly and obviously in its admin
			section that the site was built with CMS Made Simple.
			Find more information about CMS Made Simple on its website:
			http://www.cmsmadesimple.org/
			This program is distributed in the hope that it will be useful,
			but WITHOUT ANY WARRANTY; without even the implied warranty of
			MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
			GNU General Public License for more details.
			You should have received a copy of the GNU General Public License
			along with this program; if not, write to the Free Software
			Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
			Or read it online: http://www.gnu.org/licenses/licenses.html#GPL
======================================================================================*/


// Check authorisation
if ( !isset($gCms) ) exit;

/**
 * Class AComments.
 *
 * This class provides basic functions for the CMSms addon "AComments"
 *
 */
class AComments extends CMSModule {

	// class vars
	var $acdev;

	/*
	* Constructor for PHP4
	*/
	function AComments() {
		$this->__construct();
	}
	
	/*
	* Constructor function
	*/
	function __construct() {
		$this->acdev = false;
		parent::CMSModule();
	}

	/**
	* Get the real name of this module.
	* @return string
	*/
	function GetName() {
		return 'AComments';
	}

	/**
	* Get a friendly (translated) name of this module.
	* @return string
	*/
	function GetFriendlyName() {
		return $this->Lang('friendlyname');
	}

	/**
	* Get the version of this module.
	* @return string
	*/
	function GetVersion() {
		return '1.1';
	}

	/**
	* Is this an module only for the CMSms backend?.
	* @return bloolean
	*/
	function IsAdminOnly() {
		return false;
	}

	/**
	* Gets a help text for this module.
	* @return string
	*/
	function GetHelp() {
		return $this->Lang('help');
	}

	/**
	* Gets the author of this module
	* @return string
	*/
	function GetAuthor() {
		return 'Andi Petzoldt';
	}

	/**
	* Gets the module authors email address.
	* @return string
	*/
	function GetAuthorEmail() {
		return 'andi@petzoldt.net';
	}

	/**
	* Get the changelog of this module
	* @return string
	*/
	function GetChangeLog() {
		return $this->Lang('changelog');
	}

	/**
	* Get the dependencies for this module.
	* @return array
	*/
	function GetDependencies() {
		#return array('CGExtensions'=>'1.9');
		return array();
	}

	/**
	* Is this an optional module for CMSms?
	* @return boolean
	*/
	function IsPluginModule() {
		return true;
	}

	/**
	* Has this module an admin
	* @return boolean
	*/
	function HasAdmin() {
		return true;
	}

	/**
	* Shall this module handle events?
	* @return boolean
	*/
	function HandlesEvents() {
		return false;
	}

	/**
	* Register Event
	*/
	function RegisterEvents(){
		#$this->AddEventHandler( 'Core', 'ContentPostRender', false );
		#$this->AddEventHandler( 'Core', 'ContentPreCompile', false );   --> doesn't work
	}

	/**
	* Run Event
	*/
	function DoEvent($originator, $eventname, &$params) {
		// Check event
		/* Sample from MultiDomains
		if($originator == 'Core' && $eventname == 'ContentPostRender'){
			// Check if module was already used
			if (!$this->mdused) {
				// Set the module used
				$this->mdused = true;
				// Change config URL
				$this->OptimizeConfig();
				// Log visit
				$log = $this->GetPreference('stats_use') ? $this->PrepareLogVisit() : array();
				// Look for redirect urls
				if ($this->GetPreference('oldurl_use')) $this->RedirectURL($log);
				// Look for redirect domains
				$this->RedirectDomain($log);
			}
		}
		*/
	}

	/**
	* In which main menu of the backend shall this module be?
	* @return string
	*/
	function GetAdminSection() {
		return 'content';
	}

	/**
	* Get an module description for the backend.
	* @return string
	*/
	function GetAdminDescription() {
		return $this->Lang('moddescription');
	}

	/**
	* Sets the permission for this module.
	* @return string
	*/
	function VisibleToAdminUser() {
		return $this->CheckPermission('Manage AComments');
	}

	/**
	* What is the minimum version of CMSms for this module?
	* @return string
	*/
	function MinimumCMSVersion() {
		return '1.7';
	}

	/**
	* Gets a message to display after installing the module
	* @return string
	*/
	function InstallPostMessage() {
		return $this->Lang('postinstall');
	}

	/**
	* Gets a message to disply after uninstalling this module.
	* @return string
	*/
	function UninstallPostMessage() {
		return $this->Lang('postuninstall');
	}

	/**
	* Gets a message before uninstalling this module
	* @return string
	*/
	function UninstallPreMessage() {
		return $this->Lang('preuninstall');
	}

	/**
	* Set parameters for this module.
	* @return string
	*/
	function SetParameters() {

		$this->RegisterModulePlugin();
		#$this->RegisterEvents();

		$this->RestrictUnknownParams();
		#$this->RegisterRoute('/[sS]itemap.xml\/(?P<mode>[0-9]+)$/');

		// Module params
		// $this->CreateParameter('paramName','defaultValue','HelpDescription');
		$this->CreateParameter('dateformat', '', $this->lang('helpdateformat'));
		$this->CreateParameter('localedateformat', '', $this->lang('helplocaledateformat'));
		$this->CreateParameter('number', '5', $this->lang('helpnumber'));
		$this->CreateParameter('modulename', '', $this->lang('modulename'));
		$this->CreateParameter('websitefield', '', $this->lang('websitefield'));
		$this->CreateParameter('emailfield', '', $this->lang('emailfield'));
		$this->CreateParameter('pageid', '0', $this->lang('pageid'));
		$this->CreateParameter('returnid', '0', $this->lang('returnid'));
		$this->CreateParameter('submitcomment', '1', $this->lang('submitcomment'));

		// Form params
		// $this->SetParameterType('paramName',CLEAN_TYPE);
		// CLEAN_TYPE could be CLEAN_NONE / CLEAN_STRING / CLEAN_INT / CLEAN_FLOAT / CLEAN_FILE
		$this->SetParameterType('pageid',CLEAN_INT);
		$this->SetParameterType('returnid',CLEAN_INT);
		$this->SetParameterType('modulename',CLEAN_STRING);
		$this->SetParameterType('number',CLEAN_INT);
		$this->SetParameterType('dateformat',CLEAN_STRING);
		$this->SetParameterType('localedateformat',CLEAN_STRING);
		$this->SetParameterType('email', CLEAN_STRING);
		$this->SetParameterType('website', CLEAN_STRING);
		$this->SetParameterType('emailfield', CLEAN_STRING);
		$this->SetParameterType('websitefield', CLEAN_STRING);
		$this->SetParameterType('author', CLEAN_STRING);
		$this->SetParameterType('authornotify', CLEAN_NONE);
		$this->SetParameterType('title', CLEAN_STRING);
		$this->SetParameterType('content', CLEAN_NONE);
		$this->SetParameterType('image', CLEAN_NONE);
		$this->SetParameterType('redirecturl',CLEAN_NONE);
		$this->SetParameterType('captcha_phrase',CLEAN_STRING);
		$this->SetParameterType('submitcomment',CLEAN_NONE);

	}

	/**
	* Checks whether an url is valid
	* @param string $url The url to check.
	* @return boolean
	*/
    function isValidURL($url) {
        return preg_match("/^[a-zA-Z]+[:\/\/]+[A-Za-z0-9\-_]+\\.+[A-Za-z0-9\.\/%&=\?\-_]+$/i", $url);
    }

	/**
	* Checks whether an email is valid
	* @param string $email The email to check.
	* @return boolean
	*/
    function isValidEmail($email) {
        return preg_match("/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*$/i", $email);
    }

	/**
	* Handles a trackback error
	* @param string $error The error message as string.
	*/
	function trackbackError ($error) {
		global $config, $db;
		header ('Content-type: text/xml');
		echo '<?xml version="1.0" encoding="utf-8"?>'."\n";
		echo '<response>'."\n";
		echo '<error>1< /error>'."\n";
		echo '<message>'.$error.'</message>'."\n";
		echo '</response>'."\n";
		if ($errorlog = fopen($config['root_path'].'/tmp/trackback_error.log', "a")) {
			fwrite($errorlog, date('d.m.Y H:i:s').' - '.$error."\n");
			fclose($errorlog);
		}
		exit;
	}

	/**
	* Redirects to a new URL and aborts the script.
	* @param string $url URL to redirect to ...
	*/
	function RedirectNow($url) {
		if (trim($url)) {
			header('Location: '.trim($url));
			exit();
		}
	}

}

// EOF
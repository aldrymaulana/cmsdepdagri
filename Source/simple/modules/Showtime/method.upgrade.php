<?php
#-------------------------------------------------------------------------
# Module: Showtime
# Moduledemo's URI: http://www.web2do.be/cms/showtime
# Description:Display images as animated slideshow. 
# Choose among several smooth transition effects. ShowTime requires Adobe Flash player 10 or higher.
#
# Version: 1.0
# author: Peter Orije
# Author URI: http://www.web2do.be
/*
    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
*/
# Module based on Wordpress plugin from: Paul Schroeder URI: http://youtag.lu/showtime-wp-plugin/
#-------------------------------------------------------------------------
if (!isset($gCms)) exit;

$current_version = $oldversion;
$db =& $this->GetDb();
$taboptarray = array( 'mysql' => 'TYPE=MyISAM' );
$dict = NewDataDictionary( $db );

switch($current_version)
{
  // we are now 1.0 and want to upgrade to latest
 case "1.0":
	$current_version = "1.0.1";
 case "1.0.1":
 	// Create Event Handle
	$this->CreateEvent( 'OnShowtimePreferenceChange' );	
	$this->AddEventHandler('Core', 'ContentPostRender', false);
	$current_version = "1.0.2";
 case "1.0.2":
	$current_version = "1.0.3";
 case "1.0.3":
 		$sqlarray = $dict->AddColumnSQL(cms_db_prefix()."module_showtime_name", "st_wmode C(20)");
		$dict->ExecuteSQLArray($sqlarray);
		$query = "UPDATE ".cms_db_prefix()."module_showtime_name SET st_wmode='window'";
		$db->Execute($query);
		$current_version = "1.0.5";
 case "1.0.5":
	//$this->SetPreference("animationtype", 'swfobject');
	$this->SetPreference("uploadmethode", 'swf');

	//add TinyMCE_mapi_pref_module_plugins
	$this->checkTinyMCE_mapi_pref();
	$this->checktoolbar();

	 	$sqlarray = $dict->AddColumnSQL(cms_db_prefix()."module_showtime_name", 
			"st_showcontrolssub I,
			st_commentpos C(10),
			st_navbut I1, 
			st_nav_bordercolor C(10),
			st_nav_bordersize I,
			st_nav_radius I,
			st_nav_bgcolor C(10),
			st_nav_bgactivecolor C(10),
			st_nav_textcolor C(10),
			st_nav_showtext I1,
			st_nav_size I,
			st_nav_pos C(20),
			st_nav_padding I,
			st_animationtype C(15)
			");
		$dict->ExecuteSQLArray($sqlarray);
		$query = "UPDATE ".cms_db_prefix()."module_showtime_name SET 
			st_showcontrolssub='1004',
			st_commentpos='top',
			st_navbut='1',
			st_nav_bordercolor='#CCCCCC',
			st_nav_bordersize='1',
			st_nav_radius='0',
			st_nav_bgcolor='#EEEEEE',
			st_nav_bgactivecolor='#FFFFFF',
			st_nav_textcolor='#333333',
			st_nav_showtext='1',
			st_nav_size='20',
			st_nav_pos='bottom_right',
			st_nav_padding='5',
			st_animationtype='swfobject'
			";
		$db->Execute($query);

 	$current_version = "2.0.0";
	
 case "2.0.0":
	 	$sqlarray = $dict->AddColumnSQL(cms_db_prefix()."module_showtime_name", "st_target C(15), st_link C(20)");
		$dict->ExecuteSQLArray($sqlarray);
		$query = "UPDATE ".cms_db_prefix()."module_showtime_name SET st_target='_self' st_link='internal page'";
		$db->Execute($query);

 	$current_version = "2.0.1";

 case "2.0.1":
	$this->SetPreference("watermark_file", 'watermark.png');
	$this->SetPreference("watermark_pos", 'bottom_right');
	$this->SetPreference("watermark_onoff", '0');
	$this->SetPreference("watermark_transparant", '70');
	$this->SetPreference("watermark_padding_x", '10');
	$this->SetPreference("watermark_padding_y", '10');

 	$current_version = "2.0.2";

case "2.0.2":
	$this->SetPreference("load_jQuery_scripts",'1');
	$current_version = "2.0.3";
case "2.0.3":
	$this->SetPreference("load_TinyMCE_plugin",'0');
	$current_version = "2.0.4";
}

// put mention into the admin log
$this->Audit( 0, 
	      $this->Lang('friendlyname'), 
	      $this->Lang('upgraded', $this->GetVersion()));

//note: module api handles sending generic event of module upgraded here
?>
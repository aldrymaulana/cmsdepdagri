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
$db =& $gCms->GetDb();
$taboptarray = array( 'mysql' => 'TYPE=MyISAM' );

$dict = NewDataDictionary( $db );

// table schema description
$flds = "
	show_id I KEY,
	show_name C(80),
	st_animationtype C(15),
	st_height I,
	st_width I,
	st_rotatetime F,
	st_transitiontime F,
	st_transition C(30),
	st_easeFunc C(30),
	st_ease C(30),
	st_autoplay I1,
	st_showcontrols I1,
	st_showcontrolssub I,
	st_textbgcolor C(10),
	st_showtext I1,
	st_showcomment I1,
	st_showalt I1,
	st_textcolor C(10),
	st_textsize I,
	st_titlesize I,
	st_fonttype C(50),
	st_bgcolor C(10),
	st_scale C(30),
	st_shuffle I1,
	st_wmode C(20),
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
	st_target C(15), 
	st_link C(20)
	";
$sqlarray = $dict->CreateTableSQL(cms_db_prefix()."module_showtime_name",
		$flds, $taboptarray);
$dict->ExecuteSQLArray($sqlarray);

// create a sequence
$db->CreateSequence(cms_db_prefix()."module_showtime_name_seq");


// table schema description
   		$flds = "picture_id I KEY,
			active I1 DEFAULT 1,
			show_id I,
			picture_name C(80),
			picture_number I,
			picture_url C(255),
			thumbnail_path C(255),
			picture_path C(255),
			comment X
			";
		
$sqlarray = $dict->CreateTableSQL( cms_db_prefix()."module_showtime",
				   $flds, 
				   $taboptarray);
$dict->ExecuteSQLArray($sqlarray);

// create a sequence
$db->CreateSequence(cms_db_prefix()."module_showtime_seq");

// create Prefenences
$this->SetPreference("uploadmethode", 'swf');
$this->SetPreference("watermark_onoff", '0');
$this->SetPreference("watermark_file", 'watermark.png');
$this->SetPreference("watermark_pos", 'bottom_right');
$this->SetPreference("watermark_transparant", '70');
$this->SetPreference("watermark_padding_x", '10');
$this->SetPreference("watermark_padding_y", '10');
$this->SetPreference("load_jQuery_scripts",'1');
	
// create a permission
$this->CreatePermission('Use Showtime', 'Use Showtime');
$this->CreatePermission('Use Showtime Prefs','Use Showtime Prefs');


// register an event
$this->CreateEvent( 'OnShowtimePreferenceChange' );

$this->AddEventHandler('Core', 'ContentPostRender', false);

// put mention into the admin log
$this->Audit( 0, $this->Lang('friendlyname'), $this->Lang('installed', $this->GetVersion()) );
		        
?>
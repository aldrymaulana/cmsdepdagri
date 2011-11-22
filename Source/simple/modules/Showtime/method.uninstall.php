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

// remove the database table
$dict = NewDataDictionary( $db );
$sqlarray = $dict->DropTableSQL( cms_db_prefix()."module_showtime" );
$dict->ExecuteSQLArray($sqlarray);
$sqlarray = $dict->DropTableSQL( cms_db_prefix()."module_showtime_name" );
$dict->ExecuteSQLArray($sqlarray);

// remove the sequence
$db->DropSequence( cms_db_prefix()."module_showtime_seq" );
$db->DropSequence( cms_db_prefix()."module_showtime_name_seq" );


// remove preferences
$this->RemovePreference('uploadmethode');
$this->RemovePreference('watermark_onoff');
$this->RemovePreference('watermark_file');
$this->RemovePreference('watermark_pos');
$this->RemovePreference('watermark_transparant');
$this->RemovePreference('watermark_padding_x');
$this->RemovePreference('watermark_padding_y');
$this->RemovePreference('load_jQuery_scripts');


// remove the permissions
$this->RemovePermission('Use Showtime');
$this->RemovePermission('Use Showtime Prefs');


// remove the event
$this->RemoveEvent( 'OnShowtimePreferenceChange' );
$this->RemoveEventHandler( 'Core', 'ContentPostRender' );

// put mention into the admin log
$this->Audit( 0, $this->Lang('friendlyname'), $this->Lang('uninstalled'));


?>
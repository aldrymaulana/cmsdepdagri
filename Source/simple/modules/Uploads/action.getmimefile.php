<?php // -*- mode:php; c-file-style:linux; tab-width:2; indent-tabs-mode:t; c-basic-offset: 2; -*-
#-------------------------------------------------------------------------
# Module: Uploads -= allow users to upload stuff, a pseudo file manager" module
# Version: 1.3.0-beta1, calguy1000
#
#-------------------------------------------------------------------------
# CMS - CMS Made Simple is (c) 2005 by Ted Kulp (wishy@cmsmadesimple.org)
# This project's homepage is: http://www.cmsmadesimple.org
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
# Or read it online: http:	//www.gnu.org/licenses/licenses.html#GPL
#
#-------------------------------------------------------------------------
if( !isset($gCms) ) exit;
if( !$this->CheckPermission('Manage Uploads') && !$this->CheckPermission('Upload Files to Uploads'))
  {
    return;
  }

//
// initialization
//
$upload_id = '';

//
// setup
//
if( isset($params['upload_id']) )
  {
    $upload_id = (int)$params['upload_id'];
  }

if( $upload_id <= 0 )
  {
    die('error ... no upload');
  }

$query = 'SELECT * FROM '.cms_db_prefix().'module_uploads WHERE upload_id = ?';
$row = $db->GetRow($query,array($upload_id));
if( !is_array($row) )
  {
    die('error ... could not find upload');
  }

$catpath = $this->getCategoryPathFromID($row['upload_category_id']);
$fn = $this->_categoryPath($catpath.DIRECTORY_SEPARATOR.$row['upload_name']);
if( !file_exists($fn) )
  {
    die('error ... file not found '.$fn);
  }

$mimetype = cge_utils::get_mime_type($fn);
if( !$mimetype ) $mimetype = 'application/octet-stream';
if(ini_get('zlib.output_compression'))
  {
    ini_set('zlib.output_compression', 'Off');
  }

$bn = basename($fn);
set_time_limit(999);
$chunksize = intval($this->GetPreference('download_chunksize',8)) * 1024;
$handlers = ob_list_handlers(); 
for ($cnt = 0; $cnt < sizeof($handlers); $cnt++) { ob_end_clean(); }

header('Content-Type: '.$mimetype);
header("Content-Disposition: inline; filename=\"$bn\"" );

$handle=fopen($fn,'rb');
$contents = '';
do {
  $data = fread($handle,$chunksize);
  if( strlen($data) == 0 ) break;
  print($data); 
 } while(true);
fclose($handle);
exit();

#
# EOF
#
?>
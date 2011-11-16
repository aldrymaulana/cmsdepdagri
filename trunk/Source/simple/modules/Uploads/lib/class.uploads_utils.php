<?php
#BEGIN_LICENSE
#-------------------------------------------------------------------------
# Module: FrontEndUsers (c) 2008 by Robert Campbell 
#         (calguy1000@cmsmadesimple.org)
#  An addon module for CMS Made Simple to allow management of frontend
#  users, and their login process within a CMS Made Simple powered 
#  website.
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
# However, as a special exception to the GPL, this software is distributed
# as an addon module to CMS Made Simple.  You may not use this software
# in any Non GPL version of CMS Made simple, or in any version of CMS
# Made simple that does not indicate clearly and obviously in its admin 
# section that the site was built with CMS Made simple.
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
#END_LICENSE

class uploads_utils
{
  private static $_upload_data_cache;

  // this is a static class... can't be constructed.
  protected function __construct() {}

  public static function get_upload_details($upload_id)
  {
    $upload_id = (int)$upload_id;
    if( $upload_id < 1 )
      {
	throw new UploadsException('uploads_utils::get_upload_details - Invalid upload id: '.$upload_id);
      }

    if( !is_array(self::$_upload_data_cache) || !isset(self::$_upload_data_cache[$upload_id]) )
      {
	// not in cache.
	$db = cmsms()->GetDb();
	$query = 'SELECT * FROM '.cms_db_prefix().'module_uploads WHERE upload_id = ?';
	$row = $db->GetRow($query,array($upload_id));
	if( !$row )
	  {
	    throw new UploadsException('uploads_utils::get_upload_details - Upload '.$upload_id).' not found';
	  }

	if( !is_array(self::$_upload_data_cache) ) self::$_upload_data_cache = array();
	self::$_upload_data_cache[$row['upload_id']] = $row;
      }

    return self::$_upload_data_cache[$upload_id];
  }


  public static function create_timelimited_entry($upload_id,$email,$hours = null,$downloads = null)
  {
    $db = cmsms()->GetDb();
    $now = $db->DbTimestamp(time());
    $upload_id = (int)$upload_id;
    $hours = (int)$hours;
    $downloads = (int)$downloads;

    // get the upload information
    $upload = self::get_upload_details($upload_id);

    $expires = null;
    if( $hours )
      {
	$hours = (int)$hours;
	$expires = $db->DbTimeStamp(strtotime('+'.$hours.' hours'));
      }
    $urlkey = substr(str_shuffle(md5(time().$upload_id.$upload['upload_name'].$now.$email.$expires)),0,16);

    $dbr = '';
    if( $hours > 0 )
      {
	$query = 'INSERT INTO '.cms_db_prefix()."module_uploads_timelimit 
                      (upload_id,email,url_key,created,expires,max_downloads)
                      VALUES (?,?,?,$now,$expires,?)";
	$dbr = $db->Execute($query,array($upload_id,$email,$urlkey,$downloads));
      }
    else
      {
	$query = 'INSERT INTO '.cms_db_prefix()."module_uploads_timelimit 
                      (upload_id,email,url_key,created,max_downloads)
                      VALUES (?,?,?,$now,?)";
	$dbr = $db->Execute($query,array($upload_id,$email,$urlkey,$downloads));
      }
    if( !$dbr )
      {
	throw new UploadsException('Problem inserting time limited info into database');
      }

    return $urlkey;
  }


  public static function get_timelimited_url($url_key,$checkvalid = TRUE)
  {
    if( !$url_key )
      {
	throw new UploadsException('uploads_utils::get_timelimited_url - Empty url key specified');
      }
    $db = cmsms()->GetDb();
   
    if( $checkvalid )
      {
	$query = 'SELECT * FROM '.cms_db_prefix().'module_uploads_timelimit
              WHERE url_key = ? AND ((expires > NOW()) OR (expires IS NULL))';
	$row = $db->GetRow($query,array($url_key));
	if( !$row )
	  {
	    // invalid, or expired url key
	    return;
	  }
	$file_id = $row['upload_id'];
	
	$query = 'SELECT count(file_id) FROM '.cms_db_prefix().'module_uploads_downloads
               WHERE file_id = ? AND url_key = ?';
	$count = $db->GetOne($query,array($file_id,$url_key));
	if( $row['max_downloads'] > 0 && $count >= $row['max_downloads'] )
	  {
	    // url key has reached maximum number of downloads.
	    return;
	  }
      }

    $dfltpage = cmsms()->GetContentOperations()->GetDefaultContent();
    $uploads = cms_utils::get_module('Uploads');
    $url = $uploads->CreateURL($id,'getfile',$dfltpage,
			       array('url_key'=>$url_key),
			       false,
			       $uploads->_getTimeLimitedURL($url_key));

    return $url;
  }


  public static function get_file_url($upload_id,$upload_name = '')
  {
    $upload_id = (int)$upload_id;
    if( $upload_id < 1 )
      {
	throw new UploadsException('uploads_utils::get_file_url - Invalid upload Id specified');
      }

    if( !$upload_name )
      {
	$data = self::get_upload_details($upload_id);
	$upload_name = $data['upload_name'];
      }
    $upload_name = trim($upload_name);

    $dfltpage = cmsms()->GetContentOperations()->GetDefaultContent();
    $uploads = cms_utils::get_module('Uploads');
    $url = $uploads->CreateURL($id,'getfile',$dfltpage,
			       array('upload_id'=>$upload_id),
			       false,
			       $uploads->_getFileURL($data['upload_id'],$data['upload_name']));
  }
} // end of class
#
# EOF
#
?>
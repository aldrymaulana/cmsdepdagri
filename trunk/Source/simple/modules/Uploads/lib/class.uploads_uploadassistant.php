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

class uploads_uploadassistant
{
  private $_category = null;
  private $_data = array();
  private $_destfile = null;


  public function __construct($src,$category_id,$destname = '',$key = '')
  {
    $this->set_auto();
    $this->set_src($src);
    $this->set_category($category_id);
    $this->set_destname($destname);
    $this->set_key($key);
  }


  public function set_src($src)
  {
    $mod = cms_utils::get_module('Uploads');
    if( !$mod->_isValidFilename($src) )
      {
	throw new UploadsException('Attempt to insert an invalid file');
      }
    if( !file_exists($src) )
      {
	throw new UploadsException('Attempt to insert a non existant file');
      }
    $config = cmsms()->GetConfig();
    if( filesize($src) > $config['max_upload_size'] )
      {
	throw new UploadsException('Attempt to insert a file that is too large');
      }
    $this->_data['src'] = $src;
  }


  public function set_auto()
  {
    $uploads = cms_utils::get_module('Uploads');
    $this->do_watermark($uploads->GetPreference('allowwatermark'));
  }


  public function set_category($category)
  {
    $db = cmsms()->GetDb();
    $dbr = '';
    if( is_numeric($category) )
      {
	$query = 'SELECT * FROM '.cms_db_prefix().'module_uploads_categories WHERE upload_category_id = ?';
	$dbr = $db->GetRow($query,array($category));
      }
    else
      {
	$query = 'SELECT * FROM '.cms_db_prefix().'module_uploads_categories WHERE upload_category_name = ?';
	$dbr = $db->GetRow($query,array($category));
      }

    if( !$dbr )
      {
	throw new UploadsException('Invalid category '.$category);
      }
    $this->_category = $dbr;
  }


  public function use_prefix($flag = TRUE)
  {
    unset($this->_data['prefix']);
    if( $flag )
      {
	$this->_data['prefix'] = dechex(time()).'_';
      }
  }


  public function allow_overwrite($flag = TRUE)
  {
    unset($this->_data['allow_overwrite']);
    if( $flag ) $this->_data['allow_overwrite'] = TRUE;
  }


  public function set_summary($text)
  {
    unset($this->_data['summary']);
    if( $text ) $this->_data['summary'] = trim($text);
  }


  public function set_desc($text)
  {
    unset($this->_data['description']);
    if( $text ) $this->_data['description'] = trim($text);
  }


  public function set_author($author)
  {
    unset($this->_data['author']);
    if( $author ) $this->_data['author'] = trim($text);
  }


  public function set_key($key)
  {
    unset($this->_data['key']);
    if( $key ) $this->_data['key'] = trim($key);
  }


  public function set_destname($destname)
  {
    unset($this->_data['destname']);
    if( $destname )
      {
	$destname = basename($destname);
	$uploads = cms_utils::get_module('Uploads');
	if( !$uploads->_isValidFilename($destname) )
	  throw new UploadsException('Cannot set destination name to an invalid name');
	$this->_data['destname'] = basename($destname);
      }
  }


  public function do_thumbnail($flag = TRUE)
  {
    unset($this->_data['thumbnail']);
    unset($this->_data['do_thumbnail']);
    if( $flag ) $this->_data['do_thumbnail'] = TRUE;
  }


  public function set_thubnail($thumbnail)
  {
    unset($this->_data['thumbnail']);
    unset($this->_data['do_thumbnail']);
    if( !file_exists($thumbnail) )
      throw new UploadsException('Thumbnail File does not exist: '.$thumbnail);

    $uploads = cms_utils::get_module('Uploads');
    if( !$uploads->_isValidFilename($thumbnail) )
      throw new UploadsException('Thumbnail file is invalid: '.$thumbnail);

    if( $thumbnail ) $this->_data['thumbnail'] = $thumbnail;
  }


  public function do_watermark($flag = TRUE)
  {
    unset($this->_data['do_watermark']);
    if( $flag ) $this->_data['do_watermark'] = TRUE;
  }


  public function set_field($key,$value)
  {
    if( !$key ) return;
    if( !is_array($this->_data['fields']) )
      {
	$this->_data['fields'] = array();
      }
    if( is_null($value) )
      {
	unset($this->_data['fields'][$key]);
      }
    else
      {
	$this->_data['fields'][$key] = value;
      }
  }


  public function erase_field($key)
  {
    if( !$key ) return;
    if( !is_array($this->_data['fields']) ) return;
    unset($this->_data['fields'][$key]);
  }


  public function get_destfile()
  {
    if( $this->_destfile ) return $this->_destfile;

    if( !$this->_category ) throw new UploadsException('Cannot Get a destination file name without a proper category');
    $uploads = cms_utils::get_module('Uploads');
    $dir = $uploads->_categoryPath($this->_category['upload_category_path']);

    $destname = basename($this->_data['src']);
    if( isset($this->_data['destname']) )
      {
	$destname = $this->_data['destname'];
      }
    if( isset($this->_data['prefix']) )
      {
	$destname = $this->_data['prefix'].$destname;
      }

    $destname = 
      preg_replace('/[^a-zA-Z0-9\.\$\%\'\`\-\@\{\}\~\!\#\(\)\&\_\^]/', '',
		   str_replace (array (' ', '%20'), array ('_', '_'), $destname));
    
    $this->_destfile = cms_join_path($dir,$destname);
    return $this->_destfile;
  }


  public function handle_file()
  {
    $uploads = cms_utils::get_module('Uploads');

    // validate the data.
    if( !isset($this->_data['src']) )
      {
	throw UploadsException('Invalid attributes... no source file set');
      }
    if( !$this->_category )
      {
	throw UploadsException('Invalid/Null upload category speciried');
      }
    if( !isset($this->_data['summary']) )
      {
	$sumamry = basename($this->_data['src']);
	$this->set_summary($summary);
      }
    if( !isset($this->_data['description']) )
      {
	$this->_data['description'] = '';
      }
    if( !isset($this->_data['key']) )
      {
	$this->_data['key'] = '';
      }
    if( !isset($this->_data['author']) )
      {
	// author hasn't been previously set.
	// try to find something we can use.
	global $CMS_ADMIN_PAGE;
	$author = 'Anonymous';
	if( isset($CMS_ADMIN_PAGE) )
	  {
	    // it's an admin action... get the currently logged in username
	    $uid = get_userid(FALSE);
	    if( $uid )
	      {
		$userops = cmsms()->GetUserOperations();
		$user = $userops->LoadUserById($uid);
		if( $user )
		  {
		    $author = $user->username;
		  }
	      }
	  }
	else
	  {
	    $feu = cms_utils::get_module('FrontEndUsers');
	    if( $feu )
	      {
		$tmp = $feu->LoggedInName();
		if( $tmp ) $author = $tmp;
	      }
	  }

	$this->_data['author'] = $author;
      }

    $db = cmsms()->GetDb();
    $destfile = $this->get_destfile();
    $existing_fileid = null;
    if( file_exists($destfile) && !isset($this->_data['allow_overwrite']) )
      {
	// not allowing overwrite
	throw new UploadsException('Destination File Exists: '.$destfile);
      }
    else if( file_exists($destfile) )
      {
	// allowing overwrite... try to find a file id.
	$query = 'SELECT upload_id FROM '.cms_db_prefix().'module_uploads 
                  WHERE upload_name = ? AND upload_category_id = ?';
	$existing_fileid = $db->GetOne($query,basename($destname),$this->_category['uploads_category_id']);
      }

    // see if we're gonna watermark
    $_created = array();
    $can_unlink = FALSE;
    $srcfile = $this->_data['src'];
    if( isset($this->_data['do_watermark']) )
      {
	$dn = dirname($destfile);
	$fn = basename($destfile);
	$wmname = cms_join_path($dn,'wm_',$fn);
	$wmobj = cge_setup::get_watermarker();
	$res = $wmobj->create_watermarked_image($srcfile,$wmname);

	if( $res !== FALSE )
	  {
	    $can_unlink = TRUE;
	    $srcfile = $wmname;
	    $_created[] = $srcfile;
	  }
      }

    // see if we're gonna thumbnail.
    $thumb_name = '';
    if( isset($this->_data['do_thumbnail']) )
      {
	$thumb_name = basename($destname);
	$dn = dirname($destname);
	$thumbfile = cms_join_path($dn,'thumb_'.$thumb_name);
	
	$uploads->imageTransform($srcfile,$thumbfile);
	$_created[] = $thumbfile;
      }
    else if( isset($this->_data['thumbnail']) )
      {
	$thumb_name = basename($destname);
	$dn = dirname($destname);
	$thumbfile = cms_join_path($dn,'thumb_'.$thumb_name);
	
	@copy($this->_data['thumbnail'],$thumbfile);
	$_created[] = $thumbfile;
      }
    

    // do the copy.
    @unlink($destfile);
    @copy($srcfile,$destfile);
    $_created[] = $destfile;

    // do the insert or update
    $dbr = '';
    if( !$existing_fileid )
      {
	$existing_fileid = $db->GenId(cms_db_prefix().'module_uploads_seq');

	// insert
	$query = 'INSERT INTO '.cms_db_prefix().'module_uploads
                  (upload_id,upload_category_id,upload_name,upload_author,
                   upload_summary,upload_description,upload_ip,upload_size,
                   upload_date, upload_key, upload_thumbnail)
                  VALUES (?,?,?,?,?,?,?,?,NOW(),?,?)';
	$dbr = $db->Execute($query,
			    array($existing_fileid,
				  $this->_category['upload_category_id'],
				  basename($destfile),
				  $this->_data['author'],
				  $this->_data['summary'],
				  $this->_data['desciption'],
				  cge_utils::get_real_ip(),
				  filesize($this->_data['src']),
				  $this->_data['key'],
				  $thumb_name));
      }
    else
      {
	// update... delete custom fields.
	$query = 'DELETE FROM '.cms_db_prefix().'module_uploads_fieldvals WHERE upload_id = ?';
	$dbr = $db->Execute($query,array($existing_fileid));

	$query = 'UPDATE '.cms_db_prefix().'module_uploads
                  SET upload_name = ?, upload_author = ?,
                      upload_summary = ?, upload_description = ?,
                      upload_ip = ?, upload_size = ?, upload_date = NOW(),
                      upload_key = ?, upload_thumbnail = ?
                 WHERE upload_id = ?';
	$dbr = $db->Execute($query,
			    array(basename($destfile),
				  $this->_data['author'],
				  $this->_data['summary'],
				  $this->_data['desc'],
				  cge_array::get_real_ip(),
				  filesize($destfile),
				  $this->_data['key'],
				  $thumb_name,
				  $existing_fileid));
      }

    if( !$dbr )
      {
	foreach( $_created as $one ) @unlink($one);
	throw new UploadsException('Database operation failed: '.$db->sql.' -- '.$db->ErrorMsg());
      }

    $fields = '';
    {
      $query = 'SELECT id,name FROM '.cms_db_prefix().'module_uploads_fielddefs ORDER BY iorder';
      $tmp = $db->GetArray($query);
      if( !is_array($tmp) )
      $fields = cge_array::to_hash($tmp,'name');
    }

    if( is_array($fields) && isset($this->_data['fields']) )
      {
	// do the custom fields.
	$iquery = 'INSERT INTO '.cms_db_prefix().'module_uploads_fieldvals 
                 (upload_id, fld_id, value) VALUES (?,?,?)';
	foreach( $this->_data['fields'] as $key => $value )
	  {
	    if( !isset($fields[$key]) ) continue;
	    $field_id = $fields[$key]['id'];
	    $db->Execute($iquery,array($existing_fileid,$ield_id,$value));
	  }
      }

    // add something to the audit log.
    audit($existing_fileid,$uploads->GetName(),'Uploaded file '.basename($destfile));

    // and we're done...
    return $existing_fileid;
  }

} // end of class

#
# EOF
#
?>
<?php // -*- mode:php; c-file-style:linux; tab-width:2; indent-tabs-mode:t; c-basic-offset: 2; -*-
#-------------------------------------------------------------------------
# Module: Uploads -= allow users to upload stuff, a pseudo file manager" module
# (c) 2011 - Robert Campbell (calguy1000@cmsmadesimple.org)
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

class uploads_smarty
{
  protected function __construct() {}

  public static function init()
  {
    $smarty = cmsms()->GetSmarty();
    $smarty->register_function('uploads_create_tl_file',array('uploads_smarty','create_tl_file'));
  }

  /**
   * A plugin to copy a file into the uploads module
   * and generate a timelimited URL to it
   *
   * @returns url or error message
   * @param src = (string,required) absolute server file specification 
   * @param category = (required) uploads category name or integer id
   * @param prefix = (boolean,optional) wether filenames should be prefixed - default false
   * @param email  = (string,optional) Tie the download url to the email address specified.
   * @param hours  = (int,optional)  number of hours the link will be valid for
   * @param downloads = (int,optional) max number of downloads allowed for this url
   */
  public static function create_tl_file($params,&$smarty)
  {
    $mod = cms_utils::get_module('Uploads');
    // set default values for variables
    $src = '';
    $email = '';
    $category = '';
    $prefix = TRUE;
    $hours = $mod->GetPreference('timelimited_hours',0);
    $downloads = $mod->GetPreference('timelimited_downloads',0);

    // get params
    if( isset($params['src']) )
      {
	$src = trim($params['src']);   
      }
    if( isset($params['email']) )
      {
	$email = trim($params['email']);   
      }
    if( isset($params['category']) )
      {
	$category = trim($params['category']);
      }
    if( isset($params['prefix']) )
      {
	$prefix = (int)$params['prefix'];   
      }
    if( isset($params['hours']) )
      {
	$hours = (int)$params['hours'];   
      }
    if( isset($params['downloads']) )
      {
	$downloads = (int)$params['downloads'];   
      }

    // initial checks
    if( !$src )
      {
	echo 'ERROR in create_tl_file:  src parameter not specified';
	return;
      }
    if( !$category )
      {
	echo 'ERROR in create_tl_file:  no category specified';
	return;
      }
    $uploads = cms_utils::get_module('Uploads');
    if( !is_object($uploads) )
      {
	echo 'ERROR in create_tl_file:  Uploads module not found';
	return;
      }
    if( !file_exists($src) )
      {
	echo 'ERROR in create_tl_file:  file specified in src param not found';
	return;
      }
    if( $hours < 1 || $downloads < 1 )
      {
	echo 'ERROR in create_tl_file:  Invalid hours or download limit';
      }

    try
      {
	// move the file into the uploads module
	$assistant = new uploads_uploadassistant($src,$category);   
	$assistant->use_prefix($prefix);
	$upload_id = $assistant->handle_file();

	// need a time limited URL
	$urlkey = uploads_utils::create_timelimited_entry($upload_id,$email,$hours,$downloads);
	$url = uploads_utils::get_timelimited_url($urlkey,FALSE);

	// and we're done.
	if( isset($params['assign']) && $url )
	  {
	    $smarty->assign(trim($params['assign']),$url);      
	    return;
	  }
	return $url;    
      }
    catch( Exception $e )
      {
	echo $e->GetMessage();
      }
    // done.
  }

} // end of class

#
# EOF
#
?>
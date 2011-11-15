<?php
global $config;
if (!isset($gCms)) exit;
if(! $this->CheckPermission( 'Use Album' ) ) exit;

$currentpic='';

$albumid = (isset($params['albumid']) ? $params['albumid'] : '');
if ($albumid == '')
	$this->Redirect($id, 'defaultadmin', $returnid);

if (isset($params['cancel'])) 
	$this->Redirect($id, 'editalbum', $returnid,array('albumid'=>$albumid));


if (isset($params['filename']))
	$images = array($params['filename']);
else
{
	$images = array();
	foreach ($params as $key=>$value)
	{
		if (substr($key,0,4)=='img_')
			$images[] = $value;
	}
}

if (isset($params['submit']) || isset($params['filename'])) 
{	
	$dbpictures = $this->GetPictures($albumid);
	$oldimages = array();
	foreach ($dbpictures as $dbpicture)
			$oldimages[] = substr($dbpicture->picture,strlen($config['image_uploads_url']));
	$picturenumber = count($oldimages);
	
	sort($images);
	foreach($images as $imagename)
	{
		$imagepath = &$imagename;
		if (in_array($imagepath,$oldimages)) continue;
		$the_path = dirname($imagepath);
		$pos = strpos ($the_path, '/', strlen($the_path) - 1);
		if ($pos === false)
		{
			$thumbpath = $the_path.'/thumb_'.basename($imagepath);
		}
		if ($pos !== false)
		{
			$thumbpath = $the_path.'thumb_'.basename($imagepath);
		}

		if (TRUE == is_file($config['image_uploads_path'].$thumbpath))
		{
			list($width, $height, $type, $attr) = getimagesize($config['image_uploads_path'].$thumbpath);
			$thumbnailwidth = $width;
			$thumbnailheight = $height;
		}
		else
		{
			$thumbpath = '';
			$thumbnailwidth = 96;
			$thumbnailheight = '';
		}

		$picturenumber++;
		// Remove any back slashes
		$thumbpath =  str_replace('\\', '', $thumbpath); // A quick hacky fix for XAMPP on Windows
		$pictureid = $db->GenID(cms_db_prefix()."module_album_pictures_seq");
		$query = 'INSERT INTO '.cms_db_prefix().'module_album_pictures (picture_id, picture_name, picture_album_id, thumbnail_path, picture_path,  picture_number, thumbnail_width, thumbnail_height) VALUES (?,?,?,?,?,?,?,?)';
		$db->Execute($query, array($pictureid, basename($imagename), $albumid, $thumbpath, $imagepath, $picturenumber, $thumbnailwidth, $thumbnailheight));
		
		//Update search index
		$module =& $this->GetModuleInstance('Search');
		if ($module != FALSE)
		  {
		    $module->AddWords($this->GetName(), $pictureid, 'album_picture', $imagename);
		  }

		if ($picturenumber==1)
		{
			$query = 'UPDATE '.cms_db_prefix().'module_album_albums SET thumbnail_path=? WHERE (album_id = ? AND thumbnail_path IS NULL)';
			$db->Execute($query, array($thumbpath,$albumid));
		}
	}
	$this->Redirect($id, 'editalbum', $returnid,array('albumid'=>$albumid));
}
	
include dirname(__FILE__).'/lib.browsepictures.php';

?>
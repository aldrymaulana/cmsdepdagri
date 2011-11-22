<?php
// Get the session Id passed from SWFUpload. We have to do this to work-around the Flash Player Cookie Bug
if (isset($_POST['PHPSESSID'])){
	session_id($_POST['PHPSESSID']);
}

session_start();

$path = dirname(dirname(dirname(__FILE__)));
require_once($path . DIRECTORY_SEPARATOR . 'include.php');
$gCms = cmsms();
$db =& $gCms->GetDb();


$sql="SELECT sitepref_value FROM ".cms_db_prefix()."siteprefs WHERE sitepref_name='Showtime_mapi_pref_watermark_onoff'";
$result = $db->Execute($sql);
while ($row=$result->FetchRow()) {
   	$watermark_onoff = $row['sitepref_value'];
}

$sql="SELECT sitepref_value FROM ".cms_db_prefix()."siteprefs WHERE sitepref_name='Showtime_mapi_pref_watermark_file'";
$result = $db->Execute($sql);
while ($row=$result->FetchRow()) {
   	$watermark_file = $row['sitepref_value'];
}
$sql="SELECT sitepref_value FROM ".cms_db_prefix()."siteprefs WHERE sitepref_name='Showtime_mapi_pref_watermark_pos'";
$result = $db->Execute($sql);
while ($row=$result->FetchRow()) {
   	$watermark_pos = $row['sitepref_value'];
}
$sql="SELECT sitepref_value FROM ".cms_db_prefix()."siteprefs WHERE sitepref_name='Showtime_mapi_pref_watermark_transparant'";
$result = $db->Execute($sql);
while ($row=$result->FetchRow()) {
   	$watermark_transparant = $row['sitepref_value'];
}
$sql="SELECT sitepref_value FROM ".cms_db_prefix()."siteprefs WHERE sitepref_name='Showtime_mapi_pref_watermark_padding_x'";
$result = $db->Execute($sql);
while ($row=$result->FetchRow()) {
   	$watermark_padding_x = $row['sitepref_value'];
}
$sql="SELECT sitepref_value FROM ".cms_db_prefix()."siteprefs WHERE sitepref_name='Showtime_mapi_pref_watermark_padding_y'";
$result = $db->Execute($sql);
while ($row=$result->FetchRow()) {
   	$watermark_padding_y = $row['sitepref_value'];
}



ini_set("html_errors", "0");

// Check the upload
if (!isset($_FILES['Filedata']) || !is_uploaded_file($_FILES['Filedata']['tmp_name']) || $_FILES['Filedata']['error'] != 0){
	echo 'ERROR:invalid upload';
	exit(0);
}

// Check the uploaddirectory
if ( !isset($_SESSION['uploaddir']) || !is_dir($_SESSION['rootpath'] . $_SESSION['uploaddir']) ){
	echo 'ERROR:invalid uploaddirectory';
	exit(0);
}

function _CreateThumbnail($thumbname, $image, $thumbwidth, $thumbheight){
	$imgdata = @getimagesize($image);
	if ( $imgdata === FALSE ) return FALSE;
	$imgratio = $imgdata[0] / $imgdata[1];  // width/height
	$thumbratio = $thumbwidth / $thumbheight;
	$src_x = 0;
	$src_y = 0;
	$src_w = $imgdata[0];
	$src_h = $imgdata[1];
	if( $imgratio > $thumbratio )
	{
		$newwidth = $thumbwidth;
		$newheight = ceil($thumbwidth / $imgratio);
	}
	else
	{
		$newheight = $thumbheight;
		$newwidth = ceil($thumbheight * $imgratio);
	}
	$newimage = imagecreatetruecolor($newwidth,$newheight);
	switch($imgdata['mime']) {
		case "image/pjpeg":
		case "image/jpeg":
		case "image/jpg":
			$source = imagecreatefromjpeg($image);
			break;
		case "image/gif":
			$source = imagecreatefromgif($image);
			break;
		case "image/png":
		case "image/x-png":
			$source = imagecreatefrompng($image);
			imagealphablending($newimage, false);
			$trnprt_color = imagecolorallocatealpha($newimage, 0, 0, 0, 127);
			imagefill($newimage, 0, 0, $trnprt_color);
			imagesavealpha($newimage, true);
			break;
	}
	imagecopyresampled($newimage,$source,0,0,$src_x,$src_y,$newwidth,$newheight,$src_w,$src_h);
	switch($imgdata['mime']) {
		case "image/gif":
				imagegif($newimage,$thumbname);
			break;
		case "image/pjpeg":
		case "image/jpeg":
		case "image/jpg":
				imagejpeg($newimage,$thumbname,80);
			break;
		case "image/png":
		case "image/x-png":
			imagepng($newimage,$thumbname);
			break;
		}
	imagedestroy($newimage);
	return TRUE;
}

if (!isset($_SESSION['file_info'])){
	$_SESSION['file_info'] = array();
}

// cleanup the filename, copied some code from munge_string_to_url() and modified to exclude the extension
$pos = strrpos($_FILES['Filedata']['name'], '.');
include('../../lib/replacement.php');
$alias = substr($_FILES['Filedata']['name'], 0, $pos);
$alias = str_replace($toreplace, $replacement, $alias);
$alias = preg_replace('/[^a-z0-9-_]+/i','-',$alias);
$alias = trim($alias . substr($_FILES['Filedata']['name'], $pos), '-');

$file_id = md5(rand()*10000000);
$filename = $_SESSION['uploaddir'] . '/' . $alias;
$thumbname = $_SESSION['uploaddir'] . '/thumb_' . $alias;
$_SESSION['file_info'][$file_id] = '../../' . $thumbname;

if ( _CreateThumbnail('../../' . $thumbname, $_FILES['Filedata']['tmp_name'], 96, 96,'sc') ){
	$fullpath = str_replace('/', DIRECTORY_SEPARATOR, $_SESSION['rootpath'] . $filename);
	move_uploaded_file($_FILES['Filedata']['tmp_name'], $fullpath);


	/**
	 * Create Watermark if we haveto
	 */
	function imagecreatefromfile($image_path) {
		list($width, $height, $image_type) = getimagesize($image_path);
		switch ($image_type){
			case IMAGETYPE_GIF: return imagecreatefromgif($image_path); break;
			case IMAGETYPE_JPEG: return imagecreatefromjpeg($image_path); break;
			case IMAGETYPE_PNG: return imagecreatefrompng($image_path); break;
			default: return ''; break;
		}
	}
	 
	 
	if ($watermark_onoff){
		//--- transparante watermark
		if ($watermark_file=='watermark.png'){
			$watermark_file = $config['root_path'].'/modules/Showtime/images/watermark.png';
		}else{
			$watermark_file = $config['image_uploads_path'].'/'.$watermark_file;
		}
		if (file_exists($watermark_file)){
			$watermark = imagecreatefromfile($watermark_file);
			$watermark_width = imagesx($watermark);
			$watermark_height = imagesy($watermark);
			imagecreatetruecolor($watermark_width, $watermark_height);
		
			//--- orriginele image
			$image = imagecreatefromfile($fullpath);
			$size = getimagesize($fullpath);
		
			//--- Calculate position
			$padding_x = $watermark_padding_x;
			$padding_y = $watermark_padding_y;
			switch ($watermark_pos){
					//bottom_right bottom_left top_right top_left 
				case "bottom_right":
					$xas = $size[0] - $watermark_width - $padding_x;
					$yas = $size[1] - $watermark_height - $padding_y;
					break;
				case "bottom_left":
					$xas = $padding_x;
					$yas = $size[1] - $watermark_height - $padding_y;
					break;
				case "top_right":
					$xas = $size[0] - $watermark_width - $padding_x;
					$yas = $padding_y;
					break;
				case "top_left":
					$xas = $padding_x;
					$yas = $padding_y;
					break;
			}
	
			//--- depending on image sourse... set transparent option
			//--- then overwrite the uploaded file
			$transparentcy = $watermark_transparant;
			list($width, $height, $image_type) = getimagesize($watermark_file);
			switch ($image_type){
				case IMAGETYPE_GIF:
					imagecopymerge($image, $watermark, $xas, $yas, 0, 0, $watermark_width, $watermark_height,$transparentcy);
					break;
				case IMAGETYPE_JPEG:
					imagecopymerge($image, $watermark, $xas, $yas, 0, 0, $watermark_width, $watermark_height,$transparentcy);
					break;
				case IMAGETYPE_PNG:
					imagecopy($image, $watermark, $xas, $yas, 0, 0, $watermark_width, $watermark_height);
					break;
				default: return ''; break;
			}
		
			//--- upload image
			imagejpeg($image, $fullpath); // max. kwaliteit
		
			imagedestroy($image);
			imagedestroy($watermark);
		}//no watermark found !!!
	}
	
	echo 'FILEID:../' . $thumbname;
}else{
	echo 'File corrupt: ' . $alias;
}

//watermarking:

?>
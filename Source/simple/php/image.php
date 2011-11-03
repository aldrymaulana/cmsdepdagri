<?php
/*============================================================================ 
Title:		Image generation
Version:	1.2
Descript.:	This script generates an image with a spezified size.
Last Mod.:	28.05.2010
Author:		Andi Petzoldt
Email:		andi@petzoldt.net
Notes:		This script is written for the use with "CMS made simple"
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
============================================================================*/

// include config
include('../config.php');

/**
* Cleans an URL path.
* @param string $path The path to be clean.
* @param string $type Should the path be cleaned as URL or as file path? (url/path)
* @return string
*/
function cleanPath($path) {
	// Clean path
	if ($path) $path = str_replace ('/',DIRECTORY_SEPARATOR,trim($path));
	#if ($path) $path = preg_replace('#[^0-9a-zA-ZäöüÄÖÜß_/\\\. -]#','',$path);
	if ($path) while (substr($path,0,1) == DIRECTORY_SEPARATOR) { $path = substr($path,1); }
	if ($path) while (substr($path,-1) == DIRECTORY_SEPARATOR) { $path = substr($path,0,-1); }
	if ($path) while (strpos($path,'..')) { $path = str_replace('..','.',$path); }
	// Return cleaned path
	return $path;
}

// Check GET data
$image = urldecode($_GET['i']);
$width = (int)$_GET['w'];
$height = (int)$_GET['h'];
$lang = $_GET['l']=='de' ? 'de' : 'en';

// Check referer
if ($config['root_url']!=substr($_SERVER['HTTP_REFERER'],0,strlen($config['root_url']))) {
	header('HTTP/1.1 403 Forbidden');
	echo $lang=='de' ? 'Zugriff verweigert' : 'Access denied';
	exit();
}

// Check ending
$ending = true;
if (preg_match('/^(.*)\.(.*?)$/',$image,$tmp)) {
	if (!in_array(strtolower($tmp[2]),array('jpg','jpeg','gif','png'))) { $ending = false; }
	else { $ending = strtolower($tmp[2]); }
}
else {
	$ending = false;
}

// Check and build path
$path = $config['image_uploads_path'].DIRECTORY_SEPARATOR.cleanPath($image);
if (!is_file($path)) $path = $config['uploads_path'].DIRECTORY_SEPARATOR.cleanPath($image);
if (!is_file($path) || !$ending) {
	$path = $config['root_path'].DIRECTORY_SEPARATOR.'images'.DIRECTORY_SEPARATOR.'pixel_trans.gif';
	$width = 10;
	$height = 10;
}

// Get image infos
$infos = getimagesize($path);

// Calculate output size
if ($width && !$height && $width<$infos[0]) {
	$ratio = $infos[0] / $width;
	$height = round($infos[1]/$ratio);
}
else if (!$width && $height && $height<$infos[1]) {
	$ratio = $infos[1] / $height;
	$width = round($infos[0]/$ratio);
}
else if ((!$width && !$height) || $width>=$infos[0] || $height>=$infos[1]) {
	$width = $infos[0];
	$height = $infos[1];
}

// Open old image
switch ($ending) {
	case 'jpg':
	case 'jpeg':
		$image_old = @ImageCreateFromJPEG($path);
		break;
	case 'gif':
		$image_old = @ImageCreateFromGIF($path);
		break;
	case 'png':
		$image_old = @ImageCreateFromPNG($path);
		break;
	default:
		break;
}
// Error Handling
if (!$image_old) {
	$image_old = ImageCreate ($width, $height);
	$bgc = ImageColorAllocate ($image_old, 255, 255, 255);
	$tc  = ImageColorAllocate ($image_old, 0, 0, 0);
	ImageFilledRectangle ($image_old, 0, 0, $width, $height, $bgc);
	ImageString($image_old, 1, 5, 5, "Error with opening image: $image_old", $tc);
}

// Resize image
$image_new = $ending=='gif' ? @ImageCreate($width,$height) : @imagecreatetruecolor($width,$height);
@imagecopyresampled($image_new, $image_old, 0, 0, 0, 0, $width, $height, $infos[0], $infos[1]);

// Send image
header ('Content-type: '.$infos['mime']);
switch ($ending) {
	case 'jpg':
	case 'jpeg':
		@imagejpeg($image_new, null, 85);
		break;
	case 'gif':
		@imagegif($image_new);
		break;
	case 'png':
		@imagepng($image_new);
		break;
	default:
		break;
}

// EOF
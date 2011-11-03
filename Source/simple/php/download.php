<?php
/*============================================================================ 
Title:		Download a file
Version:	1.0
Descript.:	This script provides a secure way to download a file.
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
$file = urldecode($_GET['f']);
$pw = urldecode($_GET['p']);
$lang = $_GET['l']=='de' ? 'de' : 'en';

// Check referer
if ($config['root_url']!=substr($_SERVER['HTTP_REFERER'],0,strlen($config['root_url']))) {
	header('HTTP/1.1 403 Forbidden');
	echo $lang=='de' ? 'Zugriff verweigert' : 'Access denied';
	exit();
}

// Check ending
$ending = true;
$ending = preg_match('/^(.*)\.(.*?)$/',$file,$tmp) ? strtolower($tmp[2]) : false;

// Check and build path
$path = $config['uploads_path'].DIRECTORY_SEPARATOR.cleanPath($file);
if (!is_file($path) || !$ending) {
	header('HTTP/1.0 404 Not Found');
	header('Refresh:3;url='.$_SERVER['HTTP_REFERER']);
	echo $lang=='de' ? 'Datei nicht gefunden' : 'File not found';
	exit();
}

// Get filename
$temp = explode('/',$file);
$filename = str_replace('"','',array_pop($temp));

// Get blank path
$temp = $config['uploads_path'].DIRECTORY_SEPARATOR.implode('/',$temp).DIRECTORY_SEPARATOR;

// Check password
if (is_file($temp.'.htpasswd')) {
	$check = substr(phpversion(),0,3)<4.3 ? substr(implode('',file($temp.'.htpasswd')),9) : substr(file_get_contents($temp.'.htpasswd'),9);
	if (crypt($pw,$check)!=$check) {
		header('HTTP/1.1 403 Forbidden');
		header('Refresh:3;url='.$_SERVER['HTTP_REFERER']);
		echo $lang=='de' ? 'Zugriff verweigert' : 'Access denied';
		exit();
	}
// If .htpasswd doesn't exists send error
} else {
	header('HTTP/1.0 404 Not Found');
	echo $lang=='de' ? 'Passwort-Datei nicht gefunden' : 'Password file not found';
	exit();
}

// Send headers
header('Content-Type: application/octet-stream');
header('Content-Disposition: attachment; filename="'.$filename.'"'); 
header('Content-Transfer-Encoding: binary');
// Send the file
readfile($path);

// EOF
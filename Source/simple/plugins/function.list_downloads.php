<?php
/*============================================================================ 
Type:		Plugin (Tag) for CMSms
Title:		List Downloads
Version:	1.5
Descript.:	This script generates a table with filenames of a specified directory.
Last Mod.:	28.05.2010
Author:		Andi Petzoldt
Email:		info@petzoldt.net
Notes:		This plugin is written for the use with "CMS made simple".
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

/**
* This function generates a table with filenames of a specified directory.
* @param array $params The input parameters.
* @param object $smarty The Smarty object.
* @return string
*/
function smarty_cms_function_list_downloads($params, &$smarty) {

	// clean folder var
	$folder = str_replace ('../','',$params['folder']);
	// Set standard folder if folder is empty
	if (!$folder) { $folder = 'uploads/'; }
	// Check for / at the end
	if (substr($folder, -1) != '/') { $folder.= '/'; }
	// Security check for / at the beginning
	while ( substr($folder, 0, 1) == '/' ) { $folder = substr($folder, 1); }
	
	// Get root path
	$rootpath = $GLOBALS['config']['root_path'].'/';
	
	// clean colheaders var
	$colheaders = $params['colheaders'] ? true : false;
	
	// clean css class var
	$cssclass = str_replace('\'','',$params['cssclass']);
	$cssclass = str_replace('\"','',$cssclass);
	if (!$cssclass) $cssclass = 'downloads';
	
	// language var
	$lang = strtolower($params['lang'])=='de_de' ? 'de' : 'en';
	$name_file = $lang=='de' ? 'Datei' : 'File';
	$name_date = $lang=='de' ? 'Datum' : 'Date';
	$name_size = $lang=='de' ? 'Gr&ouml;&szlig;e' : 'Size';
	$name_sizepx = $lang=='de' ? 'Gr&ouml;&szlig;e in Pixel' : 'Size in pixel';
	$name_password = $lang=='de' ? 'Bitte geben Sie das Passwort ein' : 'Please enter the password';
	
	// password var
	$password = isset($params['password']) ? $params['password'] : '';

	// check if pdf data should be extracted
	$pdf = $params['pdf'] ? true : false;

	// Get file infos
	$dl = array();
	if (is_dir($rootpath.$folder)) {
		$handle = opendir($rootpath.$folder);
		$i = 0;
		while ( false !== ( $entry = readdir($handle) ) ) {
			if ( substr($entry,0,1)!='.' && is_file($rootpath.$folder.$entry) ) {
				// get common infos about the file
				$dl[$i]['filename'] = $entry;
				$dl[$i]['filetype'] = filetype($rootpath.$folder.$entry);
				$dl[$i]['timestamp'] = filemtime($rootpath.$folder.$entry);
				$dl[$i]['filesize'] = filesize($rootpath.$folder.$entry);
				$dl[$i]['title'] = '';
				$dl[$i]['author'] = '';
				$dl[$i]['description'] = '';
				$dl[$i]['isimage'] = false;
				$dl[$i]['width'] = 0;
				$dl[$i]['height'] = 0;
				$file_ending = strtolower(substr(strrchr($entry,'.'),1));
				// get image infos
				if ($file_ending=='gif' || $file_ending=='png' || $file_ending=='jpg' || $file_ending=='jpeg') {
					$dl[$i]['isimage'] = true;
					$file_image_size = getimagesize($rootpath.$folder.$entry, $file_image_infos);
					$dl[$i]['width'] = $file_image_size[0];
					$dl[$i]['height'] = $file_image_size[1];
					$iptc = isset($file_image_infos['APP13']) ? iptcparse($file_image_infos['APP13']) : array();
					$dl[$i]['description'] = isset($iptc['2#120'][0]) ? htmlentities($iptc['2#120'][0]) : '';
				}
				// get pdf info
				if ($pdf && $file_ending=='pdf') {
					$pdfinfo = list_downloads_pdfinfo($folder.$entry);
					$dl[$i]['title'] = htmlentities($pdfinfo['title'],ENT_QUOTES,'UTF-8');
					$dl[$i]['author'] = htmlentities($pdfinfo['author'],ENT_QUOTES,'UTF-8');
					$dl[$i]['description'] = htmlentities($pdfinfo['description'],ENT_QUOTES,'UTF-8');
				}
				// increase counter
				$i++;
			}
		}
		closedir($handle);
	}
	// Tries to create the directory
	else {
		@mkdir($rootpath.$folder, 0755);
	}
	
	// Write password files to folder
	if ($password) {
		// Build content of .htaccess
		$htaccess = "deny from all\n";
		$htaccess.= "AuthName \"Access denied\"\n";
		$htaccess.= "AuthType Basic\n";
		$htaccess.= "AuthUserFile ".$rootpath.$folder.".htpasswd\n";
		$htaccess.= "require valid-user\n";
		$htaccess.= "satisfy any\n";
		// Write .htaccess
		if (!is_file($rootpath.$folder.'.htaccess')) {
			if ($handle = fopen($rootpath.$folder.'.htaccess', 'w')) {
				fwrite($handle, $htaccess);
				fclose($handle);
			}
		}
		// Build content of .htpasswd
		$htpasswd = 'download:'.crypt($password);
		// Check if filecontent with transmitted password
		$write = false;
		if (is_file($rootpath.$folder.'.htpasswd')) {
			$check = substr(phpversion(),0,3)<4.3 ? substr(implode('',file($rootpath.$folder.'.htpasswd')),9) : substr(file_get_contents($rootpath.$folder.'.htpasswd'),9);
			if (crypt($password,$check)!=$check) $write = true;
		}
		else {
			$write = true;
		}
		// Write .htpasswd
		if ($write) {
			if ($handle = fopen($rootpath.$folder.'.htpasswd', 'w')) {
				fwrite($handle, $htpasswd);
				fclose($handle);
			}
		}
	// Delete password files if they still exists and no password is set
	} else {
		if (is_file($rootpath.$folder.'.htaccess')) @unlink($rootpath.$folder.'.htaccess');
		if (is_file($rootpath.$folder.'.htpasswd')) @unlink($rootpath.$folder.'.htpasswd');
	}

	// Sort array
	if ($params['sort']) {
		foreach ($dl as $key => $row) {
			$filename[$key]  = $row['filename'];
			$filetype[$key] = $row['filetype'];
			$timestamp[$key] = $row['timestamp'];
			$filesize[$key] = $row['filesize'];
		}
		switch ($params['sort']) {
			case 'f':	array_multisort($filename, SORT_ASC, $dl);
								break;
			case 'fd':	array_multisort($filename, SORT_DESC, $dl);
								break;
			case 's':	array_multisort($filesize, SORT_ASC, $dl);
								break;
			case 'sd':	array_multisort($filesize, SORT_DESC, $dl);
								break;
			case 't':	array_multisort($timestamp, SORT_ASC, $dl);
								break;
			case 'td':	array_multisort($timestamp, SORT_DESC, $dl);
								break;
			default:	break;
		}
	}

	// Insert Javascript
	if ($params['password']) {
		echo '<script type="text/javascript">';
		echo 'function DPW (file) {';
		if ($password) echo 'var pw = window.prompt("'.$name_password.'", "");';
		if ($password) echo 'return "/php/download.php?f=" + encodeURI(file) + "&p=" + pw + "&l='.$lang.'";';
		else echo 'return "/php/download.php?f=" + encodeURI(file) + "&l='.$lang.'";';
		echo '}';
		echo '</script>';
	}

	// Start table
	echo '<table class="'.$cssclass.'_table">';

	// Check if user has specified whether to show column headers
	if ($colheaders) {
		echo '<tr class="'.$cssclass.'_tr">';
		echo '<th class="'.$cssclass.'_th"></th>';
		echo '<th class="'.$cssclass.'_th" align="left">'.$name_file.'</th>';
		echo '<th class="'.$cssclass.'_th" align="right">'.$name_size.'</th>';
		echo '<th class="'.$cssclass.'_th" align="right">'.$name_date.'</th>';
		echo '</tr>';
	}

	// Show data
	$total = 0;
	foreach ($dl as $d) {
		$file_ext = substr(strrchr($d['filename'],'.'),1);
		$fullname = $folder.$d['filename'];
		$date = $lang=='de' ? strftime('%d.%m.%Y',$d['timestamp']) : strftime('%d/%m/%Y',$d['timestamp']);
		echo '<tr class="'.$cssclass.'_tr">';
		echo '<td class="'.$cssclass.'_td" width="1%" align="center" valign="middle">';
		$tmp_folder = str_replace('uploads/images/','',$folder);
		$tmp_folder = str_replace('uploads/','',$tmp_folder);
		if ($d['isimage'] && $d['width']<3000 && $d['height']<2000) {
			echo '<a href="'.$GLOBALS['config']['root_url'].'/php/image.php?i='.urlencode(list_downloads_htmldecode($tmp_folder.$d['filename'])).'&amp;w=600" title="' . htmlentities($d['filename']) . '" class="'.$cssclass.'_a imagelist">';
			if (is_file($GLOBALS['config']['root_path'].DIRECTORY_SEPARATOR.$folder.'thumb_'.$d['filename'])) echo '<img src="'.$folder.'thumb_'.$d['filename'].'" alt="' . htmlentities($d['filename']) . '" class="'.$cssclass.'_img" />';
			else echo '<img src="'.$GLOBALS['config']['root_url'].'/php/image.php?i='.urlencode(list_downloads_htmldecode($tmp_folder.$d['filename'])).'&amp;w=60" alt="' . htmlentities($d['filename']) . '" class="'.$cssclass.'_img" />';
			echo '</a>';
		}
		else {
			echo '<img src="' . list_downloads_icon($file_ext) . '" class="'.$cssclass.'_img" alt="link-symbol" />';
		}
		echo '</td>';
		echo '<td class="'.$cssclass.'_td" align="left" valign="top">';
		if ($password) echo '<a href="javascript:var tmp=1;" onClick="document.location.href=DPW(\''.urlencode(list_downloads_htmldecode($tmp_folder.$d['filename'])).'\');return false;" class="'.$cssclass.'_a">' . htmlentities($d['filename']) . '</a>';
		else { echo '<a href="' . list_downloads_htmldecode($folder.$d['filename']) . '" target ="_blank" class="'.$cssclass.'_a">' . htmlentities($d['filename']) . '</a>'; }
		if ($d['title']) echo '<br /><span class="'.$cssclass.'_title">'.$d['title'].'</span>';
		#if ($d['author']) echo '&nbsp;<span class="'.$cssclass.'_author">'.$d['author'].'</span>';
		if ($d['description']) echo '<br /><span class="'.$cssclass.'_description">'.list_downloads_htmldecode($d['description']).'</span>';
		if ($d['width'] && $d['height']) echo '<br /><span class="'.$cssclass.'_imagesize">'.$name_sizepx.': '.$d['width'].'x'.$d['height'].'</span>';
		echo '</td>';
		echo '<td class="'.$cssclass.'_td" align="right" valign="top">'. list_downloads_size($d['filesize']) . '</td>';
		$total += filesize($fullname);
		echo '<td class="'.$cssclass.'_td" align="right" valign="top">' . $date . '</td>';
		echo '</tr>';
	}

	// Close table
	echo '</table>';
}

/**
* Get relevant icon for file extension.
* @param string $file_ext The Icon Name.
* @return string
*/
function list_downloads_icon($file_ext) {
	$path = 'images/appicons/';
	if (file_exists($path.strtoupper($file_ext).'icon.gif') ) { return $path.strtoupper($file_ext).'icon.gif'; }
	else { return $path."UFO".'icon.gif'; }
}

/**
* Formats the size of the file.
* @param int $size The file size.
* @return string
*/
function list_downloads_size($size) {
	if ($size>=1073741824) { $filesize = number_format($size/1073741824,0,',','.') . ' GB'; }
	else if ($size>=1048576) { $filesize = number_format($size/1048576,0,',','.') . ' MB'; }
	else if ($size>=1024) { $filesize = number_format($size/1024,0,',','.') . ' kB'; }
	else { $filesize = number_format($size,0,',','.') . ' B'; }
	return $filesize;
}

/**
* Replace HTML Umlaute
* @param string $text A text with HTML Umlauten.
* @return string
*/
function list_downloads_htmldecode($text) {
	if (substr(phpversion(),0,1)>4) { return html_entity_decode($text,ENT_QUOTES,'UTF-8'); }
	$text = str_replace ('&uuml;','ü',$text);
	$text = str_replace ('&ouml;','ö',$text);
	$text = str_replace ('&auml;','ä',$text);
	$text = str_replace ('&Uuml;','Ü',$text);
	$text = str_replace ('&Ouml;','Ö',$text);
	$text = str_replace ('&Auml;','Ä',$text);
	$text = str_replace ('&szlig;','ß',$text);
	return $text;
}

/**
* Gets PDF Metadata
* @param string $file Relative (to the CMSms root) path to the pdf file
* @return array
*/
function list_downloads_pdfinfo($file) {
	// Clean path
	if ($file) $file = str_replace ('/',DIRECTORY_SEPARATOR,trim($file));
	#if ($file) $file = preg_replace('#[^0-9a-zA-ZäöüÄÖÜß_/\\\. -]#','',$file);
	if ($file) while (substr($file,0,1) == DIRECTORY_SEPARATOR) { $file = substr($file,1); }
	if ($file) while (substr($file,-1) == DIRECTORY_SEPARATOR) { $file = substr($file,0,-1); }
	if ($file) while (strpos($file,'..')) { $file = str_replace('..','.',$file); }
	$file = $GLOBALS['config']['root_path'].DIRECTORY_SEPARATOR.$file;
	$title = '';
	$author = '';
	$description = '';
	if (is_file($file)) {
		$handle = fopen ($file,'rb');
		while (!feof($handle)) {
			$buffer = fgets($handle, 1024);
			if (substr($buffer,0,8)=='/Title (') $title = str_replace('\\','',mb_detect_encoding($buffer,'auto',true)=='UTF-8' ? substr(trim($buffer),8,-1) : mb_convert_encoding(substr(trim($buffer),8,-1),'UTF-8'));
			if (substr($buffer,0,9)=='/Author (') $author = str_replace('\\','',mb_detect_encoding($buffer,'auto',true)=='UTF-8' ? substr(trim($buffer),9,-1) : mb_convert_encoding(substr(trim($buffer),9,-1),'UTF-8'));
			if (substr($buffer,0,10)=='/Subject (') $description = str_replace('\\','',mb_detect_encoding($buffer,'auto',true)=='UTF-8' ? substr(trim($buffer),10,-1) : mb_convert_encoding(substr(trim($buffer),10,-1),'UTF-8'));
			if ($title && $author && $description) {
				fclose ($handle);
				break;
			}
		}
		if (!$title || !$author || !$description) fclose ($handle);
	}
	return array('title'=>$title,'author'=>$author,'description'=>$description);
}

/**
* Displays a help to the plugin "list_downloads".
*/
function smarty_cms_help_function_list_downloads() {
	echo '	<h3>What does this do?</h3>
			<p>Displays a list of files to download, from a specified folder, with file icon, file name, file size and file date</p>
			<h3>How do I use it?</h3>
			<p>Keep care, that you add all files from the plugin archive. There are 4 folders with files you need (images, js, php, plugins). Copy all 4 folders to the root directory of your CMSms installation.</p>
			<p>Than, just insert the tag into your template/page like: <code>{list_downloads}</code></p>
			<h3>What parameters does it take?</h3>
			<p>
			<ul>
			<li><em>(optional)</em> <tt>folder: </tt>Folder to list files from (default is "uploads/"). Advise you include this. E.g.: <code>{list_downloads folder="uploads/Downloads/"}</li>
			<li><em>(optional)</em> <tt>sort: </tt>Sort order:<br />
			t - sort by date/time ascending<br />
			td - sort by date/time descending<br />
			s - sort by filesize ascending<br />
			sd - sort by filesize descending<br />
			f - sort by filename ascending<br />
			fd - sort by filename descending<br />
			(default is sort by filename)<br />
			e.g.: <code>{list_downloads folder="uploads/Downloads/" sort="td"}</code></li>
			<li><em>(optional)</em> <tt>lang: </tt> - Output language (available is en_US, en_GB and de_DE, default is en_US). E.g.: <code>{list_downloads folder="uploads/Downloads/" lang="de_DE"}</code></li>
			<li><em>(optional)</em> <tt>colheaders: </tt> - Show column headers (default is no headers). E.g.: <code>{list_downloads folder="uploads/Downloads/" colheaders=true}</code></li>
			<li><em>(optional)</em> <tt>cssclass: </tt> - Define a special CSS class prefix (default is no downloads). E.g.: <code>{list_downloads folder="uploads/Downloads/" cssclass="pdfs"}</code></li>
			<li><em>(optional)</em> <tt>password: </tt> - Protect this folder with a password (leave blank or dont use this parameter if you dont want to protect). E.g.: <code>{list_downloads folder="uploads/Downloads/" password="secret"}</code></li>
			<li><em>(optional)</em> <tt>pdf: </tt> - Extract Meta Data of PDF files (default is false). E.g.: <code>{list_downloads folder="uploads/Downloads/" pdf=true}</code><br />
			<em>To edit PDF Metadata, you can use: <a href="http://www.becyhome.de/download_eng.htm#becypdfmetaedit" title="BeCyPDFMetaEdit" target="_blank">BeCyPDFMetaEdit</a></em></li>
			</ul>
			</p>
			<p><strong>Include Javasripts for enlarging images:</strong><br />
			If you want to get an enlarging image (using jQuery), insert the following code to the head of your HTML template:<br />
			<code>&lt;script type=&quot;text/javascript&quot; src=&quot;js/jquery.imageplugins.js&quot;&gt;&lt;/script&gt;</code></p>
			<p><strong>Example of CSS rules to design the table:</strong><br />
			To design the download table, insert the following lines into your CSS template (its an example):<br />
			<code>
			.downloads_table {<br />
				&nbsp;&nbsp;&nbsp;&nbsp;width:100%;<br />
			}<br />
			.downloads_th {<br />
				&nbsp;&nbsp;&nbsp;&nbsp;border-bottom: 1px solid #666;<br />
				&nbsp;&nbsp;&nbsp;&nbsp;border-right: 1px solid #666;<br />
				&nbsp;&nbsp;&nbsp;&nbsp;padding: 1px 3px 1px 3px;<br />
				&nbsp;&nbsp;&nbsp;&nbsp;background-color:#999;<br />
				&nbsp;&nbsp;&nbsp;&nbsp;color:#fff;<br />
			}<br />
			.downloads_td {<br />
				&nbsp;&nbsp;&nbsp;&nbsp;border-bottom: 1px solid #999;<br />
				&nbsp;&nbsp;&nbsp;&nbsp;border-right: 1px solid #999;<br />
				&nbsp;&nbsp;&nbsp;&nbsp;padding:3px;<br />
				&nbsp;&nbsp;&nbsp;&nbsp;background-color:#eee;<br />
			}<br />
			.downloads_description, .downloads_imagesize {<br />
				&nbsp;&nbsp;&nbsp;&nbsp;color:#666;<br />
			}
			</code></p>
		';
}

/**
* Displays an about page to the plugin "list_downloads".
*/
function smarty_cms_about_function_list_downloads() {
	echo '	<p>Author: <a href="http://andiministrator.de/" target="_blank">Andi Petzoldt</a></p>
			<p>Based on plugin file_list from: Lewis Stewart &lt;<a href="mailto:bored.bigtime@gmail.com">bored.bigtime@gmail.com</a>&gt;</p>
			<p>Change History:</p>
			<p>
				Version 1.5<br />
				<ul>
					<li>A folder can be protected with a password</li>
					<li>Show Metadata of PDF files</li>
					<li>CSS class prefix can be overwritten</li>
					<li>Plugin can be used in German and English language and supports flexible folder names now</li>
					<li>Fixed a bug in image.php</li>
					<li>Fixed a bug in javascript file fpr enlarging images</li>
				</ul>
			</p>
			<p>
				Version 1.4<br />
				<ul>
					<li>JavaScript check, if jQuery and Plugins exist</li>
					<li>jQuery Update to v1.4.2</li>
					<li>Added some help text</li>
				</ul>
			</p>
			<p>
				Version 1.3<br />
				<ul>
					<li>Added AppIcons</li>
				</ul>
			</p>
			<p>
				Version 1.2<br />
				<ul>
					<li>Fixed help text</li>
				</ul>
			</p>
			<p>
				Version 1.1<br />
				Some smaller bugfixes.
			</p>
			<p>
				Version 1.0<br />
				Initial version released.
			</p>';
}

// EOF
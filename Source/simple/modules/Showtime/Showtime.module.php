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

class Showtime extends CMSModule{
	function GetName(){
		return 'Showtime';
	}
	
	function GetFriendlyName(){
		return $this->Lang('friendlyname');
	}
	
	function GetVersion(){
		return '2.0.5';
	}
	
	function GetHelp() {
		global $gCms;
		$config = $this->GetConfig();
		$help = str_replace('[root_url]',$config["root_url"], $this->Lang('help'));
		return $help;
	}
	
	function GetAuthor() {
		return 'Peter Orije';
	}
	
	function GetAuthorEmail()  {
		return 'pedrosken@gmail.com';
	}
	
	function GetChangeLog()  {
		return $this->Lang('changelog');
	}
	
	function IsPluginModule() {
		return true;
	}
	
	function HasAdmin() {
		return true;
	}
	
	function GetAdminSection() {
		return 'content';
	}
	
	function GetAdminDescription(){
		return $this->Lang('admindescription');
	}
	
	function VisibleToAdminUser() {
		return $this->CheckPermission('Use Showtime');
	}
	
	function CheckAccess($perm = 'Use Showtime'){
		return $this->CheckPermission($perm);
	}
	
	function GetDependencies() {
		return array();
	}
	
	function MinimumCMSVersion()  {
		return "1.0.1";
	}
	
	/*---------------------------------------------------------
	DisplayErrorPage()
	This is a simple function for generating error pages.
	---------------------------------------------------------*/
	function DisplayErrorPage($id, &$params, $return_id, $message=''){
		$this->smarty->assign('title_error', $this->Lang('error'));
		$this->smarty->assign_by_ref('message', $message);
		
		// Display the populated template
		echo $this->ProcessTemplate('error.tpl');
	}
	
	function GetEventDescription ( $eventname ){
		return $this->Lang('event_info_'.$eventname );
	}
	
	function GetEventHelp ( $eventname ){
		return $this->Lang('event_help_'.$eventname );
	}
	
	function InstallPostMessage(){
		return $this->Lang('postinstall');
	}
	
	function UninstallPostMessage(){
		return $this->Lang('postuninstall');
	}
	
	function UninstallPreMessage(){
		return $this->Lang('really_uninstall');
	}
	
	function SetParameters(){
		$this->RegisterModulePlugin();
			// Don't allow parameters other than the ones you've explicitly defined
			$this->RestrictUnknownParams();
			
			// syntax for creating a parameter is parameter name, default value, description
			$this->CreateParameter('show', '', 'Showtime id');
			$this->SetParameterType('show',CLEAN_STRING);
	}

	/**
	 *  loads a png, jpeg or gif image from the given file name for Watermark
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



	function ClearPath($path){
		$patharray = explode('/', $path);
		$newpatharray = array();
		foreach ($patharray as $dir){
			switch ($dir){
				case '' : break;
				case '..':
					array_pop($newpatharray);
					break;
				default :
					$newpatharray[] = $dir;
			}
		}
		return (substr($path,0,1)=='/' ? '/' : '').implode('/', $newpatharray);
	}


	/**
	 *  Create CSS-String
	 */

	function CreateCSSstring($row, $root){
		//first prepare some calculations:
			$st_height=$row['st_height'];
			$st_width=$row['st_width']; 
			$animationtype=$row['st_animationtype'];
			$st_scale= $row['st_scale'];
			$st_link = $row['st_link'];
			$st_target = $row['st_target'];
			
			if ($animationtype=='jQuery'){		
				$row['st_rotatetime'] = $row['st_rotatetime']  * 1000;
				$row['st_transitiontime'] = $row['st_transitiontime'] * 1000;
				//calculate position top_prevnextnav
				$row['top_prevnextnav'] = ceil($st_height/2)-5;	
				
				//calculate position for Navbuttons
				$margin = 5; //procent
				$button_width= 20;
				if ($st_width > 400 && $st_width < 600){
					$button_width= 30;
				}elseif($st_width >= 600){
					$button_width= 40;
				}
				$row['button_width'] = $button_width;
				$row['leftbutton_pos'] = ceil($st_width* $margin /100);
				$row['rightbutton_pos'] = ceil($st_width* (100-$margin) /100)- $button_width;

				//recalculate nav textsize and button size from (st_nav_size) and (st_nav_showtext)
				//textsize is always 50% from nav_size
				if ($row['st_nav_showtext']){
					$row['st_nav_textsize'] = ceil($row['st_nav_size'] / 2);
					$row['st_nav_vmargin_text']= ceil(($row['st_nav_size'] - $row['st_nav_textsize'])/2);
					$row['st_nav_hmargin_text']= ceil(($row['st_nav_size'] - ceil($row['st_nav_textsize'] / 2))/2);
				}else{
					$row['st_nav_textsize'] = 0;
					$row['st_nav_vmargin_text']= ceil($row['st_nav_size']/2);
					$row['st_nav_hmargin_text']= $row['st_nav_vmargin_text'];
				}
		
				//write css string		
				 $cssstring="
					div#slideshow_nav_".$row['show_id']."{
						position:absolute;
						z-index: 10;";
					 if ($row['st_nav_pos']=='bottom_right' || $row['st_nav_pos']=='bottom_left'){
						 $cssstring .="
						bottom:0;";
					 }
					 
					 if ($row['st_nav_pos']=='top_right' || $row['st_nav_pos']=='bottom_right'){
						 $cssstring .="
						right:0;";
					 }
						 $cssstring .="
						padding:".$row['st_nav_padding']."px;
					}
					.slide_nav_".$row['show_id']." {
						clear:both;
						margin:5px 0;
					}
					.slide_nav_".$row['show_id']." a {";
					
					if ($row['st_nav_radius'] > 0){
						 $cssstring .="
						-moz-border-radius: ".$row['st_nav_radius']."px ".
							$row['st_nav_radius']."px ".$row['st_nav_radius']."px ".$row['st_nav_radius']."px;";
					}
					 
						 $cssstring .="
						background:none repeat scroll 0 0 ".$row['st_nav_bgcolor'].";
						border:".$row['st_nav_bordersize']."px solid ".$row['st_nav_bordercolor'].";
						color:".$row['st_nav_textcolor']."!important;
						font-size:".$row['st_nav_textsize']."px;
						font-weight:bold;
						margin:2px;
						padding:".$row['st_nav_vmargin_text']."px ".$row['st_nav_hmargin_text']."px;
						line-height:".$row['st_nav_size']."px;
						text-decoration:none;
					}
					.slide_nav_".$row['show_id']." a.activeSlide {
						background:none repeat scroll 0 0 ".$row['st_nav_bgactivecolor'].";
					}
					.slide_nav_".$row['show_id']." a:focus {
						outline:medium none;
					}
					
					div#slideshow_".$row['show_id']." {
						width:".$row['st_width']."px; height: ".$row['st_height']."px; /*padding: 15px 0 0 12px;*/
						position: relative; z-index: 5;
						background:".$row['st_bgcolor'].";
					}
						div#slideshow_".$row['show_id']." img{
							border:none!important;
							padding:0;
							margin:0;
						}
						div#slideshow_".$row['show_id']." ul#prevnextnav_".$row['show_id']." {
							padding: 0;
							display: none;
							list-style: none;
							position: relative; top: ".$row['top_prevnextnav']."px; z-index: 15;
							outline:medium none;
							margin:0;
						}
							div#slideshow_".$row['show_id']." ul#prevnextnav_".$row['show_id']." li#prev_".$row['show_id']." {
								position:absolute; left:".$row['leftbutton_pos']."px; margin: 0;padding: 0;
							}
							div#slideshow_".$row['show_id']." ul#prevnextnav_".$row['show_id']." li#next_".$row['show_id']." {
								position:absolute; left:".$row['rightbutton_pos']."px; margin: 0 20px 0 0;padding: 0;
							}
							div#slideshow_".$row['show_id']." ul#prevnextnav_".$row['show_id']." li a {
								display: block; width: ".$row['button_width']."px; height: ".$row['button_width']."px; text-indent: -9999px;
							}
								div#slideshow_".$row['show_id']." ul#prevnextnav_".$row['show_id']." li#prev_".$row['show_id']." a {
									
									background: url(".$root."/modules/Showtime/templates/jquery/images/prev_".$row['button_width'].".png);
									
								}
								div#slideshow_".$row['show_id']." ul#prevnextnav_".$row['show_id']." li#next_".$row['show_id']." a {
									
									background: url(".$root."/modules/Showtime/templates/jquery/images/next_".$row['button_width'].".png);
									
								}
					
						div#slideshow_".$row['show_id']." ul#slides_".$row['show_id']."{
							list-style: none;padding: 0; margin:0; z-index:5;
							width:".$row['st_width']."px; height: ".$row['st_height']."px;
						}
							div#slideshow_".$row['show_id']." ul#slides_".$row['show_id']." li {
								width:".$row['st_width']."px; height: ".$row['st_height']."px;
								margin: 0 0 20px 0;
							}
					
					a {outline: none; }";
					
				if ($row['st_showtext'] || $row['st_showcomment']){
						 $cssstring .="
					div#comments_st_".$row['show_id']."{
						position:absolute;
						font-size:".$row['st_textsize']."px;
						z-index: 10;
						color:".$row['st_textcolor'].";
						width:100%;
						font-family:".$row['st_fonttype'].";";
					
					if ($row['st_commentpos']=='bottom'){
						 $cssstring .="				
						bottom:0;";
					}
					if ($row['st_commentpos']=='right'){
						 $cssstring .="
						right:0;";
					}
					if ($row['st_commentpos']=='left' || $row['st_commentpos']=='right'){
						 $cssstring .="
							width:-moz-min-content;";
					}
						 $cssstring .="			
					}
					div#comments_st_".$row['show_id']." h2{
						font-size:".$row['st_titlesize']."px;
						margin:0;
						padding:0;
					}
		
					.commentsparts_st_".$row['show_id']."{
						display:none;";
						
					if ($row['st_showalt']){
						 $cssstring .="
						background-color:".$row['st_textbgcolor'].";";
					}
					if ($row['st_commentpos']=='left' || $row['st_commentpos']=='right'){
						 $cssstring .="
						height:".$row['st_height']."px;";
					}
						 $cssstring .="
						opacity:0.6;
						padding:10px;
					}";
				}
				
			}else{ //SWFobject
						 $cssstring .="
                #gallery-".$row['show_id']." {margin: auto;}
                #gallery-".$row['show_id']." .gallery-item {float: left; margin-top: 10px; text-align: center;}
                #gallery-".$row['show_id']." img {border: 2px solid #cfcfcf;}
                #gallery-".$row['show_id']." .gallery-caption {margin-left: 0;}";
				
			}
		return $cssstring ;	
	}

	/**
	 *  Create picture link
	 */

	function CreatePictureLink($picture_url){
		$gCms = cmsms();
    	$config = $gCms->GetConfig();
		//link to an internal page using Alias depending on your 'url_rewriting', 'page_extension' settings.
		if (FALSE == empty($picture_url)){
			$manager = $gCms->GetHierarchyManager();
			$node    = $manager->sureGetNodeById($picture_url);
			if(is_object($node)){
				$content = $node->GetContent();
				$hierarchypath = $content->HierarchyPath();
				$alias = $content->Alias();
				if ($config["url_rewriting"] == 'mod_rewrite'){
					if ($config['use_hierarchy'] == true){
						$link = $config['root_url']. '/' . 
							$hierarchypath . (isset($config['page_extension'])?$config['page_extension']:'.html');
					}else{
						$link = $config['root_url'] . '/' . 
							$alias . (isset($config['page_extension'])?$config['page_extension']:'.html');
					}
				}else{
					if (isset($_SERVER['PHP_SELF']) && $config['url_rewriting'] == 'internal'){
						if ($config['use_hierarchy'] == true){
							$link = $config['root_url']. '/index.php/' . 
								$hierarchypath . (isset($config['page_extension'])?$config['page_extension']:'.html');
						}else{
							$link = $config['root_url']. '/index.php/' . 
								$alias . (isset($config['page_extension'])?$config['page_extension']:'.html');
						}
					}else{
						$link = $config['root_url']. '/index.php?' . $config['query_var'] . '=' . $alias;
					}
				}
			}else{
				return '';
			}
		}else{
			return '';
		}					
		return $link;
	}




	/**
	 * DoEvent methods
	 */
	function DoEvent( $originator, $eventname, &$params ){
		if ($originator == 'Core' && $eventname == 'ContentPostRender'){
			$pos = stripos($params["content"],"</head");
			if( $pos !== FALSE && isset($this->SWFMetadata)){
				$params["content"] = substr($params["content"], 0, $pos) .  
				$this->SWFMetadata . substr($params["content"], $pos);
			}
			if( $pos !== FALSE && isset($this->JQMetadata)){
				$params["content"] = substr($params["content"], 0, $pos) .  
				$this->JQMetadata . substr($params["content"], $pos);
			}
			if( $pos !== FALSE && isset($this->CSSMetadata)){
				$params["content"] = substr($params["content"], 0, $pos) .  
				$this->CSSMetadata . substr($params["content"], $pos);
			}

		}
	}



	function ListFiles($dir) {
		if($dh = opendir($dir)) {
			$files = Array();
			$inner_files = Array();

			while($file = readdir($dh)) {
				if($file != "." && $file != ".." && $file[0] != '.') {
					if(is_dir($dir . "/" . $file)) {
						$inner_files = Showtime::ListFiles($dir . "/" . $file);
						if(is_array($inner_files)) $files = array_merge($files, $inner_files); 
					} else {
						array_push($files, $dir . "/" . $file);
					}
				}
			}

			closedir($dh);
			return $files;
		}
	}


	function manualAddPic($imagename)
	{
		$imgarray;

		$sql= "SELECT * FROM ". cms_db_prefix()."module_showtime WHERE show_id = 1" ;
		$result = mysql_query($sql);
		$picturenumber = mysql_num_rows($result);

		//echo $imagename ." ". $picturenumber . " total";

		$path    = 'uploads/images/Gallery';
		$imgarray = Showtime::ListFiles($path);
		sort($imgarray);


		$i = 1;
		$sql= "SELECT id FROM ". cms_db_prefix()."module_showtime_seq" ;
		$result = mysql_query($sql);
		while ($row = mysql_fetch_assoc($result)) {
			$pictureid = $row['id'];
		}

		$query = "DELETE FROM ".cms_db_prefix()."module_showtime";
			mysql_query($query) or die('delete err');

		foreach ($imgarray as $key=>$file){
			$stat = stat($file);

			if ($i >= 7)
				break;
			
			$imgarray[$i] = $file;
			
			
			$pictureid++;
			$picturenumber++;
			$imagepath = &$file;
			$the_path = dirname($imagepath);
			
			$the_path = str_replace('uploads/images','',$the_path);
			$imagepath = str_replace('uploads/images','',$imagepath);

			$pos = strpos ($the_path, '/', strlen($the_path) - 1);
			if ($pos === false){
				$thumbpath = $the_path.'/thumb_'.basename($imagepath);
			}
			if ($pos !== false){
				$thumbpath = $the_path.'thumb_'.basename($imagepath);
			}

			$thumbpath =  str_replace('\\', '', $thumbpath);
			
			$query2 = "INSERT INTO ".cms_db_prefix()."module_showtime (picture_id, picture_name,show_id, thumbnail_path, picture_path,  picture_number) VALUES (".$pictureid.",'".basename($file)."',1,'".$thumbpath."','".$imagepath."',".$picturenumber.");";
			mysql_query($query2) or die('insert err');

			//echo $query2 . "<br /><br />";

		
			$i++;
		}



		$query3 = "UPDATE ".cms_db_prefix()."module_showtime_seq SET id=".$pictureid;
		mysql_query($query3) or die('update err');;

		return;
	}
} //end class
?>

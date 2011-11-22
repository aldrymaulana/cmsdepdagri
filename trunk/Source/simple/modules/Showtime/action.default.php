<?php
if (!isset($gCms)) exit;

if(isset($params['show'])){
	$showid=$params['show'];

	$galleryitems="";
	$this->smarty->assign('root_url', $config['root_url']);
	$this->smarty->assign('showid',$showid);
	
	$query = "SELECT * FROM ".cms_db_prefix()."module_showtime_name WHERE show_id = $showid";
	$result=$db->Execute($query);
	if ( $result && $result->RecordCount() > 0 ){
		while ( $row=$result->FetchRow() ) {
			$st_height=$row['st_height'];
			$st_width=$row['st_width']; 
			$animationtype=$row['st_animationtype'];
			$st_scale= $row['st_scale'];
			$st_link = $row['st_link'];
			$st_target = $row['st_target'];
			
			if ($animationtype=='jQuery'){		
				$row['st_rotatetime'] = $row['st_rotatetime']  * 1000;
				$row['st_transitiontime'] = $row['st_transitiontime'] * 1000;			
			}
			$this->smarty->assign('show',$row);
		}
				
		//read pictures or slides from database
		$query = 'SELECT picture_id, picture_name, picture_url, picture_path, comment FROM '.
			cms_db_prefix().'module_showtime WHERE active AND show_id = ? ORDER BY picture_number';	
		$result=$db->Execute($query,array($showid));
		$aantal= $result->RecordCount();			
		if ($aantal<>"0"){ //see if there are images
			$teller = 0;
			while(!$result->EOF()){
				$fields=$result->fields;
			
			//Create picture_url depending on $st_link
			switch ($st_link){
				case "internal page":
					//link to an internal page using Alias depending on your 'url_rewriting', 'page_extension' settings.
					$picture_url = $this->CreatePictureLink($fields['picture_url']);
					break;
				case "external page":
					// Link to an external page like: 'http://www.google.be'
					$picture_url=$fields['picture_url'];
					break;
				case "image":
					//link to the original image file
					$picture_url = $config['image_uploads_url'].$fields['picture_path'];
					break;					
			}


				if ($animationtype == 'swfobject'){		
					$galleryitems .= "<dl class='gallery-item'><dt class='gallery-icon'>";
					if (FALSE == empty($picture_url)){
						$galleryitems .= "<a href='".$picture_url."' title='".$fields['picture_name']."' target='".$st_target."'>";
					}
					$galleryitems .= "<img width='" .  $st_width."' height='" .  $st_height.
							"' src='".$config['image_uploads_url'] . $fields['picture_path'].
							"' class='attachment-thumbnail' alt='' title='" .  $fields['picture_name']."' />";
					if (FALSE == empty($picture_url)){
						$galleryitems .= "</a>";
					}
					$galleryitems .= "</dt></dl>\n";
				}else{
					$onerow = new stdClass();
					$onerow->picture_id = $fields['picture_id'];
					$onerow->slide_id=$teller;
					$onerow->picture_name = $fields['picture_name'];
					$onerow->picture_url = $picture_url;
					
					//adjust widht and height depending on st_scale
					//get imageproperties first
					
					//$img=$config['image_uploads_url'] . $fields['picture_path'];	
					$img=$config['image_uploads_path'] . $fields['picture_path'];
									
					list($width, $height)=getimagesize($img);
					switch ($st_scale){
						case 'noscale':
							$tn_width = $width;
							$tn_height = $height;
							if ($width < $st_width){
							   $tn_left = ceil(($st_width - $width)/2);
							}else{
								$tn_left = 0;
							}
							if ($height < $st_height){
							   $tn_top = ceil(($st_height - $height)/2);
							}else{
							   $tn_top='0';
							}
							break;
						case 'showall':
							$x_ratio = $st_width / $width;
							$y_ratio = $st_height / $height;
							if (($x_ratio * $height) < $st_height){
							   $tn_height = ceil($x_ratio * $height);
							   $tn_width = $st_width;
							   $tn_top = ceil(($st_height - $tn_height)/2);
							   $tn_left='0';
							}else{
							   $tn_width = ceil($y_ratio * $width);
							   $tn_height = $st_height;
							   $tn_left = ceil(($st_width - $tn_width)/2);
							   $tn_top='0';
							}
													
							break;
						case 'exactfit':
							$tn_width = $st_width;
							$tn_height = $st_height;
							$tn_left = '0';
							$tn_top='0';
							break;
						case 'noborder':
							$x_ratio = $st_width / $width;
							$y_ratio = $st_height / $height;
							if (($x_ratio * $height) > $st_height){
							   $tn_height = ceil($x_ratio * $height);
							   $tn_width = $st_width;
							   $tn_top = ceil(($st_height - $tn_height)/2);
							   $tn_left='0';
							}else{
							   $tn_width = ceil($y_ratio * $width);
							   $tn_height = $st_height;
							   $tn_left = ceil(($st_width - $tn_width)/2);
							   $tn_top='0';
							}
							break;
						default:
							$tn_width = $st_width;
							$tn_height = $st_height;
							$tn_left = '0';
							$tn_top='0';
					}
	
					$onerow->picture ='<img width="' .  $tn_width.'" height="' .  $tn_height.
							'" style="position:absolute; left:'.$tn_left.'px; top:'.$tn_top.'px;" 
							src="'.$config['image_uploads_url'] . $fields['picture_path'].
							'" alt="'.$fields['comment'].'" title="' .  $fields['picture_name'].'" />';
					$onerow->comment = $fields['comment'];
					$entryarray[] = $onerow;
				}
				$teller ++;
				$result->MoveNext();
			}
	
				
				//include CSS file  CSSMetadata
				//first see if this file exist!
				$cssfilename = $this->config['root_path'].'/modules/Showtime/templates/css/Show_' . $showid . '.css';
				if(!file_exists($cssfilename)){
					$query = "SELECT * FROM ".cms_db_prefix()."module_showtime_name WHERE show_id = ".$showid;
					$result=$db->Execute($query);
					if ( $result && $result->RecordCount() > 0 ){
						$row=$result->FetchRow();
					}
					$cssstring = $this->CreateCSSstring($row, $config['root_url']);
					$handle = fopen($cssfilename,'w');
					fwrite($handle,$cssstring);
					fclose($handle);
				}
				
				$cssfilename = $this->config['root_url'].'/modules/Showtime/templates/css/Show_' . $showid . '.css';
				$csstag = '
<!--css for show'.$showid.'-->
<link rel="stylesheet" type="text/css" href="'.$cssfilename.'" />';
				if ( empty($this->CSSMetadata) ){
					$this->CSSMetadata = $csstag;
				}else{
					$this->CSSMetadata .= $csstag;
				}
	
			

			if ($animationtype == 'swfobject'){
				$this->smarty->assign('galleryitems',$galleryitems);
				
				// lead Scripts for SWFobject
				$template_metadata =	'
				<!--LOAD SHOWTIME swfobject-->
				<script type="text/javascript" src="'.$this->config['root_url'].
					'/modules/Showtime/showtime/swfobject/swfobject.js?ver=2.2"></script>
				<!--END SHOWTIME-->
				';
				if ( empty($this->SWFMetadata) ){
					$this->SWFMetadata = $template_metadata;
				}
				//finaly process template
				echo $this->ProcessTemplate('showtime_swf.tpl');
			}else{
				$smarty->assign_by_ref('items', $entryarray);

				// lead Scripts for jQuery
				if ($this->GetPreference("load_jQuery_scripts")){
				$template_metadata =	"
<!--LOAD SHOWTIME jQuery-->
	<script type=\"text/javascript\" src=\"".$this->config['root_url'].
				"/modules/Showtime/templates/jquery/jquery-1.4.2.js\" ></script>
	<script type=\"text/javascript\" src=\"".$this->config['root_url'].
				"/modules/Showtime/templates/jquery/jquery.cycle.all.min.js\" ></script>
<!--END SHOWTIME-->
";
				}else{
				$template_metadata =	"
<!--LOAD SHOWTIME jQuery-->
	<script type=\"text/javascript\" src=\"".$this->config['root_url'].
				"/modules/Showtime/templates/jquery/jquery.cycle.all.min.js\" ></script>
<!--END SHOWTIME-->
";
				}
				
				if ( empty($this->JQMetadata) ){
					$this->JQMetadata = $template_metadata;
				}
				
				//finaly process template
				echo $this->ProcessTemplate('showtime_jq.tpl');

			}


		 }else{ //No images found
			echo  "<br>".$this->Lang('default_addimages'). $showid ."<br>";
		 }//if $aantal <> 0
		$result->Close();
		//End Read the pictures

	}else{
		echo $this->Lang('changepic_noshow',$showid)."<br />";
	}//if recordCont >0
	
}else{
	echo $this->Lang('changepic_noshow2')."<br />";
}//if exist showid

?>
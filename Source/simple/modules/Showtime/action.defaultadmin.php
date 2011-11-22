<?php
if (!isset($gCms)) exit;
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}
$config = $gCms->config;
$create_watermark = false;

/**
 *  Process upload methode
 */
if( isset($params['optionssubmit']) ){
	$this->SetPreference("uploadmethode", $params['uploadmethode']);
	
	if (isset($params['load_jQuery_scripts'])){
		$this->SetPreference("load_jQuery_scripts", 1);
	}else{
		$this->SetPreference("load_jQuery_scripts", 0);
	}


	$smarty->assign('message',$this->Lang('admin_updated'));
	$params = array('active_tab' => 'options');
}

/**
 *  Process watermark
 */
if( isset($params['upload_submit'])){
	$params = array('active_tab' => 'watermark');
	
	$fieldName=$id.'input_browse';

	if (!isset ($_FILES[$fieldName]) || !isset ($_FILES)
		|| !is_array ($_FILES[$fieldName]) || !$_FILES[$fieldName]['name']){
		$params['message'] = $this->Lang('error_nofilesuploaded');
		$smarty->assign('message',$this->Lang('error_nofilesuploaded'));
	}else{
		$file = $_FILES[$fieldName];
		// cleanup the filename
		$pos = strrpos($file['name'], '.');
		include('../lib/replacement.php');
		$alias = substr($file['name'], 0, $pos);
		$alias = str_replace($toreplace, $replacement, $alias);
		$alias = preg_replace('/[^a-z0-9-_]+/i','-',$alias);
		$alias = trim($alias . substr($file['name'], $pos), '-');
		$uploadfile = $config['image_uploads_path'].'/'. $alias;
		
		if (!@move_uploaded_file($file['tmp_name'], $uploadfile))	{
			$smarty->assign('message',$this->Lang('error_nofilesuploaded'));
		}else{
			chmod($uploadfile, 0644);
			$this->SetPreference("watermark_file", $alias);
			$smarty->assign('message',$this->Lang('file_uploaded'));
			$create_watermark =true;
		}
	}
}

if( isset($params['watermark_submit']) ){
	$this->SetPreference("watermark_pos", $params['watermark_pos']);
	if (isset($params['watermark_onoff'])){
		$this->SetPreference("watermark_onoff", 1);
	}else{
		$this->SetPreference("watermark_onoff", 0);
	}

	$this->SetPreference("watermark_transparant", $params['watermark_transparant']);
	$this->SetPreference("watermark_padding_x", $params['watermark_padding_x']);
	$this->SetPreference("watermark_padding_y", $params['watermark_padding_y']);
	
	$smarty->assign('message',$this->Lang('admin_updated'));
	$params = array('active_tab' => 'watermark');
	$create_watermark =true;
}


/**
 *  crate new Example watermark if needed
 */
if 	($create_watermark){
	if ($this->GetPreference('watermark_file')=='watermark.png'){
		$watermark_file = $config['root_path'].'/modules/Showtime/images/watermark.png';
	}else{
		$watermark_file = $config['image_uploads_path'].'/'.$this->GetPreference("watermark_file");
	}
	if (file_exists($watermark_file)){
		$watermark = $this->imagecreatefromfile($watermark_file);
		$watermark_width = imagesx($watermark);
		$watermark_height = imagesy($watermark);
		imagecreatetruecolor($watermark_width, $watermark_height);
	
		//--- orriginele image
		$image = $this->imagecreatefromfile($config['root_path'].'/modules/Showtime/images/watermark_example_org.jpg');
		$size = getimagesize($config['root_path'].'/modules/Showtime/images/watermark_example_org.jpg');
		
		//--- Calculate position
		$padding_x = $this->GetPreference("watermark_padding_x");
		$padding_y = $this->GetPreference("watermark_padding_y");
		switch ($this->GetPreference("watermark_pos")){
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
		if ($this->GetPreference('watermark_onoff')){
			$transparentcy = $this->GetPreference("watermark_transparant");
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
		}
	
		//--- upload image
		imagejpeg($image, $config['root_path'].'/modules/Showtime/images/watermark_example_new.jpg'); // max. kwaliteit
	
		imagedestroy($image);
		imagedestroy($watermark);
	}else{
		// we did not find any watermark!
		$smarty->assign('message',$this->Lang('watermark_warning'));
	}
}


/**
 *  Create Tab headers
 */
$tabheader = $this->StartTabHeaders();
$active_tab = empty($params['active_tab']) ? '' : $params['active_tab'];
$tabheader .= $this->SetTabHeader('showoverview',$this->Lang('admin_taboverview'), ($active_tab == 'showoverview')?true:false);
$tabheader .= $this->SetTabHeader('options',$this->Lang('admin_tabgeneral'), ($active_tab == 'options')?true:false);
$tabheader .= $this->SetTabHeader('watermark',$this->Lang('admin_tabwatermark'), ($active_tab == 'watermark')?true:false);
$tabheader .= $this->EndTabHeaders();
$smarty->assign('tabheader',$tabheader);
// End tab headers

/**
 *  Show overview
 */
//The content of the tabs
$smarty->assign('starttab', $this->StartTabContent());
$smarty->assign('startshowoverview', $this->StartTab('showoverview', $params));//-----------------------------startab->

//asign table headers
$smarty->assign('th_name',$this->Lang('name'));
$smarty->assign('th_animationtype',$this->Lang('animationtype'));
$smarty->assign('th_tag',$this->Lang('admin_tag'));
$smarty->assign('th_slidecount',$this->Lang('admin_slidecount'));
$smarty->assign('th_editshow',$this->Lang('EditShow'));
$smarty->assign('th_editslides',$this->Lang('edit_slides'));
$smarty->assign('th_deleteshow',$this->Lang('delete_show'));

$smarty->assign('admin_upmethod',$this->Lang('admin_upmethod'));

$showlist="";
$counter=0;
// List all shows
$query = 'SELECT * FROM '.cms_db_prefix().'module_showtime_name';
$dbresult = $db->Execute($query);
if (false == $dbresult){
	echo $this->ShowErrors( $this->Lang('query_failed') );
}else{
	$smarty->assign('LinkAddshow', $this->CreateLink($id, 'addshow', $returnid,'<img src="../modules/Showtime/images/add_show.png" class="systemicon" alt="'.$this->Lang('addshow').'" title="'.$this->Lang('addshow').'">', array(), '', false, false, '') .' '. $this->CreateLink($id, 'addshow', $returnid, $this->Lang('addshow'), array(), '', false, false, ''));
	
	while( $dbresult && ($row = $dbresult->FetchRow()) ){
		// get amount pictures
		$query = 'SELECT * FROM '.cms_db_prefix().'module_showtime WHERE show_id='. $row['show_id'];
		$rs = $db->Execute($query);
		$rowcount = $rs->RecordCount();
		
		$counter++;
		($counter % 2 == 0)? $rowclass="row1" : $rowclass="row2";
		$showlist .="<tr class=\"".$rowclass."\" onmouseover=\"this.className='".$rowclass."hover'\" onmouseout=\"this.className='".$rowclass."'\">";
		$showlist .="<td>".$this->CreateLink($id, 'addslides', $returnid, $row['show_name'], 
			array('showid'=>$row['show_id']), '' , false, true, '')."</td>
			";
		$showlist .="<td>".
			$this->CreateLink($id, 'editshow', $returnid, 
			'<img src="../modules/Showtime/images/'.$row['st_animationtype'].'_icon.jpg " height="20" alt="'.$row['st_animationtype'].'" title="'.$this->Lang('edit_animationtype').$row['st_animationtype'].'">', 
			array('showid'=>$row['show_id']), '' , false, true, '')."</td>
			";		
		$showlist .="<td>".$this->CreateInputText($id,'tagbox',"{Showtime show='". $row['show_id']."'}",40,80)."</td>
			";
		$showlist .="<td class='pagepos'>$rowcount</td>
			";
		$showlist .="<td class='pagepos'>".
			$this->CreateLink($id, 'editshow', $returnid, '<img src="../modules/Showtime/images/showoptions_i.gif" alt="'.$this->Lang('EditShow').'" title="'.$this->Lang('EditShow').'">', 
			array('showid'=>$row['show_id']), '' , false, true, '')."</td>
			";		
		$showlist .="<td class='pagepos'>".
			$this->CreateLink($id, 'addslides', $returnid, 
			'<img src="../modules/Showtime/images/slides.png" alt="'.$this->Lang('edit_slides').'" title="'.$this->Lang('edit_slides').'">', 
			array('showid' =>  $row['show_id']))."</td>
			";	
		$showlist .="<td class='pagepos'>".
		$this->CreateLink($id, 'deleteshow', $returnid, 
			'<img src="../modules/Showtime/images/delete.gif" alt="'.$this->Lang('delete_show').'" title="'.$this->Lang('delete_show').'">', 
			array('showid'=>$row['show_id']), 
			$this->Lang('admin_delete_warning'). addcslashes($row['show_name'],"\\\'\"&\n\r<>"), false, true, '')."</td>
			";
		$showlist .="</tr>";		
	}
	
		$smarty->assign('showlist',$showlist);
}

$smarty->assign('endtab', $this->EndTab());//<--------------------------------------------------endtab


/**
 *  General options
 */
$smarty->assign('starttaboptions',$this->StartTab('options', $params));//-----------------------startab->
$smarty->assign('startform', $this->CreateFormStart ($id, 'defaultadmin', $returnid));
$smarty->assign('endform', $this->CreateFormEnd ());
$smarty->assign('uploadmethode', 
	$this->CreateInputRadioGroup($id,"uploadmethode",
		array($this->Lang('admin_swfupload')=>"swf",
		$this->Lang('admin_httpupload')=>"std"),
		$this->GetPreference('uploadmethode','swf'),'','<br /><br />'));
		
//load_jQuery_scripts
$this->smarty->assign('load_jQuery_scripts',
	$this->CreateInputCheckbox($id,'load_jQuery_scripts','true',($this->GetPreference("load_jQuery_scripts"))?'true':'false'));
$this->smarty->assign('jQuery_info',$this->Lang('loadjqueryscripts'));

	
$smarty->assign('submit', $this->CreateInputSubmit ($id, 'optionssubmit', $this->Lang('submit')));
	
$smarty->assign('endtabcontent', $this->EndTabContent());


/**
 *  Watermark settings
 */
$smarty->assign('starttabwatermark',$this->StartTab('watermark', $params));//-----------------------startab->
$rand = rand();
$smarty->assign('example_image',$config['root_url'].'/modules/Showtime/images/watermark_example_new.jpg?rand='.$rand);
$smarty->assign('watermark_example',$this->Lang('watermark_example'));
//current watermark
if ($this->GetPreference('watermark_file')=='watermark.png'){
	$smarty->assign('currentwatermark',$config['root_url'].'/modules/Showtime/images/watermark.png');
}else{
	$smarty->assign('currentwatermark',$config['image_uploads_url'].'/'.$this->GetPreference('watermark_file'));
}

$smarty->assign('watermark_current_info',$this->Lang('watermark_current'));

//building picutere import tools
$smarty->assign('upload_startform', $this->CreateFormStart($id,'defaultadmin',$returnid,'post', 'multipart/form-data'));
$smarty->assign('prompt_browse', $this->Lang('uploadwatermark'));
$smarty->assign('input_browse', $this->CreateFileUploadInput($id,'input_browse'));
$smarty->assign('upload_submit', $this->CreateInputSubmit($id,'upload_submit',$this->Lang('upload')));

//Watermark settings
$this->smarty->assign('watermark_onoff',
	$this->CreateInputCheckbox($id,'watermark_onoff','true',($this->GetPreference("watermark_onoff"))?'true':'false'));
if ($this->GetPreference("watermark_onoff")){
	$this->smarty->assign('watermark_onoff_images','true.png');
}else{
	$this->smarty->assign('watermark_onoff_images','false.png');
}
$this->smarty->assign('watermark_onoff_info',$this->Lang('watermark_onoff'));

$smarty->assign('watermark_pos', 
	$this->CreateInputRadioGroup($id,"watermark_pos",
	array('<img src="../modules/Showtime/images/nav_bottom_right.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"bottom_right",
		  '<img src="../modules/Showtime/images/nav_bottom_left.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"bottom_left",
		  '<img src="../modules/Showtime/images/nav_top_right.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"top_right",
		  '<img src="../modules/Showtime/images/nav_top_left.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"top_left"),
	$this->GetPreference("watermark_pos"),'',''));
$this->smarty->assign('watermark_position_info',$this->Lang('watermark_position'));

$this->smarty->assign('watermark_transparant',
	$this->CreateInputText($id,'watermark_transparant',$this->GetPreference("watermark_transparant"),5,5));
$this->smarty->assign('watermark_trans_warning',$this->Lang('watermark_trans_warning'));
$this->smarty->assign('watermark_trans_info',$this->Lang('watermark_trans'));
$this->smarty->assign('watermark_trans_100',$this->Lang('watermark_trans_100'));


$this->smarty->assign('watermark_padding_x',
	$this->CreateInputText($id,'watermark_padding_x',$this->GetPreference("watermark_padding_x"),5,5));
$this->smarty->assign('watermark_padding_y',
	$this->CreateInputText($id,'watermark_padding_y',$this->GetPreference("watermark_padding_y"),5,5));
$this->smarty->assign('watermark_margin_info',$this->Lang('watermark_margin'));
$this->smarty->assign('watermark_margin_lr',$this->Lang('watermark_margin_lr'));
$this->smarty->assign('watermark_margin_tb',$this->Lang('watermark_margin_tb'));

$smarty->assign('watermark_submit', $this->CreateInputSubmit ($id, 'watermark_submit', $this->Lang('submit')));

echo $this->ProcessTemplate('admin.tpl');

?>
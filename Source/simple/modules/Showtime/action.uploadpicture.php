<?php
if (!isset($gCms)) exit;
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}

$fieldName=$id.'input_browse';

$themeObject = $gCms->variables['admintheme'];	


if (isset( $params['pictureid'])){
	$params = array('showid' => $params['showid'], 'pictureid' => $params['pictureid'], 
					'curdir' => $params['curdir'], 'dir' => $params['dir']);		
}else{
	$params = array('showid' => $params['showid'],'curdir' => $params['curdir'], 'dir' => $params['dir']);		
}


if (!isset ($_FILES[$fieldName]) || !isset ($_FILES)
	|| !is_array ($_FILES[$fieldName]) || !$_FILES[$fieldName]['name']){
	$params['message'] = $this->Lang('error_nofilesuploaded');
	$this->Redirect($id, 'addpicture', '', $params);	
}else{
	$file = $_FILES[$fieldName];
	$curdir = (isset($params['curdir']) ? $params['curdir'] : '');
	$uploaddir = $config['image_uploads_path'].$curdir;
	$uploadfile = $uploaddir.'/'. $file['name'];


/**
 *  Create watermark if needed
 */
	$watermark_onoff = $this->GetPreference('watermark_onoff');
	$watermark_file = $this->GetPreference('watermark_file');
	$watermark_pos = $this->GetPreference('watermark_pos');
	$watermark_transparant = $this->GetPreference('watermark_transparant');
	$watermark_padding_x = $this->GetPreference('watermark_padding_x');
	$watermark_padding_y = $this->GetPreference('watermark_padding_y');
	
	if ($watermark_onoff){
		//--- transparante watermark
		if ($watermark_file=='watermark.png'){
			$watermark_file = $config['root_path'].'/modules/Showtime/images/watermark.png';
		}else{
			$watermark_file = $config['image_uploads_path'].'/'.$watermark_file;
		}
		if (file_exists($watermark_file)){
			$watermark = $this->imagecreatefromfile($watermark_file);
			$watermark_width = imagesx($watermark);
			$watermark_height = imagesy($watermark);
			imagecreatetruecolor($watermark_width, $watermark_height);
		
			//--- orriginele image
			$image = $this->imagecreatefromfile($file['tmp_name']);
			$size = getimagesize($file['tmp_name']);
		
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
			imagejpeg($image, $uploadfile); // max. kwaliteit
		
			imagedestroy($image);
			imagedestroy($watermark);
			if (isset($params['pictureid'])){
				$this->Redirect($id, 'changepicture', '', $params);	
			}else{
				$this->Redirect($id, 'addpicture', '', $params);	
			}
		}
	}else{//no watermark
		if (!@move_uploaded_file($file['tmp_name'], $uploadfile))	{
			$params['message'] = $this->Lang('error_nofilesuploaded');
			$this->Redirect($id, 'addpicture', '', $params);	
		}else{
			chmod($uploadfile, 0644);
			$params['message'] = 'pictureuploaded';
				if (isset($params['pictureid'])){
					$this->Redirect($id, 'changepicture', '', $params);	
				}else{
					$this->Redirect($id, 'addpicture', '', $params);	
				}
		}
	}
}

if (isset($params['pictureid'])){
	$this->Redirect($id, 'changepicture', '', $params);	
}else{
	$this->Redirect($id, 'addpicture', '', $params);	
}
?>

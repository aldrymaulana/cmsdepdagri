<?php
if (!isset($gCms)) exit;
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}

$config = $gCms->config;
$newparams = array();
$currentpic = '';
$currentthumb ='';

// SWFUpload settings
$ext = explode(',', 'jpg,jpeg,gif,png');
$filetypes = '*.' . implode(';*.', $ext);
$filedesc = ' Images: ' . implode('; ', $ext);
$filesize = str_replace('M',' MB',get_cfg_var('post_max_size'));
$smarty->assign('file_size_limit', $filesize);
$smarty->assign('file_types', $filetypes);
$smarty->assign('file_types_description', $filedesc);
$smarty->assign('msg_complete', '&' . $id . 'module_message=Picture updated');
$smarty->assign('sessionid',session_id());
$smarty->assign('maximagewidth',2000);
$smarty->assign('maximageheight',2000);

switch ($params['action']){
	case 'addpicture':
		$curdir = (isset($params['dir']) ? $this->ClearPath($params['dir']) : '') ;
		break;
	case 'changepicture':
		$curdir = (isset($params['dir']) ? $this->ClearPath($params['dir']) : dirname($currentpic)) ;
		//get currentpic from database. $pictureid
		$query = 'SELECT picture_path FROM '.cms_db_prefix().'module_showtime  WHERE picture_id = ?';
		$result = $db->Execute($query, array($pictureid));
		if ( $result && $result->RecordCount() > 0 ){
			while ( $row=$result->FetchRow() ){
				$currentpic= $row['picture_path'];
			}
		}
		break;
}


if ($curdir=='/') $curdir = '';
$dir = $this->ClearPath($config['image_uploads_path'].$curdir);


//we need this for SWFupload
$uploaddir = str_replace($config['root_url'],'',$config['image_uploads_url'].$curdir);
$_SESSION['uploaddir'] = trim($uploaddir,'/');
$_SESSION['rootpath'] = str_replace('\\', '/', $config['root_path']) . '/';

if (FALSE == is_dir($dir)){
	$dir = $config['image_uploads_path'];
	$curdir = '';
}
$dirlist = array();
$filelist = array();
$imagecount = 0;
$dh  = opendir($dir);

while (false !== ($filename = readdir($dh))){
	if ($filename=='.') continue;
	if ($filename=='..' && ($curdir=='' || $curdir=='/')) continue;
	// Check if this file is an image or a dir
	$extension = strtolower(substr(strrchr($filename, "."), 1));
	if ('jpeg' == $extension || 'jpg' == $extension || 'png' == $extension || 'gif' == $extension || is_dir($dir.'/'.$filename)){
		// keep going
	}else{
		continue;
	}
	$file = new stdClass();
	if (is_dir($dir.'/'.$filename)){
		if ($filename=='..'){
			$newparams = array_merge($params, array('dir' => str_replace(DIRECTORY_SEPARATOR, '/',dirname($curdir))   ));
			$file->icon = $this->CreateLink($id, $params['action'], $returnid, 
			'<img src="../modules/Showtime/images/upfolder.gif" alt="'.
			$this->Lang('browse_prev_map').'" title="'.$this->Lang('browse_prev_map').'" class="systemicon">', $newparams);
			$file->name = $this->CreateLink($id, $params['action'], $returnid, $this->Lang('browse_prev_map'), $newparams);
		}else{
			$newparams = array_merge($params, array('dir' => $this->ClearPath($curdir.'/'.$filename)));
			$file->icon = $this->CreateLink($id, $params['action'], $returnid, 
			'<img src="../modules/Showtime/images/folder.gif" alt="'.$this->Lang('browse_browse_map').'" title="'.$this->Lang('browse_browse_map').'" class="systemicon">', $newparams);
			$file->name = $this->CreateLink($id, $params['action'], $returnid, $filename, $newparams);
		}

		$dirlist[$filename] = $file;
	}else{
		if (substr($filename,0,6) == 'thumb_') continue;
		$thumbname = 'thumb_'.$filename;
		$file->name =  $filename;
		$file->style = '';
		if ($currentpic == $curdir.'/'.$filename){
			$file->current = $this->Lang('browse_current_pic');
		}else{
			$file->current = '';
		}
		
		$imagecount++;
		$imageid = 'image'.$imagecount;
		$file->onmouseover =  "document.getElementById('".$imageid."').style.display='block'";
		$file->onmouseout =  "document.getElementById('".$imageid."').style.display='none'";

		// Check if this file is an image
		$extension = strtolower(substr(strrchr($filename, "."), 1));
		if ('jpeg' == $extension || 'jpg' == $extension || 'png' == $extension || 'gif' == $extension) {
			$is_image = TRUE;
		} else {
			$is_image = FALSE;
		}
			
		if (TRUE == $is_image && file_exists($dir.'/'.$thumbname)){
			$file->thumbpath = $config['image_uploads_url'].$curdir.'/'.$thumbname;
			$size = getimagesize($dir.'/'.$thumbname);
			$height = min($size[1], floor($size[1] * 30 / $size[0]),30);
			$width = min($size[0], floor($size[0] * 30 / $size[1]),30);
			$file->icon = '<img src="'.$file->thumbpath.'" alt="" class="systemicon" width="'.$width.'" height="'.$height.'"/>';
		}else{
			$file->thumbpath = $config['root_url'].'/lib/filemanager/ImageManager/thumbs.php?img='.urlencode($curdir.'/'.$filename);
			if (TRUE == $is_image && 0 != filesize($dir.'/'.$filename)) {
				$size = getimagesize($dir.'/'.$filename);
				// echo $filename;
				if ($size[0] != 0 && $size[1] != 0) {
					$height = min($size[1], floor($size[1] * 30 / $size[0]),30);
					$width = min($size[0], floor($size[0] * 30 / $size[1]),30);
					$file->icon = '<img src="'.$file->thumbpath.'" alt="" class="systemicon" width="'.$width.'" height="'.$height.'"/>';
				} else {
					$file->icon = $this->lang('nothumbnail');
				}
			} else {
				$file->icon = $this->lang('nothumbnail');
			}
		}
		$file->imagepath = $config['image_uploads_url'].$curdir.'/'.$filename;
		$file->id = $imageid;
		
		$file->select = '';
		$file->usepicture = '';
		switch ($params['action']){
			case 'addpicture' :
				$file->select = $this->CreateInputCheckbox($id, 'img_'.$imagecount, $curdir.'/'.$filename);
				break;
			default :
				$file->usepicture =  $this->CreateLink($id, $params['action'], $returnid, 
				'<img src="../modules/Showtime/images/replace.png" alt="'.
				$this->Lang('selectpicture').'" title="'.$this->Lang('selectpicture').'" class="systemicon">',
				 array('pictureid'=>$pictureid,'showid'=>$showid,'filename'=>$curdir.'/'.$filename));
		}
		$filelist[$filename] = $file;
	}
	
}
if (isset($dh))
	closedir($dh);


ksort($dirlist);
ksort($filelist);


$smarty->assign_by_ref('dirs', $dirlist);
$smarty->assign_by_ref('files', $filelist);

$smarty->assign('titlename', $this->Lang('name'));

if ($params['action']=='addpicture'){
	$link = '<a href="" onclick="selectall(); return false;">';
	$link .= '<img src="'.$config['root_url'].'/modules/Showtime/images/newfolder.gif" alt="" class="systemicon"/>';
	$link .= $this->Lang('selectall');
	$link .= '</a>';
	
	$script = '<script type="text/javascript">
function selectall()
{
	checkboxes = document.getElementsByTagName("input");
	for (i=0; i<checkboxes.length ; i++)
	{
		if (checkboxes[i].type == "checkbox") checkboxes[i].checked=true;
	}
}
</script>';
} else {
	$script = '';
	$link = '';
}

if ($this->Getpreference('uploadmethode')=='std'){
	if (isset($params['message'])){
		$smarty->assign('message',$params['message']);
	}
	//building picutere import tools
	$smarty->assign('startform', $this->CreateFormStart($id,'uploadpicture',$returnid,'post', 'multipart/form-data'));
	$smarty->assign('prompt_browse', $this->Lang('uploadpicture'));
	$smarty->assign('input_browse', $this->CreateFileUploadInput($id,'input_browse'));
	$smarty->assign('submit', $this->CreateInputSubmit($id,'submit',$this->Lang('upload')));
	$smarty->assign('showid',$this->CreateInputHidden($id, 'showid', $showid));
	if (isset($pictureid)){
		$smarty->assign('pictureid',$this->CreateInputHidden($id, 'pictureid', $pictureid));
	}else{
		$smarty->assign('pictureid','');
	}
	$smarty->assign('hidden',$this->CreateInputHidden($id, 'curdir', $curdir).
	$this->CreateInputHidden($id, 'dir', $curdir));
	$smarty->assign('endform',$this->CreateFormEnd());
	$smarty->assign('uploadmethode','std');	
}else{
	$smarty->assign('uploadmethode','swf');	
}
	$smarty->assign('titlemessage', '<p class="pagemessage">'.$this->Lang($params['action']).'</p>');
	$smarty->assign('uploadimages',$this->Lang('uploadimages'));

echo $this->ProcessTemplate('import.tpl');



$smarty->assign('selectall',$link);
$smarty->assign('selectallscript',$script);

if ($params['action']=='addpicture'){
	$submit_button = $this->CreateInputSubmit($id, 'submit',$this->Lang('submit'));
} else {
	$submit_button = '';
}
$smarty->assign('StarForm', $this->CreateFormStart($id, $params['action'], $returnid));
$smarty->assign('submit',$submit_button);
$smarty->assign('cancel',$this->CreateInputSubmit($id, 'cancel',$this->Lang('cancel')));
$hidden = "";
if (isset($showid)) $hidden.= $this->CreateInputHidden($id, 'showid',$showid);
if (isset($pictureid)) $hidden.= $this->CreateInputHidden($id, 'pictureid',$pictureid);
if (isset($pictype)) $hidden.= $this->CreateInputHidden($id, 'pictype',$pictype);
if (isset($curdir)) $hidden.= $this->CreateInputHidden($id, 'curdir', $curdir);
$smarty->assign('hidden',$hidden);
$smarty->assign('Formend', $this->CreateFormEnd());
echo $this->ProcessTemplate('browsepictures.tpl');

?>

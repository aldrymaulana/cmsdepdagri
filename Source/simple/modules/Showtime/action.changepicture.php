<?php
if (!isset($gCms)) exit;
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}

$pictureid = (isset($params['pictureid']) ? $params['pictureid'] : '');
$showid = (isset($params['showid']) ? $params['showid'] : '');

if ($pictureid == '')
	$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));


if (isset($params['cancel'])){
	$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));
}

if (isset($params['filename'])){
	$newpic = $params['filename']; 
	$newthumb = str_replace(DIRECTORY_SEPARATOR, '/',dirname($newpic)).'/thumb_'.basename($newpic);
	if (!file_exists($config['image_uploads_path'].$newthumb))
		$newthumb = '';
	$query = 'UPDATE '.cms_db_prefix().'module_showtime SET picture_path=?, thumbnail_path=? WHERE picture_id = ?';
	$db->Execute($query, array($newpic, $newthumb,$pictureid));
	$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid, 'message'=>$this->Lang('changepic_message')));
}
include dirname(__FILE__).'/lib.browsepictures.php';
?>
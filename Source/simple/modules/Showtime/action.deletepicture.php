<?php
if (!isset($gCms)) exit;

$pictureid = (isset($params['pictureid']) ? $params['pictureid'] : '');
$showid = (isset($params['showid']) ? $params['showid'] : '');

if ($pictureid == '')
	$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));


if (isset($params['cancel'])) 
	$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));
	
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}


$query = 'SELECT * FROM '.cms_db_prefix().'module_showtime WHERE picture_id = ?';
$dbresult = $db->Execute($query, array($pictureid));

while (($row = $dbresult->FetchRow())){
	$picturenumber = $row['picture_number'];
}

$query = "DELETE FROM ".cms_db_prefix()."module_showtime WHERE picture_id = ?";
$db->Execute($query, array($pictureid));


//Renumber if needed
$query = 'UPDATE '.cms_db_prefix().'module_showtime SET picture_number=picture_number-1 WHERE picture_number > ? AND show_id=?';
$db->Execute($query, array($picturenumber, $showid));

$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid, 'message'=>$this->Lang('addslides_deletesuccess')));


?>
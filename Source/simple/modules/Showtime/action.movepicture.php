<?php
if (!isset($gCms)) exit;

$pictureid = (isset($params['pictureid']) ? $params['pictureid'] : '');
$showid = (isset($params['showid']) ? $params['showid'] : '');

if ($pictureid == '')
	$this->Redirect($id, 'defaultadmin', $returnid);

$direction = (isset($params['direction']) ? $params['direction'] : '');
if ($direction != 'up' && $direction!='down')
	$this->Redirect($id, 'defaultadmin', $returnid);

if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}


// read picturenumber
$query = 'SELECT * FROM '.cms_db_prefix().'module_showtime WHERE picture_id = ? AND show_id = ?';
$dbresult = $db->Execute($query, array($pictureid, $showid));
while (($row = $dbresult->FetchRow())){
	$picturenumber = $row['picture_number'];
}

if ($direction == 'up')
	$newpicturenumber = $picturenumber-1;
else
	$newpicturenumber = $picturenumber+1;

//Renumber picturenumber
$query = 'UPDATE '.cms_db_prefix().'module_showtime SET picture_number=? WHERE picture_number=? AND show_id = ?';
$db->Execute($query, array($picturenumber,$newpicturenumber, $showid));
$query = 'UPDATE '.cms_db_prefix().'module_showtime SET picture_number=? WHERE picture_id=? AND show_id = ?';
$db->Execute($query, array($newpicturenumber,$pictureid, $showid));

$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));


?>
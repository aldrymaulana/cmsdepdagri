<?php
if (!isset($gCms)) exit;

$pictureid = (isset($params['pictureid']) ? $params['pictureid'] : '');
$showid = (isset($params['showid']) ? $params['showid'] : '');

if ($pictureid == '')
	$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));


$direction = (isset($params['direction']) ? $params['direction'] : '');
if ($direction != 'up' && $direction!='down')
	$this->Redirect($id, 'defaultadmin', $returnid);

if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}

if ($direction == 'up')
	$activatethis = '1';
else
	$activatethis = '0';

//Renumber if needed
$query = 'UPDATE '.cms_db_prefix().'module_showtime SET active=? 
	WHERE picture_id=?';
$db->Execute($query, array($activatethis,$pictureid));

$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));


?>
<?php
if (!isset($gCms)) exit;

$showid = (isset($params['showid']) ? $params['showid'] : '');
if ($showid == '')
	$this->Redirect($id, 'defaultadmin', $returnid);

if (isset($params['cancel'])) 
	$this->Redirect($id, 'defaultadmin', $returnid);
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}

$query = "DELETE FROM ".cms_db_prefix()."module_showtime_name WHERE show_id = ?";
$db->Execute($query, array($showid));

//delete css file
$cssfilename = '../modules/Showtime/templates/css/Show_' . $showid . '.css';
if(file_exists($cssfilename)){
	unlink($cssfilename);
}



//Update search index
$module =& $this->GetModuleInstance('Search');
if ($module != FALSE)
  {
    $module->DeleteWords($this->GetName(), $showid, 'show');
  }
	$this->Redirect($id, 'defaultadmin', $returnid);


?>
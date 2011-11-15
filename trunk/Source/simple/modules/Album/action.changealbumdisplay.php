<?php

if (!isset($gCms)) exit;

if (isset($params['cancel'])) 
	$this->Redirect($id, 'defaultadmin', $returnid);
if(! $this->CheckPermission( 'Use Album' ) ) exit;


$albumtemplate = (isset($params['albumtemplate']) ? $params['albumtemplate'] : 'default');
$albumcolumns = (isset($params['albumcolumns']) ? $params['albumcolumns'] : '0');
$albumrows = (isset($params['albumrows']) ? $params['albumrows'] : '0');

$albumid = (isset($params['albumid']) ? $params['albumid'] : '');
if ($albumid == '') exit;
// Clear the site cache
global $gCms;
$contentops =& $gCms->GetContentOperations();
$contentops->ClearCache();
$query = 'UPDATE '.cms_db_prefix().'module_album_albums SET template=?,column_number=?,row_number=? WHERE album_id = ?';
$db->Execute($query, array($albumtemplate,$albumcolumns,$albumrows,$albumid));
$params = array('albumid' => $albumid, 'tab_message' => 'propertiesupdated', 'active_tab' => 'properties');
$this->Redirect($id, 'editalbum', $returnid, $params);

?>

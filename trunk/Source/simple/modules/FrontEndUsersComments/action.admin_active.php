<?php
/***************************************************************************
 *                              action.admin_active.php
 *                            -------------------
 *   begin                : 27 nov. 08
 * 	 author				  : Alexandre Courtois
 *   email                : alexandre.courtois@gmail.com
 *
 ***************************************************************************/
 
if(!isset($gCms)) exit;

require_once('lib/comment.class.php');
$db =& $gCms->GetDb();

$com = new comment($db,array('comment_id' => $params['commentid']));

$com->activate(!$params['current_status']);

$newParams = array('tab_message'=> 'commentactivated', 'active_tab' => 'home');
$this->Redirect($id, 'defaultadmin', $returnid, $newParams);

?>

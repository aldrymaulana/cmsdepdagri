<?php
/***************************************************************************
 *                              action.admin_delete.php
 *                            -------------------
 *   begin                : 26 nov. 08
 * 	 author				  : Alexandre Courtois
 *   email                : alexandre.courtois@gmail.com
 *
 ***************************************************************************/

if(!isset($gCms)) exit;

require_once('lib/comment.class.php');
$db =& $gCms->GetDb();

if(isset($params['commentid'])) {
	$com = new comment($db,array('comment_id' => $params['commentid']));
	$com->delete();
	$newParams = array('tab_message'=> 'commentdeleted', 'active_tab' => 'home');
}
else {
	$newParams = array('error'=> $this->Lang('commentidUndef'), 'active_tab' => 'home');
}
$this->Redirect($id, 'defaultadmin', $returnid, $newParams);
?>

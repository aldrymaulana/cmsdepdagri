<?php
/***************************************************************************
 *                              action.admin_edit_sql.php
 *                            -------------------
 *   begin                : 27 nov. 08
 * 	 author				  : Alexandre Courtois
 *   email                : alexandre.courtois@gmail.com
 *
 ***************************************************************************/
 
if(!isset($gCms)) exit;

require_once('lib/comment.class.php');
$db =& $gCms->GetDb();

$disable_html = $this->GetPreference('disable_html',1);
if($disable_html == 1) {
	$comment_data = htmlspecialchars($params['comment_data']);
}
else {
	$comment_data = $params['comment_data'];
}

$active = 0;
if(isset($params['active']))
	$active = 1;

$com = array('comment_id' => $params['comment_id'],
				'comment_data' => $comment_data,
				'active' => $active
			);

$updatedCom = new comment($db);
$updatedCom->update($com);

$newParams = array('tab_message'=> 'commentupdated', 'active_tab' => 'home');
$this->Redirect($id, 'defaultadmin', $returnid, $newParams);

?>

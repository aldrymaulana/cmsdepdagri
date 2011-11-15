<?php
/***************************************************************************
 *                              action.admin_edit.php
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
####### Get comment's datas
	$com = new comment($db,array('comment_id' => $params['commentid']));
	$com->getComment();

####### Building form fields
	$startForm = $this->CreateFormStart($id, 'admin_edit_sql', $returnid);
// Hidden fields
	$comment_id = $this->CreateInputHidden($id,'comment_id',$com->comment_id);
// Form inputs
	$inputComment_data = $this->CreateTextArea(false, $id, $com->comment_data,'comment_data');
	$inputActive = $this->CreateInputCheckbox($id, 'active', 1, $com->active);
	$submit = $this->CreateInputSubmit($id, 'submit', $this->Lang('submit'));
	$endForm = $this->CreateFormEnd();

####### Smarty assign
// Errors
	$this->smarty->assign('error',$params['error']);
// language datas
	$this->smarty->assign('user', $this->Lang('user'));
	$this->smarty->assign('date', $this->Lang('date'));
	$this->smarty->assign('comment', $this->Lang('comment'));
	$this->smarty->assign('visible', $this->Lang('visible'));
// Form datas
	$this->smarty->assign_by_ref('com', $com);
	$this->smarty->assign('startForm', $startForm);
	$this->smarty->assign('hiddens', $comment_id);
	$this->smarty->assign('inputComment_data', $inputComment_data);
	$this->smarty->assign('inputActive', $inputActive);
	$this->smarty->assign('submit', $submit);
	$this->smarty->assign('endForm', $endForm);
	
####### Rendering form
	echo $this->ProcessTemplate('admin.edit_comment.tpl');
}
else {
	$newParams = array('error'=> $this->Lang('commentidUndef'), 'active_tab' => 'home');
	$this->Redirect($id, 'defaultadmin', $returnid, $newParams);
}

?>

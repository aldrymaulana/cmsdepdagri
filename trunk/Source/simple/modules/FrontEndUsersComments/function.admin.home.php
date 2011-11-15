<?php
/***************************************************************************
 *                              function.admin.home.php
 *                            -------------------
 *   begin                : 14 nov. 08
 *   copyright            : (C) 2006 Anyware Hosting
 * 	 author				  : Alexandre Courtois
 *   email                : alexandre@anyware-hosting.co.uk
 *
 ***************************************************************************/
 
if(!isset($gCms)) exit;

require_once('lib/comment.class.php');
$db =& $gCms->GetDb();

$moderate = $this->GetPreference('moderate',0);
$number = $this->GetPreference('nbCommentsPerPage_admin',25);

$this->smarty->assign('error', $params['error']);

// Table's headers
$this->smarty->assign('date', $this->Lang('date'));
$this->smarty->assign('user', $this->Lang('user'));
$this->smarty->assign('module', $this->Lang('module'));
$this->smarty->assign('pageid', $this->Lang('pageid'));
$this->smarty->assign('comment', $this->Lang('comment'));
$this->smarty->assign('nocomment', $this->Lang('nocomment'));

$p = 1;
if(isset($params['p']))
	$p = $params['p'];
$cl = new commentList(-1,'','DESC',$p,$number);

// Get all comments paginated
$commentLines = array();
$i = 0;
foreach($cl->comments as $com) {
	$linkActive = '&nbsp;';

	if($com->active == 1) {
		$linkActive = $this->CreateLink($id, 'admin_active', $returnid, $gCms->variables['admintheme']->DisplayImage('icons/system/true.gif', $this->Lang('unactive'),'','','systemicon'), array('commentid'=>$com->comment_id,'current_status' => $com->active));
	}
	else {
		$linkActive = $this->CreateLink($id, 'admin_active', $returnid, $gCms->variables['admintheme']->DisplayImage('icons/system/false.gif', $this->Lang('active'),'','','systemicon'), array('commentid'=>$com->comment_id,'current_status' => $com->active));
	}
	$linkDelete = $this->CreateLink($id, 'admin_delete', $returnid, $gCms->variables['admintheme']->DisplayImage('icons/system/delete.gif', $this->Lang('delete'),'','','systemicon'), array('commentid'=>$com->comment_id), $this->Lang('delete_confirm'));
	$linkEdit = $this->CreateLink($id, 'admin_edit', $returnid, $gCms->variables['admintheme']->DisplayImage('icons/system/edit.gif', $this->Lang('edit'),'','','systemicon'), array('commentid'=>$com->comment_id));
	$commentLines[$i]['com'] = $com;
	$commentLines[$i]['linkDelete'] = $linkDelete;
	$commentLines[$i]['linkEdit'] = $linkEdit;
	$commentLines[$i]['linkActive'] = $linkActive;
	$i++;
}
$this->smarty->assign_by_ref('comments', $commentLines);

// Pagination
$nbComms = $this->nbCommentsAdmin();
$paginator = '';
if($nbComms > $number) {
	$nbPages = round($nbComms / $number);
	$paginator = '<div>';
	if($p > 1) {
		$paginator .= $this->CreateLink($id,'defaultadmin',$returnid,'&lt;&lt;',array('p' => 1));//'<a href="' . $requestURL . '?p=1">&lt;&lt;</a>&nbsp;';
		$paginator .= '&nbsp;' . $this->CreateLink($id,'defaultadmin',$returnid,'&lt;',array('p' => ($p-1)));//'<a href="' . $requestURL . '?p=' . ($p-1) . '">&lt;</a>&nbsp;';
	}
	$paginator .= '&nbsp;' . $this->Lang('currentPage',$p,$nbPages);
	if($p < $nbPages) {
		$paginator .= '&nbsp;' . $this->CreateLink($id,'defaultadmin',$returnid,'&gt;',array('p' => ($p+1)));//'&nbsp;<a href="' . $requestURL . '?p=' . ($p+1) . '">&gt;</a>&nbsp;';
		$paginator .= '&nbsp;' . $this->CreateLink($id,'defaultadmin',$returnid,'&gt;&gt;',array('p' => $nbPages));//'<a href="' . $requestURL . '?p=' . $nbPages . '">&gt;&gt;</a>';
	}
	$paginator .= '</div>';
}
$this->smarty->assign('paginator', $paginator);

echo $this->ProcessTemplate('admin.home.tpl');

?>

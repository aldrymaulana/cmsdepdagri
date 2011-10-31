<?php
/*======================================================================================
Module: AComments
======================================================================================*/

// Check authorisation
if ( !isset($gCms) ) exit;
check_login();
if ( !$this->CheckPermission('Manage AComments') ) exit;

// Set Tab name
$tabto = 'comments';

// Check if Comment is given and get Comment ID
$comment = 0;
if (isset($params['comment'])) $comment = (int)$params['comment'];
$new = 0;
if (isset($params['new'])) $new = (int)$params['new'];

// Display form for editing a comment
if ($comment>0 || $new>0) {

	// Check if comment is new
	#if ($comment<1 && $new>0) {
	#	$res = $db->Execute('UPDATE '.cms_db_prefix().'module_acomments_seq SET id = id + 1',array());
	#	$comment = $db->GetOne('SELECT id FROM '.cms_db_prefix().'module_acomments_seq LIMIT 1', array());
	#}

	// Get comment info
	if(!$commentinfo = $db->GetRow('SELECT comment_id,comment_data,comment_date,comment_author,author_email,author_website,page_id,module_name,active,create_date,modified_date,comment_title,trackback,editor,author_notify,notified,ip FROM '.cms_db_prefix().'module_acomments WHERE comment_id = ?', array($comment))) {
		$commentinfo = array('comment_id'=>$comment, 'comment_data'=>'', 'comment_date'=>date('Y-m-d H:i:s'), 'comment_author'=>'', 'author_email'=>'', 'author_website'=>'', 'page_id'=>'', 'module_name'=>'', 'active'=>'', 'create_date'=>'', 'modified_date'=>'', 'comment_title'=>'', 'trackback'=>'', 'editor'=>'', 'author_notify'=>'', 'notified'=>'', 'ip'=>'');
	}
    // Assign Smarty vars
    $smarty->assign('formstart',$this->CreateFormStart($id,'admin_editcomment',$returnid,'post','multipart/form-data',true,array()));
    $smarty->assign('formend', $this->CreateFormEnd());
    $smarty->assign('submit', $this->CreateInputSubmit($id,$comment ? 'submit': 'add',$this->Lang('submit')));
    $smarty->assign('cache', $this->CreateInputSubmit($id,$comment ? 'cache' : 'cacheadd',$this->Lang('cache')));
    $smarty->assign('reset', $this->CreateInputReset($id,'reset',$this->Lang('reset')));
    $smarty->assign('cancel', $this->CreateInputSubmit($id,'cancel',$this->Lang('cancel')));
    $smarty->assign('tabto', $this->CreateInputHidden($id,'tabto',$tabto));
    $smarty->assign('comment', $this->CreateInputHidden($id,'comment',$comment));
    $smarty->assign('commentedit', $this->Lang('commentedit'));
	$smarty->assign('prompt_comment_id', $this->Lang('id'));
    $smarty->assign('comment_id', $commentinfo['comment_id']);
	$smarty->assign('prompt_comment_title', $this->Lang('comment_title'));
	$smarty->assign('input_comment_title', $this->CreateInputText($id,'comment_title',$commentinfo['comment_title'],50,250));
	$smarty->assign('prompt_active', $this->Lang('active'));
	$smarty->assign('input_active', $this->CreateInputCheckbox($id, 'active', 'true', $commentinfo['active'] ? 'true' : 'false'));
	$smarty->assign('prompt_comment', $this->Lang('comment'));
	$smarty->assign('input_comment', $this->CreateTextArea(false, $id, $commentinfo['comment_data'], 'comment_data', 'pagetextarea'));
	$smarty->assign('prompt_page_id', $this->Lang('page'));
	$smarty->assign('input_page_id', $this->CreateInputText($id,'page_id',$commentinfo['page_id'],4,11));
	#$smarty->assign('input_page_id',$contentops->CreateHierarchyDropdown('',$commentinfo['page_id'],$id.'page',0,1,0,1)); // current, parent, parent_id, allowcurrent, use_perms, ignore_current, allow_all
	$smarty->assign('prompt_module_name', $this->Lang('modulename'));
	$smarty->assign('input_module_name', $this->CreateInputText($id,'module_name',$commentinfo['module_name'],25,100));
	$smarty->assign('prompt_editor', $this->Lang('editor'));
	$smarty->assign('input_editor', $this->CreateInputCheckbox($id, 'editor', 'true', $commentinfo['editor'] ? 'true' : 'false'));
	$smarty->assign('prompt_trackback', $this->Lang('trackback'));
	$smarty->assign('input_trackback', $this->CreateInputCheckbox($id, 'trackback', 'true', $commentinfo['trackback'] ? 'true' : 'false'));
	$smarty->assign('prompt_comment_date', $this->Lang('date'));
	$smarty->assign('input_comment_date', $this->CreateInputText($id,'comment_date',$commentinfo['comment_date'],20,20));
	$smarty->assign('prompt_comment_author', $this->Lang('author'));
	$smarty->assign('input_comment_author', $this->CreateInputText($id,'comment_author',$commentinfo['comment_author'],50,250));
	$smarty->assign('prompt_author_email', $this->Lang('email'));
	$smarty->assign('input_author_email', $this->CreateInputText($id,'author_email',$commentinfo['author_email'],50,250));
	$smarty->assign('prompt_author_website', $this->Lang('website'));
	$smarty->assign('input_author_website', $this->CreateInputText($id,'author_website',$commentinfo['author_website'],50,250));
	$smarty->assign('prompt_author_notify', $this->Lang('authornotify'));
	$smarty->assign('input_author_notify', $this->CreateInputCheckbox($id, 'author_notify', 'true', $commentinfo['author_notify'] ? 'true' : 'false'));
	$smarty->assign('prompt_notified', $this->Lang('notified'));
	$smarty->assign('input_notified', $this->CreateInputCheckbox($id, 'notified', 'true', $commentinfo['notified'] ? 'true' : 'false'));
	$smarty->assign('prompt_ip', $this->Lang('ip'));
	$smarty->assign('input_ip', $this->CreateInputText($id,'ip',$commentinfo['ip'],25,25));
    // Display Template
    echo $this->ProcessTemplate('admin_editcomment.tpl');

}

// Display a list with available comments
else {

	// Set vars and images
	$imagenostandard = $gCms->variables['admintheme']->DisplayImage('icons/system/false.gif',$this->Lang('makestandard'),'','','systemicon');
	$imageinactive = $gCms->variables['admintheme']->DisplayImage('icons/system/false.gif',$this->Lang('makeactive'),'','','systemicon');
	$imagestandard = $gCms->variables['admintheme']->DisplayImage('icons/system/true.gif',$this->Lang('standard'),'','','systemicon');
	$imageactive = $gCms->variables['admintheme']->DisplayImage('icons/system/true.gif',$this->Lang('makeinactive'),'','','systemicon');
	$imageedit = $gCms->variables['admintheme']->DisplayImage('icons/system/edit.gif',$this->Lang('edit'),'','','systemicon');
	$imagedelete = $gCms->variables['admintheme']->DisplayImage('icons/system/delete.gif',$this->Lang('delete'),'','','systemicon');
	$imagenew = $gCms->variables['admintheme']->DisplayImage('icons/system/newobject.gif',$this->Lang('newtemplate'),'','','systemicon');

	// Get comments
	$allcomments = $db->GetAll('SELECT comment_id id,comment_title,comment_data,comment_author,comment_date,active,trackback,editor,create_date,modified_date FROM '.cms_db_prefix().'module_acomments ORDER BY comment_date DESC');
	if (!is_array($allcomments)) $allcomments = array();

	// Show domain
	$rowarray = array();
	$rowclass = 'row1';
	foreach ( $allcomments as $c ) {
		// Build a new row
		$row = new StdClass();
		$row->rowclass = $rowclass;
		// ID
		$row->id = $c['id'];
		// Build comment with edit link
		$row->comment = trim(strip_tags($c['comment_title']));
		if (!$row->comment) $row->comment = trim(substr(strip_tags($c['comment_data']),0,20)).'...';
		$row->comment = $this->CreateLink( $id, 'admin_editcomment', $returnid, $row->comment, array ( 'tabto'=>$tabto, 'comment'=>$c['id'] ), '', false, false, ' title="'.$this->Lang('edit').'"');
		// Comment Author
		$row->author = $c['comment_author'];
		// Comment date
		$row->date = $c['comment_date'];
		// Is this comment a trackback?
		$row->trackback = $c['trackback']==1 ? 1 : 0;
		// Is this comment an editor comment?
		$row->editor = $c['editor']==1 ? 1 : 0;
		// Build link for de-/activate the comment
		$active = $c['active'] ? 1 : 0;
		if ( $active ) { $row->active = $this->CreateLink( $id, 'admin_commentactive', $returnid, $imageactive, array ( 'tabto'=>$tabto, 'comment'=>$c['id'], 'active'=>0 ), $this->Lang('reallymakeinactive'), false, false, ' title="'.$this->Lang('makeinactive').'"'); }
		else { $row->active = $this->CreateLink( $id, 'admin_commentactive', $returnid, $imageinactive, array ( 'tabto'=>$tabto, 'comment'=>$c['id'], 'active'=>1 ), $this->Lang('reallymakeactive'), false, false, ' title="'.$this->Lang('makeactive').'"'); }
		// Build edit icon
		$row->editlink = $this->CreateLink( $id, 'admin_editcomment', $returnid, $imageedit, array ( 'tabto'=>$tabto, 'comment'=>$c['id'] ), '', false, false, ' title="'.$this->Lang('edit').'"');
		// Build delete icon
		if ( $default ) { $row->deletelink = '&nbsp;'; }
		else { $row->deletelink = $this->CreateLink( $id, 'admin_deletecomment', $returnid, $imagedelete, array ( 'tabto'=>$tabto, 'comment'=>$c['id'] ), $this->Lang('reallydelete'), false, false, ' title="'.$this->Lang('delete').'"'); }
		// Merge new comment to array
		array_push ($rowarray, $row);
		// Alternate row color
		($rowclass == "row1" ? $rowclass = "row2" : $rowclass = "row1");
	}

	// Assign smarty vars
	$smarty->assign('items', $rowarray );
	$smarty->assign('id', $this->Lang('id'));
	$smarty->assign('comment', $this->Lang('comment'));
	$smarty->assign('author', $this->Lang('author'));
	$smarty->assign('editor', $this->Lang('editor'));
	$smarty->assign('trackback', $this->Lang('trackback'));
	$smarty->assign('date', $this->Lang('date'));
	$smarty->assign('active', $this->Lang('active'));
	$smarty->assign('yes', $this->Lang('yes'));
	$smarty->assign('no', $this->Lang('no'));
	$smarty->assign('newcommentlink', $this->CreateLink( $id, 'admin_editcomment', '', $imagenew.' '.$this->Lang('newcomment'), array ( 'tabto'=>$tabto, 'comment'=>'', 'new'=>1 ), '', false, false, ' title="'.$this->Lang('newcomment').'"'));
	#$smarty->assign($this->CreateFormEnd());
	echo $this->ProcessTemplate('admin_listcomments.tpl');

}

// EOF
<?php
/*======================================================================================
Module: AComments
======================================================================================*/

// Check authorisation
if ( !isset($gCms) ) exit;
check_login();
if ( !$this->CheckPermission('Manage AComments') ) exit;

// Get POST data
$tabto = preg_replace('/[^0-9a-zA-Z_]/','',$params['tabto']);
$new = 0;
if (isset($params['new'])) $new = (int)$params['new'];
$ecomment = array();
$ecomment['id'] = (int)$params['comment'];
$ecomment['comment_title'] = trim($params['comment_title']);
$ecomment['active'] = $params['active'] ? 1 : 0;
$ecomment['comment_data'] = $params['comment_data'];
$ecomment['page_id'] = (int)$params['page_id'];
$ecomment['module_name'] = trim($params['module_name']);
$ecomment['editor'] = $params['editor'] ? 1 : 0;
$ecomment['trackback'] = $params['trackback'] ? 1 : 0;
$ecomment['comment_date'] = trim($params['comment_date']);
$ecomment['comment_author'] = trim($params['comment_author']);
$ecomment['author_email'] = trim($params['author_email']);
$ecomment['author_website'] = trim($params['author_website']);
$ecomment['author_notify'] = $params['author_notify'] ? 1 : 0;
$ecomment['notified'] = $params['notified'] ? 1 : 0;
$ecomment['ip'] = trim($params['ip']);

// Save comment changes
if (isset($params['submit']) || isset($params['cache']) || isset($params['add']) || isset($params['cacheadd'])) {
	// Edit existing comment
	if ($ecomment['id']>0) {
		$sql = 'UPDATE '.cms_db_prefix().'module_acomments SET comment_title=?, active=?, comment_data=?, page_id=?, module_name=?, editor=?, trackback=?, comment_date=?, comment_author=?, author_email=?, author_website=?, author_notify=?, notified=?, ip=?, modified_date=NOW() WHERE comment_id=?';
		$res = $db->Execute($sql,array($ecomment['comment_title'], $ecomment['active'], $ecomment['comment_data'], $ecomment['page_id'], $ecomment['module_name'], $ecomment['editor'], $ecomment['trackback'], $ecomment['comment_date'], $ecomment['comment_author'], $ecomment['author_email'], $ecomment['author_website'], $ecomment['author_notify'], $ecomment['notified'], $ecomment['ip'], $ecomment['id']));
	// Insert new comment
	} else {
		$ecomment['id'] = $db->GenID(cms_db_prefix().'module_acomments_seq');
		$sql = 'INSERT INTO '.cms_db_prefix().'module_acomments (comment_id, comment_title, active, comment_data, page_id, module_name, editor, trackback, comment_date, comment_author, author_email, author_website, author_notify, notified, ip, create_date, modified_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(), NOW())';
		#echo $sql.'<br><hr><br>';
		#print_r(array($ecomment['id'], $ecomment['comment_title'], $ecomment['active'], $ecomment['comment_data'], $ecomment['page_id'], $ecomment['module_name'], $ecomment['editor'], $ecomment['trackback'], $ecomment['comment_date'], $ecomment['comment_author'], $ecomment['author_email'], $ecomment['author_website'], $ecomment['author_notify'], $ecomment['notified'], $ecomment['ip']));
		#exit;
		$res = $db->Execute($sql,array($ecomment['id'], $ecomment['comment_title'], $ecomment['active'], $ecomment['comment_data'], $ecomment['page_id'], $ecomment['module_name'], $ecomment['editor'], $ecomment['trackback'], $ecomment['comment_date'], $ecomment['comment_author'], $ecomment['author_email'], $ecomment['author_website'], $ecomment['author_notify'], $ecomment['notified'], $ecomment['ip']));
	}
}

// Redirect
if (isset($params['submit']) || isset($params['cancel']) || isset($params['add'])) $this->Redirect($id, 'defaultadmin', $returnid, array( 'tabto'=>$tabto ));
else $this->Redirect($id, 'defaultadmin', $returnid, array( 'tabto'=>$tabto, 'comment'=>$ecomment['id'], 'new'=>$new ));

// EOF
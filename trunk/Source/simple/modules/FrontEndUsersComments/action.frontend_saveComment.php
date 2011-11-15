<?php
/***************************************************************************
 *                              action.frontend_saveComment.php
 *                            -------------------
 *   begin                : 14 nov. 08
 * 	 author				  : Alexandre Courtois
 *   email                : alexandre.courtois@gmail.com
 *
 ***************************************************************************/
 
if(!isset($gCms)) exit;

$this->smarty->assign('returnTo',
	'<a href="'. $params['returnTo'] . '">' . $this->Lang('returnTo') . '</a>');

if(strlen($params['comment_data']) == 0) {
	$this->smarty->assign('error','1');
	$this->smarty->assign('message',$this->Lang('noContent'));
	unset($params['authorid'],$params['pageid'],$params['modulename'],$params['returnTo'],$params['comment_data'],$params['submit']);
}
else {
	require_once('lib/comment.class.php');
	$db =& $gCms->GetDb();
	
	$comment = new comment($db);
	
	$disable_html = $this->GetPreference('disable_html',1);
	if($disable_html == 1) {
		$comment_data = htmlspecialchars($params['comment_data']);
	}
	else {
		$comment_data = $params['comment_data'];
	}
	
	$moderate = $this->GetPreference('moderate',0);
	$active = !$moderate;
	
	$comment->setComment($params['authorid'],$params['pageid'],$params['modulename'],$comment_data, $active);
	$comment->save();

	//unset($params['authorid'],$params['pageid'],$params['modulename'],$params['returnTo'],$params['comment_data'],$params['submit']);
	$this->smarty->assign('error','0');
	$this->smarty->assign('message',$this->Lang('commentSubmited'));
	if($moderate == 1)
		$this->smarty->assign('validationNeeded', $this->lang('validationNeeded'));
		
	// TODO: Database template for notification + email from personalization
	if($this->GetPreference('notify', 0) == 1) {
		$cmsmailer = $this->GetModuleInstance('CMSMailer');
		if($cmsmailer) {			
			$subject = get_site_preference('sitename') . ' : Nouveau commentaire';
			$msg  = 'Page: ' . $params['returnTo'] . "\n";
			$msg .= 'Auteur: ' . $comment->comment_author_name . "\n";
			$msg .= 'Date: ' . $comment->comment_date . "\n";
			$msg .= "Commentaire:\n" . html_entity_decode($comment->comment_data) . "\n";
			$msg .= "\nEditer le commentaire: " . $config['root_url'] . '/' . $config['admin_dir'] . '/moduleinterface.php?mact=FrontEndUsersComments,m1_,admin_edit,0&m1_commentid=' . $comment->comment_id;
			$msg .= "\nSupprimer le commentaire: " . $config['root_url'] . '/' . $config['admin_dir'] . '/moduleinterface.php?mact=FrontEndUsersComments,m1_,admin_delete,0&m1_commentid=' . $comment->comment_id;
			if($moderate == 1) {
				$msg .= "\nValider le commentaire: " . $config['root_url'] . '/' . $config['admin_dir'] . '/moduleinterface.php?mact=FrontEndUsersComments,m1_,admin_active,0&m1_commentid=' . $comment->comment_id . '&mi_current_status=1';
			}
			$cmsmailer->AddAddress($this->GetPreference('notify_address', ''));
			$cmsmailer->SetFromName(get_site_preference('sitename'));
			$cmsmailer->SetSender('noreply@' . get_site_preference('sitename'));
			$cmsmailer->SetSubject($subject);
			$cmsmailer->SetBody($msg);  
			$cmsmailer->IsHTML(false); // we're not sending an html mail
			$cmsmailer->Send();
		}
	}
}
echo $this->ProcessTemplateFromDatabase('FEUcomments_message');
?>

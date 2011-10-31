<?php
/*======================================================================================
Module: AComments
======================================================================================*/

// Check authorisation
if (!isset($gCms)) exit;
#echo '<pre>';print_r($params);echo '</pre>';

// common settings
$config = $this->config;
$modulename = isset($params['modulename']) ? $params['modulename'] : '';
$redirecturl = isset($params['redirecturl']) ? $params['redirecturl'] : '';
if (!isset($returnid)) $returnid = isset($params['returnid']) ? (int)$params['returnid'] : 0;
$pageid = isset($params['pageid']) ? (int)$params['pageid'] : (int)$returnid;

// set params
$dateformat = isset($params['dateformat']) ? $params['dateformat'] : 'F j, Y, g:i a';
$localedateformat = isset($params['localedateformat']) ? $params['localedateformat'] : '';
$lang_param = isset($params['lang']) ? $params['lang'] : 'en_US';
if(function_exists('date_default_timezone_set') and function_exists('date_default_timezone_get')) @date_default_timezone_set(@date_default_timezone_get());
$imgLoc = isset($params['imgLoc']) ? $params['imgLoc'] : '';
if (!$redirecturl) $redirecturl = $GLOBALS['config']['root_url'].$_SERVER['REQUEST_URI'];
#if (!$modulename) {
#	$hm =& $gCms->GetHierarchyManager();
#	$curnode =& $hm->getNodeById($pageid);
#	$curcontent =& $curnode->GetContent();
#	if (!$redirecturl) { $redirecturl = $curcontent->GetURL(); }
#} else {
#	if (!$redirecturl) {
#		$redirecturl = $this->selfURL();
#		//$redirecturl = str_replace('&', '&amp;', $this->selfURL());
#	}
#}
if (isset($params['cancelcomment'])) { redirect($redirecturl); }
$spamprotect = $this->GetPreference('spamprotect', 1);
$disable_html = $this->GetPreference('disable_html', 1);
$notify = trim($this->GetPreference('notify', ''));
$moderate = $this->GetPreference('moderate', 1);
$cookies = $this->GetPreference('enable_cookie_support', 0);
$akismet_check = $this->GetPreference('akismet_check', 0);
$enable_trackbacks = $this->GetPreference('enable_trackbacks', 0);
$enable_trackback_backlink_check = $this->GetPreference('enable_trackback_backlink_check', 0);
$number = isset($params['number']) ? (int)$params['number'] : 0;

// create trackback url
$trackbackurl = 'http://'.$_SERVER['SERVER_NAME'].'/?mact=AComments,'.$id.',gettrackback,0&'.$id.'modulename='.$modulename.'&'.$id.'returnid='.$returnid.'&'.$id.'pageid='.$pageid;
# Anyone having an idea how to create the url in a better way?
# something like this: $trackbackurl = $this->CreateLink($id, 'gettrackback', $returnid, "test", array("pageid"=>$pageid, "modulename"=>$modulename));

// set comment vars
$email = isset($params['email']) ? $params['email'] : '';
$website = isset($params['website']) ? $params['website'] : '';
$authornotify = isset($params['authornotify']) ? (int)$params['authornotify'] : 0;
$author = '';
if (isset($params['author'])) { $author = $disable_html ? $params['author'] : htmlspecialchars($params['author']); }
$title = '';
if (isset($params['title'])) { $title = $disable_html ? $params['title'] : htmlspecialchars($params['title']); }
$content = '';
if (isset($params['content'])) { $content = $disable_html ? $params['content'] : htmlspecialchars($params['content']); }

// set error message var
$errormsg = '';
#echo '<pre>';print_r($params);echo '</pre>';exit;
// action if a comment was submitted
if (isset($params['submitcomment'])) {

	// check for errors
	if ($spamprotect) {
		if (isset($this->cms->modules['Captcha'])) {
			$captcha = &$this->GetModuleInstance('Captcha');
			if (!$params['captcha_phrase'] || !$captcha->CheckCaptcha($params['captcha_phrase'])) {
				$errormsg.= '<li>'.$this->Lang('wrongcode').'</li>';
			}
		}
	}
	if (!$author) { $errormsg.= '<li>'.$this->Lang('errorenterauthor').'</li>'; }
	if (!$content) { $errormsg.= '<li>'.$this->Lang('errorentercomment').'</li>'; }
	if ($email && !$this->isValidEmail($email)) { $errormsg.= '<li>'.$this->Lang('errorenteremail').'</li>'; }
	if ($website && !$this->isValidURL($website)) { $errormsg.= '<li>'.$this->Lang('errorenterwebsite').'</li>'; }

	// action if no error
	if (!$errormsg) {

		// check spam with akismet module
		if ($akismet_check) {
			$ask_mod = $this->GetModuleInstance('CMSakismet');
			if ($ask_mod) {
				if($ask_mod->check($content,$author,$email)){
					$moderate = 1;
				}
			}
		}

		// Insert comment
		$new_id = $db->GenID(cms_db_prefix().'module_acomments_seq');
		$query = 'INSERT INTO '.cms_db_prefix().'module_acomments (comment_id, page_id, comment_title, comment_author, author_email, author_website, comment_data, comment_date, module_name, create_date, modified_date, active, author_notify, ip) VALUES (?,?,?,?,?,?,?,NOW(),?,NOW(),NOW(),?,?,?)';
		$dbresult = $db->Execute($query,array($new_id, $pageid, $title, $author, $email, $website, $content, $modulename, ($moderate?0:1), $authornotify, $_SERVER['REMOTE_ADDR']));
		#echo '<pre>';
		#print_r(array($new_id, $pageid, $title, $author, $email, $website, $content, $modulename, ($moderate?0:1), $authornotify, $_SERVER['REMOTE_ADDR']));
		#echo '</pre>';

		// set cookies
		if ($cookies) {
			if ($author) { setcookie ('comments[author]', $author, 0, '/'); }
			if ($email) { setcookie ('comments[email]', $email, 0, '/'); }
			if ($authornotify) { setcookie ('comments[authornotify]', $authornotify, 0, "/"); } else { setcookie ('comments[authornotify]', 0, 0, '/'); }
			if ($website) { setcookie ('comments[website]', $website, 0, '/'); }
		}

		// send notifies
		$cmsmailer = $this->GetModuleInstance('CMSMailer');
		if ($cmsmailer) {

			// send email to cms admin
			if($notify) {
				$notifymsg  = $this->Lang('notifymsg', array($redirecturl));
				$notifymsg.= "\n\n".$this->Lang('comment').': '.$content;
				if ($moderate) { $notifymsg.= "\n\n".$this->Lang('comment_moderation_enabled'); }
				$notifymsg.= "\n\n".$this->Lang('edit_comment').': '.$config['root_url'].'/'.$config['admin_dir'].'/moduleinterface.php?mact=AComments,m1_,editcomment,0&m1_commentid='.$new_id;
				$cmsmailer->AddAddress($notify);
				$cmsmailer->SetFromName($author);
				$cmsmailer->SetSender($email);
				$cmsmailer->SetSubject($this->Lang('notifysubj', array($redirecturl)));
				$cmsmailer->SetBody($notifymsg);  
				$cmsmailer->IsHTML(false); // we're not sending an html mail
				$cmsmailer->Send();
				$cmsmailer->ClearAddresses();
			}

			// send notify emails to comment authors
			if (!$moderate) {
				$query = 'SELECT comment_id, comment_author, author_email FROM '.cms_db_prefix().'module_acomments WHERE page_id = '.$pageid.' AND module_name = "'.$modulename.'" AND active = 1 AND author_notify = 1 AND comment_id != '.$new_id.' ORDER BY comment_date';
				$mails = $db->GetAll($query);
				if (count($mails)>0) {
					$notify_emails = array(); // Array for recording sendt emails, to avoid double sending
					foreach ($mails as $m) {
						if ($this->isValidEmail($m['author_email']) && !in_array($m['author_email'],$notify_emails)) {
							$cmsmailer->AddAddress($m['author_email']);
							$cmsmailer->SetFromName($cmsmailer->GetPreference('fromuser', '') ? $cmsmailer->GetPreference('fromuser', '') : 'Administrator CMSms');
							$cmsmailer->SetSender($notify ? $notify : $cmsmailer->GetPreference('fromuser', 'root@localhost'));
							$cmsmailer->SetSubject($this->Lang('authornotifysubj', array($redirecturl)));
							$cmsmailer->SetBody($this->Lang('authornotifymsg', array($redirecturl))."\n");  
							$cmsmailer->IsHTML(false);
							$cmsmailer->Send();
							$cmsmailer->ClearAddresses();
							$notify_emails[] = $m['author_email'];
						}
					}
				}
				$query = 'UPDATE '.cms_db_prefix().'module_acomments SET notified=? WHERE comment_id = ?';
				$db->Execute($query, array(1,$new_id));
			}

		}

		if ($moderate) {
			// Would be better to redirect and then display message, but this is easier
			echo '<p>'.$this->Lang('comment_awaiting_approval').': ';
			echo '<a href="'.$redirecturl.'">'.$this->Lang('continue_back').'</a></p>';
			$author = '';
			$authornotify = 0;
			$website = '';
			$email = '';
			$content = '';
		} else {
			redirect($redirecturl);
		}

	}

}

// assign errors
if ($errormsg) { $errormsg =  '<p class="error">'.$this->Lang('error').':</p><ul class="error">'.$errormsg.'</ul>'; }
$smarty->assign('errormessage', $errormsg);

// captcha spam protection
if ($spamprotect) {
	if (isset($this->cms->modules['Captcha'])) {
		$captcha = &$this->getModuleInstance('Captcha');
		// $smarty->assign('captcha_title', $this->Lang('captcha_title'));
		$smarty->assign('spamprotectimage', $captcha->getCaptcha());
	}
}

// get cookie information
if ($cookies) {
	if (isset($_COOKIE['comments'])) {
		$ck_arr = $_COOKIE['comments'];
		if (!$author && isset($ck_arr['author'])) { $author = $ck_arr['author']; }
		if (!$email && isset($ck_arr['email'])) { $email = $ck_arr['email']; }
		if (!$authornotify && isset($ck_arr['authornotify'])) { $authornotify = $ck_arr['authornotify']; }
		if (!$website && isset($ck_arr['website'])) { $website = $ck_arr['website']; }
	}
}

// Prepare vars for the form, because of php strict mode
#$smarty->assign('startform', $this->CreateFormStart($id, 'default', $returnid, 'post', '', false, '', array('redirecturl' => $redirecturl,'pageid' => $pageid, 'modulename' => $modulename, 'emailfield' => isset($emailfield) ? $emailfield : '', 'websitefield' => isset($websitefield) ? $websitefield : '')) );
$smarty->assign('startform',$this->CreateFormStart($id,'default',$returnid,'post','',false,'',
													array('redirecturl' => $redirecturl, 'pageid' => $pageid, 'returnid' => $returnid, 'modulename' => $modulename, 'emailfield' => isset($emailfield) ? $emailfield : '', 'websitefield' => isset($websitefield) ? $websitefield : '')));

#$smarty->assign('startform',$this->CreateFormStart($id, 'dosearch', $returnid, $is_method, '', $inline ));

$smarty->assign('endform', $this->CreateFormEnd());
$smarty->assign('id',$id);
$smarty->assign('spamprotect', $spamprotect);
$smarty->assign('image', $this->CreateInputHidden($id, 'image', $imgLoc));
$smarty->assign('addacomment', $this->Lang('addacomment'));
$smarty->assign('entercodetxt', $this->Lang('entercode'));
$smarty->assign('inputentercode', $this->CreateInputText($id, 'captcha_phrase', ''));
$smarty->assign('titletxt', $this->Lang('comment_title'));
$smarty->assign('inputtitle', $this->CreateInputText($id, 'title', $title, 50, 255));
$smarty->assign('yournametxt', $this->Lang('yourname'));
$smarty->assign('inputyourname', $this->CreateInputText($id, 'author', $author, 50, 255));
$smarty->assign('emailtxt', $this->Lang('email'));
$smarty->assign('inputemail', $this->CreateInputText($id, 'email', $email, 50, 255));
$smarty->assign('notifytxt', $this->Lang('authornotify'));
$smarty->assign('inputnotify', $this->CreateInputCheckbox($id, 'authornotify', 1, $authornotify));
$smarty->assign('websitetxt', $this->Lang('website'));
$smarty->assign('inputwebsite', $this->CreateInputText($id, 'website', $website, 50, 255));
$smarty->assign('commenttxt', $this->Lang('comment'));
$smarty->assign('inputcomment', $this->CreateTextArea(false, $id, $content, 'content', $id, '', '', '', 65));
$smarty->assign('submit', $this->CreateInputSubmit($id, 'submitcomment', $this->Lang('submit')));
$smarty->assign('cancel', $this->CreateInputSubmit($id, 'cancelcomment', $this->Lang('cancel')));
$smarty->assign('trackback', $this->GetPreference('enable_trackbacks'));
$smarty->assign('trackbackurl', $trackbackurl);
$smarty->assign('redirecturl', $redirecturl);

// get comments from the database
$query = 'SELECT comment_id, comment_author, comment_title, comment_data, comment_date, author_email, author_website, trackback, editor FROM '.cms_db_prefix().'module_acomments WHERE page_id = ? AND module_name = ? AND active = 1 '.($number>0 ? 'LIMIT '.$number : '').' ORDER BY comment_date';
$comments = $db->GetAll($query, array($pageid,$modulename));

// assign comments to smarty
$entryarray = array();
if (count($comments)>0) {
	foreach ($comments as $c) {
		$onerow = new stdClass();
		// Enable localized date format
		if ($localedateformat) {
			// Set the gloabal LC_TIME constant to given language
			switch (strtolower($lang_param)) {
				case 'de_de':	$result = setlocale(LC_TIME, 'de_DE.UTF8', 'de_DE@euro', 'de_DE', 'deu_deu', 'german');
								break;
				default:		$result = setlocale(LC_TIME, 'en_US.UTF8', 'en_US', 'eng_eng', 'english');
								break;
			}
			if (!$result) { echo $this->Lang('localedateformat_error'); }
			$onerow->date = htmlentities(strftime($localedateformat,$db->UnixTimeStamp($c['comment_date'])));
		}
		else { $onerow->date = date($dateformat,$db->UnixTimeStamp($c['comment_date'])); }

		$onerow->comment_author	= $c['comment_author'];
		$onerow->comment_title	= $c['comment_title'];
		$onerow->author_email   = $c['author_email'];
		$onerow->author_website = $c['author_website'];
		$onerow->comment_data	= nl2br($c['comment_data']);
		if ($c['trackback']) { $onerow->cssclass = 'trackback'; }
		else { $onerow->cssclass = $c['editor'] ? 'editor' : 'comment'; }
		array_push($entryarray, $onerow);
	}
}
$smarty->assign('items', $entryarray);

// display template
echo isset($params['template'])	? $this->ProcessTemplate($params['template'])
								: $this->ProcessTemplateFromDatabase('default_display');

// EOF
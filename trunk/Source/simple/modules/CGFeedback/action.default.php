<?php
#BEGIN_LICENSE
#-------------------------------------------------------------------------
# Module: CGUFeedback (c) 2009 by Robert Campbell 
#         (calguy1000@cmsmadesimple.org)
#  An addon module for CMS Made Simple to provide the ability to rate
#  and comment on specific pages or specific items in a module.
#  Includes numerous seo friendly, and designer friendly capabilities.
#
#-------------------------------------------------------------------------
# CMS - CMS Made Simple is (c) 2005 by Ted Kulp (wishy@cmsmadesimple.org)
# This project's homepage is: http://www.cmsmadesimple.org
#
#-------------------------------------------------------------------------
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# However, as a special exception to the GPL, this software is distributed
# as an addon module to CMS Made Simple.  You may not use this software
# in any Non GPL version of CMS Made simple, or in any version of CMS
# Made simple that does not indicate clearly and obviously in its admin 
# section that the site was built with CMS Made simple.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
# Or read it online: http://www.gnu.org/licenses/licenses.html#GPL
#
#-------------------------------------------------------------------------
#END_LICENSE
if( !isset($gCms) ) exit;

###################################
# Display the create comment form #
###################################

//
// Initialization
//
$thetemplate = 'commentform_'.$this->GetPreference(CGFEEDBACK_PREF_DFLTCOMMENTFORM_NAME);
$error='';
$message = '';
$permalink = cge_url::current_url(); // todo - ability to change this?
$policy = 'normal';
$inline = 0;
$titlerequired = 1;
$commentrequired = 1;
$emailrequired = 1;
$namerequired = 1;
$voteonce = 0;
$rating_options_str = '1,2,3,4,5';

//
// setup
//
$comment = new cgfb_comment();
$comment->key1 = '__page__';
$comment->key2 = $returnid;
$comment->origurl = cge_url::current_url();

if( isset($params['key1']) )
  {
    $comment->key1 = trim($params['key1']);
  }
if( isset($params['key2']) )
  {
    $comment->key2 = trim($params['key2']);
  }
if( isset($params['key3']) )
  {
    $comment->key3 = trim($params['key3']);
  }

//
// Setup
//
if( $this->GetPreference('use_cookies',0) == 1 && isset($_COOKIE[CGFEEDBACK_COOKIE]) )
  {
    // get data from the cookie
    $cookie = unserialize($_COOKIE[CGFEEDBACK_COOKIE]);
    if( is_array($cookie) )
      {
	if( isset($cookie['author_name']) )
	  {
	    $comment->author_name = $cookie['author_name'];
	  }
	if( isset($cookie['author_email']) )
	  {
	    $comment->author_email = $cookie['author_email'];
	  }
	if( isset($cookie['author_notify']) )
	  {
	    $comment->author_notify = $cookie['author_notify'];
	  }
      }
  }

//
// Process parameters
//
if( isset($params['ratingoptions']) )
  {
    $rating_options_str = trim($params['ratingoptions']);
  }
if( isset($params['inline']) )
  {
    $inline = (int)$params['inline'];
  }
if( isset($params['voteonce']) )
  {
    $voteonce = (int)$params['voteonce'];
  }
if( isset($params['titlerequired']) )
  {
    $titlerequired = (int)$params['titlerequired'];
  }
if( isset($params['commentrequired']) )
  {
    $commentrequired = (int)$params['commentrequired'];
  }
if( isset($params['emailrequired']) )
  {
    $emailrequired = (int)$params['emailrequired'];
  }
if( isset($params['namerequired']) )
  {
    $namerequired = (int)$params['namerequired'];
  }
if( isset($params['policy']) )
  {
    switch(trim($params['policy'])) 
      {
      case 'session':
	$policy = trim($params['policy']);
	//$inline = 1;
	break;
      case 'normal':
      default:
	$policy = 'normal';
	break;
      }
      
  }
if( $policy == 'session' )
  {
    // try to get parameters from the session...
    $tmp = $this->session_get('cgfb_comment');
    if( $tmp )
      {
	$comment = unserialize($tmp);
      }
    $error = $this->session_get('error',$error);
    $message = $this->session_get('message',$message);
  }
if( isset($params['commenttemplate']) )
  {
    $thetemplate = 'commentform_'.trim($params['commenttemplate']);
  }
$rating_options = array();
{
  $tmp = explode(',',$rating_options_str);
  if( count($tmp) > 0 )
    {
      foreach($tmp as $one)
	{
	  if( strpos($one,'=') > 0 )
	    {
	      $t2 = explode('=',$one,2);
	      $rating_options[$t2[0]] = $t2[1];
	    }
	  else
	    {
	      $rating_options[$one] = $one;
	    }
	}
    }
}

//
// Get custom field definitions
//
$tfields = cgfb_comment_ops::get_fielddefs();
foreach( $tfields as $fid => &$tfield )
  {
    $tfield['attrib'] = $tfield['attribs'];
  }

//
// Process form data
//
if( isset($params['submit']) )
  {
    // Get data from the form
    $comment->from_array($params);
    $disable_html = ($this->GetPreference('allow_comment_html',0) == 0);
    $comment->author_ip = cge_utils::get_real_ip();
    if( isset($params['comment']) )
      {
	$comment->data = trim($params['comment']);
	$comment->data = $disable_html ? strip_tags($comment->data) : $comment->data;
      }
    foreach( $params as $key => $value )
      {
	if( startswith($key,'field_') )
	  {
	    $fid = (int)substr($key,6);
	    if( is_array($value) ) $value = implode(',',$value);
	    $value = $disable_html ? strip_tags($value) : $value;
	    $comment->set_field_by_id($fid,$value);
	  }
      }

    if( isset($params['feedback_origurl']) )
      {
	$comment->origurl = trim($params['feedback_origurl']);
      }

    //
    // validate data
    //
    if( empty($error) && (($comment->rating < 0) || ($comment->rating > 10)) ) 
      {
	$error = $this->Lang('error_invalidrating');
      }
    if( empty($error) && $comment->data == '' && $commentrequired )
      {
	$error = $this->Lang('error_emptycomment');
      }
    if( empty($error) && $comment->title == '' && $titlerequired  )
      {
	$error = $this->Lang('error_emptytitle');
      }
    if( empty($error) && $comment->author_name == '' && $namerequired )
      {
	$error = $this->Lang('error_emptyname');
      }
    if( empty($error) && $comment->author_email == '' && $emailrequired )
      {
	$error = $this->Lang('error_emptyemail');
      }

    // do captcha checking
    $modname = $this->GetPreference('captcha_module','-1');
    if( $modname != -1 && empty($error) )
      {
	$captchamod =& $this->GetModuleInstance($modname);
	if( is_object($captchamod) && empty($error) )
	  {
	    $captchastr = $params['feedback_captcha'];
	    if( !$captchamod->checkCaptcha($captchastr) )
	      {
		// captcha failed
		$error = $this->Lang('error_captchafailed');
	      }
	  }
      }

    // do email validation
    $tmp = $this->GetPreference('validate_email','none');
    if( $tmp != 'none' && empty($error) )
      {
	$tmp = is_email($comment->author_email,($tmp == 'domain')?TRUE:FALSE);
	if( !$tmp )
	  {
	    $error = $this->Lang('error_emailinvalid');
	  }
      }

    // check for repeated voting
    if( $voteonce && empty($error) )
      {
	// a bit of magic that controls the level at which users can vote only once.
	$query = 'SELECT id FROM '.CGFEEDBACK_TABLE_COMMENTS;
	$qparms = array($comment->author_ip);
	$where = array('author_ip = ?');
	$where[] = 'key1 = ?';
	$qparms[] = $comment->key1;
	if( $voteonce >= 2 )
	  {
	    $where[] = 'key2 = ?';
	    $qparms[] = $comment->key2;
	  }
	if( $voteonce >= 3 )
	  {
	    $where[] = 'key3 = ?';
	    $qparms[] = $comment->key3;
	  }

	$query .= ' WHERE '.implode(' AND ',$where);
	$tmp = $db->GetOne($query,$qparms);
	if( $tmp )
	  {
	    $error = $this->Lang('error_alreadyvoted');
	  }
      }

    // do spam checking
    if( ($spamcheck_module_name = $this->GetPreference('spamcheck_module',-1)) != -1  
	&& empty($error) )
      {
	$spamcheck_module = $this->GetModuleInstance($spamcheck_module_name);
	if( is_object($spamcheck_module) )
	  {
	    $spamcheck_module->reset();
	    $spamcheck_module->set_author($comment->author_name);
	    $spamcheck_module->set_email($comment->author_email);
	    $spamcheck_module->set_body($comment->comment);
	    $spamcheck_module->set_title($comment->title);
	    $spamcheck_module->set_permalink($permalink);
	    $spamcheck_module->set_website($gCms->config['root_url']);
	    for( $i = 0; $i < count($tfields); $i++ )
	      {
		$spamcheck_module->set_extra($tfields[$i]['name'],$comment->get_field_by_id($tfields[$i]['id']));
	      }
	    $t_errors = '';
	    $res = $spamcheck_module->check_spam($t_errors);
	    if( $res == 'error' )
	      {
		// an error, put something in a logfile somewhere, and continue.
		@trigger_error('akismet spam check error: '.implode(' -- ',$t_errors));
	      }
	    else if( $res == 'spam' )
	      {
		// its spam.
		$comment->status = CGFEEDBACK_STATUS_SPAM;
	      }
	  }
      }

    // do word limiting.
    $wl = $this->GetPreference('word_limit',0);
    if( empty($error) && $disable_html && $wl > 0 )
      {
	$comment->data = cge_string::word_limiter($comment->data,$wl);
      }

    if( empty($error) && $this->GetPreference('use_cookies',0) == 1 )
      {
	// Set cookie information
	$cookie = array();
	if( !empty($comment->author_name) )
	  {
	    $cookie['author_name'] = $comment->author_name;
	  }
	if( !empty($comment->author_email) )
	  {
	    $cookie['author_email'] = $comment->author_email;
	  }
	if( !empty($comment->author_notify) )
	  {
	    $cookie['author_notify'] = $comment->author_notify;
	  }
	setcookie(CGFEEDBACK_COOKIE,serialize($cookie),
		  time()+30*24*60*60); // thirty days
      }

    // done... now handle success or failure.
    if( empty($error) )
      {
	$res = $comment->save();
	if( !$res )
	  {
	    $error = $this->Lang('error_dberror');
	  }
      }

    if( empty($error) )
      {
	// admin notifications
	cgfb_comment_notifier::notify_admins($comment);
      }

    if( empty($error) && $comment->status == CGFEEDBACK_STATUS_PUBLISHED )
      {
	// user notifications
	cgfb_comment_notifier::notify_users($comment);
	$comment->save();
      }

    if( empty($error) )
      {
	// success
	$message = $this->ProcessTemplateFromDatabase('success_msg');
	if( empty($message) ) $message = $this->Lang('msg_commentokay');

	switch($policy)
	  {
	  case 'session':
	    // store information in the session
	    // redirect back to originating url
	    // and display messages.
	    $this->session_clear();
	    $this->session_put('message',$message);

	    // redirect
	    if( !isset($params['noredirect']) || $params['noredirect'] == 0 )
	      {
		// we are allowed to redirect.
		if( isset($params['destpage']) )
		  {
		    $page = $this->resolve_alias_or_id($params['destpage']);
		    if( $page )
		      {
			//die('redirect to page '.$page);
			$this->RedirectContent($page);
		      }
		  }
		else if( isset($params['feedback_origurl']) )
		  {
		    // we can go back to the original url
		    $url = html_entity_decode($params['feedback_origurl']);
		    if( isset($params['redirectextra']) )
		      {
			$url .= trim($params['redirectextra']);
		      }
		    redirect($url);
		  }
		
		// or just back to the original content page.
                //die('redirect to page '.$returnid);
		$this->RedirectContent($returnid);
	      }
            else
              {
                //die('no redirect');
              }
	    break;

	  case 'normal':
	  default:
	    // set the message
	    $smarty->assign('message',$message);
	    break;
	  }
      }
    else
      {
	// an error occurred.
	switch($policy)
	  {
	  case 'session':
	    // store the variables in the session
	    $this->session_put('cgfb_comment',serialize($comment));
	    $this->session_put('error',$error);

	    // redirect
            if( !isset($params['noredirect']) || $params['noredirect'] == 0 )
            {
	      if( isset($params['destpage']) )
	        {
		  $page = $this->resolve_alias_or_id($params['destpage']);
		  if( $page )
		  {
                    //die('error redirect page '.$page);
		    $this->RedirectContent($page);
		  }
	       }
	      else if( isset($params['feedback_origurl']) )
	      {
		// we can go back to the original url
		$url = html_entity_decode($params['feedback_origurl']);
		if( isset($params['redirectextra']) )
		  {
		    $url .= trim($params['redirectextra']);
		  }
                //die('error redirect url '.$url);
		redirect($url);
	      }

	      // or just back to the original content page.
               //die('error redirect returnid '.$page);
	      $this->RedirectContent($returnid);
            }
	    break;

	  case 'normal':
	  default:
	    // error is already set.
	    // fall through.
	    break;
	  }
      } // else
  }
  
    
//
// Clear anything in the session for this module
//
$this->session_clear();
$smarty->clear_assign('message');
$smarty->clear_assign('error');
//
// Give everything to smarty
//
$params['key1'] = $comment->key1;
$params['key2'] = $comment->key2;
$params['key3'] = $comment->key3;
if( !empty($error) )
  {
    $smarty->assign('error',$error);
  }
else if( !empty($message) )
  {
    $smarty->assign('message',$message);
  }
if( !isset($params['destpage']) && !isset($params['feedback_origurl']) )
  {
    $params['feedback_origurl'] = cge_url::current_url();
  }
$tmp = array_keys($tfields);
foreach( $tmp as $fid )
{
  switch($tfields[$fid]['type'])
    {
    case 2:
      $val = $comment->get_field_by_id($fid);
      if( $val == '' )
	{
	  if( isset($tfields[$fid]['dfltcontent']) )
	    {
	      $val = $tfields[$fid]['defaultcontent'];
	    }
	}
      $tfields[$fid]['input'] = 
	$this->CreateTextArea(isset($tfields[$fid]['attrib']['usewysiwyg']) && $tfields[$fid]['attrib']['usewysiwyg'] == 1 &&
			      $this->GetPreference('allow_comment_wysiwyg',0),
			      $id,$val,'field_'.$tfields[$fid]['id']);
      break;
    }
}

$smarty->assign('comment_word_limit',$this->GetPreference('word_limit'));
$config = $gCms->GetConfig();
$path = $config['root_url'].'/modules/'.$this->GetName().'/images/';
$tmp = array('img_on'=>$path.'star.gif','img_off'=>$path.'starOff.gif','img_half'=>$path.'starHalf.gif');
$smarty->assign('rating_imgs',$tmp);
$smarty->assign('fields',$tfields);
$smarty->assign('title',$comment->title);
$smarty->assign('author_name',$comment->author_name);
$smarty->assign('author_email',$comment->author_email);
$smarty->assign('author_notify',$comment->author_notify);
$smarty->assign('rating',$comment->rating);
$smarty->assign('comment',$comment->data);

$smarty->assign('formstart',$this->CGCreateFormStart($id,'default',$returnid,$params,$inline));
$smarty->assign('formend',$this->CreateFormEnd());
$smarty->assign('rating_options',$rating_options);
$wysiwyg = $this->GetPreference('allow_comment_wysiwyg',0);

//$smarty->assign('input_comment',
//		$this->CreateTextArea($wysiwyg ? true : false,
//				      $id,$comment->data,'comment'));

$smarty->assign('input_comment',
		$this->CreateTextArea($$wysiwyg ? true : false, $id, $comment->data, 'comment', '', '', '', '', '40', '15','','',''));

$modname = $this->GetPreference('captcha_module','-1');
if( $modname != -1 )
  {
    $captchamod =& $this->GetModuleInstance($modname);
    if( is_object($captchamod) )
      {
	$smarty->assign('captcha_img',$captchamod->getCaptcha());
      }
  }

if( count($tfields) )
  {
    $smarty->assign('fields',$tfields);
  }

//
// Process the template
//
echo $this->ProcessTemplateFromDatabase($thetemplate);

#
# EOF
#
?>

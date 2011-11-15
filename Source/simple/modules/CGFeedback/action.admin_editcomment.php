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
if( !$this->CheckPermission(CGFEEDBACK_PERM_FEEDBACK) ) exit;

#
# Initialization
#
$disable_html = ($this->GetPreference('allow_comment_html',0) == 0);
$wysiwyg = $this->GetPreference('allow_comment_wysiwyg',0);
$this->SetCurrentTab('comments');
$spamcheck_enabled = 0;
$error = '';
$spam_errors = '';
$comment = new cgfb_comment();


#
# Setup
#
if( !isset($params['cid']) )
  {
    $this->SetError($this->Lang('error_missingparam'));
    $this->RedirectToTab($id);
  }
$cid = (int)$params['cid'];

$spamcheck_module_name = $this->GetPreference('spamcheck_module',-1);
if( $spamcheck_module_name != -1 )
  {
    $spamcheck_module =& $this->GetModuleInstance($spamcheck_module_name);
    if( is_object($spamcheck_module) )
      {
	$spamcheck_enabled = 1;
      }
  }


#
# Get the data
#
$comment = cgfb_comment_ops::load($cid);
$tfields = cgfb_comment_ops::get_fielddefs();
foreach( $tfields as $fid => &$tfield )
  {
    $tfield['value'] = $comment->get_field_by_id($tfield['id']);
    switch($tfield['type'])
      {
      case 2:
	$tfield['input'] = 
	  $this->CreateTextArea(isset($tfield['attribs']['usewysiwyg']) && $tfield['attribs']['usewysiwyg'] == 1 &&
				$this->GetPreference('allow_comment_wysiwyg',0),
				$id,
				$tfield['value'],
				'field_'.$tfield['id']);
	break;
      }
  }
$orig_status = $comment->status;

#
# Process form data
#
if( isset($params['cancel']) )
  {
    $this->RedirectToTab($id);
  }
else if( isset($params['mark_ham']) && !empty($params['mark_ham']) && $spamcheck_enabled )
  {
    $config = $gCms->GetConfig();
    $permalink = $config['root_url'];

    $spamcheck_module->reset();
    $spamcheck_module->set_author($comment->author_name);
    $spamcheck_module->set_email($comment->author_email);
    $spamcheck_module->set_title($comment->title);
    $spamcheck_module->set_permalink($permalink);
    $spamcheck_module->set_website($permalink);
    $spamcheck_module->set_body($comment->data);
    $res = $spamcheck_module->set_ham($spam_errors);
    if( $res != 'error' )
      {
	$comment->status = CGFEEDBACK_STATUS_DRAFT;
	$comment->save();
      }
    
  }
else if( (isset($params['delete_spam']) && !empty($params['delete_spam'])) ||
	 (isset($params['delete']) && !empty($params['delete'])) )
  {
    $this->Redirect($id,'admin_deletecomment',$returnid,array('cid'=>$cid));
  }
else if( isset($params['submit']) && !empty($params['submit']) )
  {
    // Get values from params
    $comment->from_array($params);
    foreach( $params as $key => $value )
      {
	if( startswith($key,'field_') )
	  {
	    $fid = (int)substr($key,6);
	    if( is_array($value) )
	      {
		$value = implode(',',$value);
	      }
	    $comment->set_field_by_id($fid,$value);
	  }
      }

    // data validation
    if( empty($error) && ($comment->rating < 0) || ($comment->rating > 10) )
      {
	$error = $this->Lang('error_invalidrating');
      }
    if( empty($error) && $comment->data == '' )
      {
	$error = $this->Lang('error_emptycomment');
      }
    if( empty($error) && $comment->author_name == '')
      {
	$error = $this->Lang('error_emptyname');
      }
    
    if( empty($error) )
      {
	$res = $comment->save();
	if( !$res )
	  {
	    $error = $this->Lang('error_dberror');
	  }
      }

    if( empty($error) && $comment->status == CGFEEDBACK_STATUS_PUBLISHED && $orig_status != CGFEEDBACK_STATUS_PUBLISHED )
      {
	cgfb_comment_notifier::notify_users($comment);
      }

    if( empty($error) )
      {
	$this->SetMessage($this->Lang('msg_commentupdated'));
	$this->RedirectToTab($id);
      }
  }

#
# Give everything to smarty
#
if( !empty($error) )
  {
    $smarty->assign('error',$this->Lang('error_comment_update_failed').': '.$error);
  }
else if( is_array($spam_errors) && count($spam_errors) )
  {
    $smarty->assign('error',$spam_errors);
  }
$status_options = array();
$status_options[CGFEEDBACK_STATUS_DRAFT]     = $this->Lang(CGFEEDBACK_STATUS_DRAFT);
$status_options[CGFEEDBACK_STATUS_PUBLISHED] = $this->Lang(CGFEEDBACK_STATUS_PUBLISHED);
$status_options[CGFEEDBACK_STATUS_SPAM]      = $this->Lang(CGFEEDBACK_STATUS_SPAM);
$rating_options = array();
for( $i = 0; $i < 5; $i++ )
  {
    $rating_options[$i+1] = sprintf('&nbsp;%d&nbsp;',$i+1);
  }
$smarty->assign('input_comment',
		$this->CreateTextArea($wysiwyg ? true : false, $id, $comment->data,'data'));
$smarty->assign('status_options',$status_options);
$smarty->assign('rating_options',$rating_options);
$smarty->assign('formstart',$this->CGCreateFormStart($id,'admin_editcomment',$returnid,$params));
$smarty->assign('formend',$this->CreateFormEnd());
$smarty->assign('comment',$comment);
if( count($tfields) )
  {
    $smarty->assign('fields',$tfields);
  }
if( $spamcheck_enabled )
  {
    $smarty->assign('spamcheck_enabled',1);
  }


#
# Process Template
#
echo $this->ProcessTemplate('admin_editcomment.tpl');

#
# EOF
#
?>

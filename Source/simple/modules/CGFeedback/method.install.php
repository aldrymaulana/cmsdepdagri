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

#
# Tables
#
$db =& $this->GetDb();
$dict = NewDataDictionary($db);
$taboptarray = array('mysql'=>'TYPE=MyISAM');

// Event types table
$flds = "
         id      I KEY AUTO,
         name    C(255),
         type    I,
         attribs X,
         iorder  I";
$sqlarray = $dict->CreateTableSQL(CGFEEDBACK_TABLE_FIELDDEFS,
				  $flds,$taboptarray);
$dict->ExecuteSQLArray($sqlarray);


$flds = "
         id            I KEY AUTO,
         key1          C(255),
         key2          C(255),
         key3          C(255),
         rating        I,
         title         C(255),
         data          X,
         status        C(20),
         author_name   C(255),
         author_email  C(255),
         author_ip     C(25),
         author_notify I1,
         admin_notes   X,
         notified      I1,
         origurl       C(255),
         created      ".CMS_ADODB_DT.",
         modified     ".CMS_ADODB_DT;
$sqlarray = $dict->CreateTableSQL(CGFEEDBACK_TABLE_COMMENTS,
				  $flds,$taboptarray);
$dict->ExecuteSQLArray($sqlarray);


$flds = "
         comment_id    I KEY,
         field_id      I KEY,
         value         X";
$sqlarray = $dict->CreateTableSQL(CGFEEDBACK_TABLE_FIELDVALS,
				  $flds,$taboptarray);
$dict->ExecuteSQLArray($sqlarray);


#
# Permissions
#
$this->CreatePermission(CGFEEDBACK_PERM_FEEDBACK,CGFEEDBACK_PERM_FEEDBACK);

# Commentform Template
$fn = dirname(__FILE__).'/templates/orig_commentform_template.tpl';
if( file_exists( $fn ) )
  {
    $template = file_get_contents($fn);
    $this->SetPreference(CGFEEDBACK_PREF_NEWCOMMENTFORM_TEMPLATE,$template);
    $this->SetTemplate('commentform_Sample',$template);
    $this->SetPreference(CGFEEDBACK_PREF_DFLTCOMMENTFORM_NAME,'Sample');
  }
$fn = dirname(__FILE__).'/templates/orig_commentform_template_radio.tpl';
if( file_exists( $fn ) )
  {
    $template = file_get_contents($fn);
    $this->SetTemplate('commentform_Radio',$template);
  }


# Ratings Template
$fn = dirname(__FILE__).'/templates/orig_ratings_template.tpl';
if( file_exists( $fn ) )
  {
    $template = file_get_contents($fn);
    $this->SetPreference(CGFEEDBACK_PREF_NEWRATINGS_TEMPLATE,$template);
    $this->SetTemplate('ratings_Sample',$template);
    $this->SetPreference(CGFEEDBACK_PREF_DFLTRATINGS_NAME,'Sample');
  }


# Summary Template
$fn = dirname(__FILE__).'/templates/orig_summary_template.tpl';
if( file_exists( $fn ) )
  {
    $template = file_get_contents($fn);
    $this->SetPreference(CGFEEDBACK_PREF_NEWSUMMARY_TEMPLATE,$template);
    $this->SetTemplate('summary_Sample',$template);
    $this->SetPreference(CGFEEDBACK_PREF_DFLTSUMMARY_NAME,'Sample');
  }

# Detail template
$fn = dirname(__FILE__).'/templates/orig_detail_template.tpl';
if( file_exists( $fn ) )
  {
    $template = file_get_contents($fn);
    $this->SetPreference(CGFEEDBACK_PREF_NEWDETAIL_TEMPLATE,$template);
    $this->SetTemplate('detail_Sample',$template);
    $this->SetPreference(CGFEEDBACK_PREF_DFLTDETAIL_NAME,'Sample');
  }

# Admin Notification template
$this->SetPreference(CGFEEDBACK_PREF_NOTIFICATION_SUBJECT,
		     $this->Lang('notification_subject'));
$fn = dirname(__FILE__).'/templates/orig_notification_template.tpl';
if( file_exists( $fn ) )
  {
    $template = file_get_contents($fn);
    $this->SetTemplate(CGFEEDBACK_PREF_NOTIFICATION_TEMPLATE,$template);
  }

# User Notification template
$this->SetPreference(CGFEEDBACK_PREF_USERNOTIFICATION_SUBJECT,
		     $this->Lang('usernotification_subject'));
$fn = dirname(__FILE__).'/templates/orig_usernotification_template.tpl';
if( file_exists( $fn ) )
  {
    $template = file_get_contents($fn);
    $this->SetTemplate(CGFEEDBACK_PREF_USERNOTIFICATION_TEMPLATE,$template);
  }

$fn = dirname(__FILE__).'/templates/orig_success_message.tpl';
if( file_exists( $fn ) )
  {
    $template = file_get_contents($fn);
    $this->SetTemplate('success_msg',$template);
  }
#
# Preferences
#
$this->SetPreference(CGFEEDBACK_PREF_NOTIFICATION_SUBJECT,$this->Lang('notification_subject'));
$this->SetPreference(CGFEEDBACK_PREF_USERNOTIFICATION_SUBJECT,$this->Lang('usernotification_subject'));
$this->SetPreference('notification_group',-1);
$this->SetPreference('notification_ishtml',1);
$this->SetPreference('allow_comment_wysiwyg',0);
$this->SetPreference('allow_comment_html',0);
$this->SetPreference('moderate_comments',0);
$this->SetTemplate('success_message',$this->Lang('msg_commentokay'));

#
# EOF
#
?>

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
if( !$this->CheckPermission('Modify Site Preferences') )
  {
    die('permission denied');
  }

#
# Setup
#
$this->SetCurrentTab('settings');

$this->SetPreference('allow_comment_wysiwyg',(int)$params['allow_comment_wysiwyg']);
$this->SetPreference('allow_comment_html',(int)$params['allow_comment_html']);
$this->SetPreference('validate_email',trim($params['validate_email']));
$this->SetPreference('word_limit',(int)$params['word_limit']);
$this->SetPreference('moderate_comments',(int)$params['moderate_comments']);
$this->SetPreference('moderation_patterns',$params['moderation_patterns']);
$this->SetPreference('moderation_iplist',$params['moderation_iplist']);
$this->SetPreference('use_cookies',(int)$params['use_cookies']);
$this->SetPreference('spamcheck_module',$params['spamcheck_module']);
$this->SetPreference('captcha_module',$params['captcha_module']);
$this->SetTemplate('success_msg',$params['success_msg']);

// done
$this->RedirectToTab($id);

#
# EOF
#
?>

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
if( !$this->CheckPermission('Modify Templates') )
  {
    die('permission denied');
  }

#
# Initialization
#
$this->SetCurrentTab('usernotifications');

if( isset($params['reset']) )
  {
    $fn = dirname(__FILE__).'/templates/orig_usernotification_template.tpl';
    if( file_exists( $fn ) )
      {
	$template = file_get_contents($fn);
	$this->SetTemplate(CGFEEDBACK_PREF_USERNOTIFICATION_TEMPLATE,$template);
      }
  }
else
  {
    if( isset($params['is_html']) )
      {
	$this->SetPreference('usernotification_ishtml',(int)$params['is_html']);
      }
    if( isset($params['subject']) )
      {
	$this->SetPreference(CGFEEDBACK_PREF_USERNOTIFICATION_SUBJECT,trim($params['subject']));
      }
    if( isset($params['usernotification_msg']) )
      {
	$txt = cms_html_entity_decode($params['usernotification_msg']);
	$this->SetTemplate(CGFEEDBACK_PREF_USERNOTIFICATION_TEMPLATE,$txt);
      }
  }

$this->RedirectToTab($id);

#
# EOF
#
?>

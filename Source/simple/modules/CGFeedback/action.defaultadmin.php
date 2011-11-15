<?php
#BEGIN_LICENSE
#-------------------------------------------------------------------------
# Module: CGUserDirectory (c) 2009 by Robert Campbell 
#         (calguy1000@cmsmadesimple.org)
#  An addon module for CMS Made Simple to provide the ability to browse
#  and view summary reports and detail reports about groups of frontend
#  users.
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

echo $this->StartTabHeaders();
if( $this->CheckPermission(CGFEEDBACK_PERM_FEEDBACK) )
  {
    echo $this->SetTabHeader('comments',$this->Lang('lbl_comments'));
  }
if( $this->CheckPermission('Modify Site Preferences') )
  {
    echo $this->SetTabHeader('fields',
			     $this->Lang('lbl_fields'));
  }
if( $this->CheckPermission('Modify Templates') )
  {
    echo $this->SetTabHeader('commentformtemplates',
			     $this->Lang('lbl_commentformtemplates'));
    echo $this->SetTabHeader('ratingstemplates',
			     $this->Lang('lbl_ratingstemplates'));
    echo $this->SetTabHeader('summarytemplates',
			     $this->Lang('lbl_summarytemplates'));
    echo $this->SetTabHeader('detailtemplates',
			     $this->Lang('lbl_detailtemplates'));
    echo $this->SetTabHeader('defaulttemplates',
			     $this->Lang('lbl_defaulttemplates'));
    echo $this->SetTabHeader('usernotifications',
			     $this->Lang('lbl_usernotifications'));
    echo $this->SetTabHeader('notifications',
			     $this->Lang('lbl_notifications'));
  }
if( $this->CheckPermission('Modify Site Preferences') )
  {
    echo $this->SetTabHeader('settings',
			     $this->Lang('lbl_settings'));
  }
echo $this->EndTabHeaders();

echo $this->StartTabContent();
if( $this->CheckPermission(CGFEEDBACK_PERM_FEEDBACK) )
  {
    echo $this->StartTab('comments');
    include(dirname(__FILE__).'/function.admin_comments_tab.php');
    echo $this->EndTab();
  }
if( $this->CheckPermission('Modify Site Preferences') )
  {
    echo $this->StartTab('fields');
    include(dirname(__FILE__).'/function.admin_fields_tab.php');
    echo $this->EndTab();
  }
if( $this->CheckPermission('Modify Templates') )
  {
    echo $this->StartTab('commentformtemplates');
    include(dirname(__FILE__).'/function.admin_commentformtemplates_tab.php');
    echo $this->EndTab();

    echo $this->StartTab('ratingstemplates');
    include(dirname(__FILE__).'/function.admin_ratingstemplates_tab.php');
    echo $this->EndTab();

    echo $this->StartTab('summarytemplates');
    include(dirname(__FILE__).'/function.admin_summarytemplates_tab.php');
    echo $this->EndTab();

    echo $this->StartTab('detailtemplates');
    include(dirname(__FILE__).'/function.admin_detailtemplates_tab.php');
    echo $this->EndTab();

    echo $this->StartTab('defaulttemplates');
    include(dirname(__FILE__).'/function.admin_defaulttemplates_tab.php');
    echo $this->EndTab();

    echo $this->StartTab('usernotifications');
    include(dirname(__FILE__).'/function.admin_usernotifications_tab.php');
    echo $this->EndTab();

    echo $this->StartTab('notifications');
    include(dirname(__FILE__).'/function.admin_notifications_tab.php');
    echo $this->EndTab();
  }
if( $this->CheckPermission('Modify Site Preferences') )
  {
    echo $this->StartTab('settings');
    include(dirname(__FILE__).'/function.admin_settings_tab.php');
    echo $this->EndTab();
  }
echo $this->EndTabContent();
#
# EOF
#
?>
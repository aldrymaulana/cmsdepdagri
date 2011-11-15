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

$tmp = $this->GetModulesWithCapability('spamcheck');
$tmp2 = array('-1'=>$this->Lang('none'));
if( count($tmp) )
  {
    foreach( $tmp as $name )
      {
	$tmp2[$name] = $name;
      }
  }
$smarty->assign('spamcheck_modules',$tmp2);
$smarty->assign('spamcheck_module',$this->GetPreference('spamcheck_module',-1));

$tmp = $this->GetModulesWithCapability('captcha');
$tmp2 = array('-1'=>$this->Lang('none'));
if( count($tmp) )
  {
    foreach( $tmp as $name )
      {
	$mod = cms_utils::get_module($name);
	if( is_object($mod) )
	  {
	    $tmp2[$name] = $mod->GetName();
	  }
      }
  }
$smarty->assign('captcha_modules',$tmp2);
$smarty->assign('captcha_module',$this->GetPreference('captcha_module',-1));

$smarty->assign('formstart',$this->CGCreateFormStart($id,'admin_savesettings',$returnid));
$smarty->assign('formend',$this->CreateFormEnd());
$smarty->assign('input_allow_comment_wysiwyg',
		$this->CreateInputYesNoDropdown($id,'allow_comment_wysiwyg',
						$this->GetPreference('allow_comment_wysiwyg')));
$smarty->assign('input_allow_comment_html',
		$this->CreateInputYesNoDropdown($id,'allow_comment_html',
						$this->GetPreference('allow_comment_html')));
$smarty->assign('word_limit',$this->GetPreference('word_limit',0));

$opts = array('none'=>$this->Lang('none'),
	      'normal'=>$this->Lang('validate_normal'),
	      'domain'=>$this->Lang('validate_domain'));
$smarty->assign('validate_opts',$opts);
$smarty->assign('validate_email',$this->GetPreference('validate_email'));

$tmp = array(0=>$this->Lang('no'),
	     1=>$this->Lang('yes'),
	     -1=>$this->Lang('auto'));
$smarty->assign('input_moderate_comments',
		$this->CreateInputDropdown($id,'moderate_comments',array_flip($tmp),-1,$this->GetPreference('moderate_comments')));
// $smarty->assign('input_moderate_comments',
// 		$this->CreateInputYesNoDropdown($id,'moderate_comments',
// 						$this->GetPreference('moderate_comments')));
$smarty->assign('moderation_patterns',$this->GetPreference('moderation_patterns'));
$smarty->assign('moderation_iplist',$this->GetPreference('moderation_iplist'));
$smarty->assign('input_use_cookies',
		$this->CreateInputYesNoDropdown($id,'use_cookies',
						$this->GetPreference('use_cookies')));

$smarty->assign('input_success_msg',
		$this->CreateTextArea(true,$id,
				      $this->GetTemplate('success_msg'),
				      'success_msg'));

echo $this->ProcessTemplate('admin_settings_tab.tpl');

#
# EOF
#
?>
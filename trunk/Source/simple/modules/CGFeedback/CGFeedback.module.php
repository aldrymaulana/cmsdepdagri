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

///////////////////////////////////////////////////////////////////////////
// This module is derived from CGExtensions 
$cgextensions = cms_join_path($gCms->config['root_path'],'modules',
			      'CGExtensions','CGExtensions.module.php');
if( !is_readable( $cgextensions ) )
{
  echo '<h1><font color="red">ERROR: The CGExtensions module could not be found.</font></h1>';
  return;
}
require_once($cgextensions);
///////////////////////////////////////////////////////////////////////////

require_once(dirname(__FILE__).'/defines.php');

class CGFeedback extends CGExtensions
{
  var $_ops_obj;

  /*---------------------------------------------------------
   CGFeedback()
   Constructor
   ---------------------------------------------------------*/
  function __construct()
  {
    parent::__construct();

    $this->_ops_obj = null;
  }

  /*---------------------------------------------------------
   GetName()
   ---------------------------------------------------------*/
  function GetName()
  {
    return 'CGFeedback';
  }

  
  /*---------------------------------------------------------
   GetFriendlyName()
   ---------------------------------------------------------*/
  function GetFriendlyName()
  {
    return $this->Lang('friendlyname');
  }
  
  
  /*---------------------------------------------------------
   GetVersion()
   ---------------------------------------------------------*/
  function GetVersion()
  {
    return '1.5.4';
  }
  
  
  /*---------------------------------------------------------
   GetHelp()
   ---------------------------------------------------------*/
  function GetHelp()
  {
    return $this->Lang('help');
  }
  
  
  /*---------------------------------------------------------
   GetAuthor()
   ---------------------------------------------------------*/
  function GetAuthor()
  {
    return 'calguy1000';
  }


  /*---------------------------------------------------------
   GetAuthorEmail()
   ---------------------------------------------------------*/
  function GetAuthorEmail()
  {
    return 'calguy1000@cmsmadesimple.org';
  }


  /*---------------------------------------------------------
   GetChangeLog()
   ---------------------------------------------------------*/
  function GetChangeLog()
  {
    return @file_get_contents(dirname(__FILE__).'/changelog.inc');
  }

  
  /*---------------------------------------------------------
   IsPluginModule()
   ---------------------------------------------------------*/
  function IsPluginModule()
  {
    return true;
  }


  /*---------------------------------------------------------
   HasAdmin()
   ---------------------------------------------------------*/
  function HasAdmin()
  {
    return true;
  }


  /*---------------------------------------------------------
   GetAdminSection()
   ---------------------------------------------------------*/
  function GetAdminSection()
  {
    return 'content';
  }


  /*---------------------------------------------------------
   GetAdminDescription()
   ---------------------------------------------------------*/
  function GetAdminDescription()
  {
    return $this->Lang('moddescription');
  }


  /*---------------------------------------------------------
   AllowAutoInstall()
   ---------------------------------------------------------*/
  function AllowAutoInstall() {
    return FALSE;
  }


  /*---------------------------------------------------------
   VisibleToAdminUser()
   ---------------------------------------------------------*/
  function VisibleToAdminUser()
  {
    return $this->CheckPermission('Modify Site Preferences') ||
      $this->Checkpermission(CGFEEDBACK_PERM_FEEDBACK) ||
      $this->CheckPermission('Modify Templates');
  }


  /*---------------------------------------------------------
   AllowAutoUpgrade()
   ---------------------------------------------------------*/
  function AllowAutoUpgrade() {
    return FALSE;
  }


  /*---------------------------------------------------------
   GetDependencies()
   ---------------------------------------------------------*/
  function GetDependencies()
  {
    return array('CGExtensions'=>'1.24',
		 'CGSimpleSmarty'=>'1.4');
  }


  /*---------------------------------------------------------
   MinimumCMSVersion()
   ---------------------------------------------------------*/
  function MinimumCMSVersion()
  {
    return "1.9.1";
  }
	
	
  /*---------------------------------------------------------
   SetParameters()
   ---------------------------------------------------------*/
  function SetParameters()
  {
    $this->RegisterModulePlugin();
    $this->RestrictUnknownParams();
    $this->RegisterRoute('/[Ff]eedback\/[Dd]etail\/(?P<cid>[0-9]+)\/(?P<returnid>[0-9]+)\/(?P<feedback_junk>.*?)$/',
			 array('action'=>'detail'));

    // common parameters
    $this->SetParameterType('key1',CLEAN_STRING);
    $this->CreateParameter('key1',null,$this->Lang('param_key1'));
    $this->SetParameterType('key2',CLEAN_STRING);
    $this->CreateParameter('key2',null,$this->Lang('param_key2'));
    $this->SetParameterType('key3',CLEAN_STRING);
    $this->CreateParameter('key3',null,$this->Lang('param_key3'));

    $this->SetParameterType(CLEAN_REGEXP.'/field_.*/',CLEAN_STRING);
    $this->SetParameterType(CLEAN_REGEXP.'/feedback_.*/',CLEAN_STRING);

    // parameters for the comment form
    $this->SetParameterType('author_name',CLEAN_STRING);
    $this->SetParameterType('author_email',CLEAN_STRING);
    $this->SetParameterType('author_notify',CLEAN_INT);
    $this->SetParameterType('rating',CLEAN_INT);
    $this->SetParameterType('title',CLEAN_STRING);
    $this->SetParameterType('comment',CLEAN_STRING);
    $this->SetParameterType('submit',CLEAN_STRING);

    $this->SetParameterType('destpage',CLEAN_STRING);
    $this->CreateParameter('destpage',null,$this->Lang('param_destpage'));
    $this->SetParameterType('policy',CLEAN_STRING);
    $this->CreateParameter('policy','normal',$this->Lang('param_policy'));
    $this->SetParameterType('inline',CLEAN_INT);
    $this->CreateParameter('inline','0',$this->Lang('param_inline'));
    $this->SetParameterType('commenttemplate',CLEAN_STRING);
    $this->CreateParameter('commenttemplate','',$this->Lang('param_commenttemplate'));
    $this->SetParameterType('noredirect',CLEAN_INT);
    $this->CreateParameter('noredirect',0,$this->Lang('param_noredirect'));

    $this->CreateParameter('voteonce',0,$this->Lang('param_voteonce'));
    $this->SetParameterType('voteonce',CLEAN_INT);
    $this->CreateParameter('titlerequired',1,$this->Lang('param_titlerequired'));
    $this->SetParameterType('titlerequired',CLEAN_INT);
    $this->CreateParameter('commentrequired',1,$this->Lang('param_commentrequired'));
    $this->SetParameterType('commentrequired',CLEAN_INT);
    $this->CreateParameter('emailrequired',1,$this->Lang('param_emailrequired'));
    $this->SetParameterType('emailrequired',CLEAN_INT);
    $this->CreateParameter('namerequired',1,$this->Lang('param_namerequired'));
    $this->SetParameterType('namerequired',CLEAN_INT);
    $this->CreateParameter('rationgoptions','1,2,3,4,5',$this->Lang('param_ratingoptions'));
    $this->SetParameterType('ratingoptions',CLEAN_STRING);
    $this->CreateParameter('redirectextra','',$this->Lang('param_redirectextra'));
    $this->SetParameterType('redirectextra',CLEAN_STRING);
    
    // parameters for the summary view.
    $this->SetParameterType('pagenum',CLEAN_INT);

    $this->SetParameterType('pagelimit',CLEAN_INT);
    $this->CreateParameter('pagelimit',10000,$this->Lang('param_pagelimit'));
    $this->SetParameterType('summarytemplate',CLEAN_STRING);
    $this->CreateParameter('summarytemplate','',$this->Lang('param_summarytemplate'));
    $this->SetParameterType('sortby',CLEAN_STRING);
    $this->CreateParameter('sortby','created',$this->Lang('param_sortby'));
    $this->SetParameterType('sortorder',CLEAN_STRING);
    $this->CreateParameter('sortorder','DESC',$this->Lang('param_sortorder'));
    $this->SetParameterType('showall',CLEAN_INT);
    $this->CreateParameter('showall',0,$this->Lang('param_showall'));
    $this->SetParameterType('detailpage',CLEAN_STRING);
    $this->CreateParameter('detailpage','',$this->Lang('param_detailpage'));
    $this->SetParameterType('detailtemplate',CLEAN_STRING);
    $this->CreateParameter('detailtemplate','',$this->Lang('param_detailtemplate'));

    // parameters for the ratings view
    $this->SetParameterType('ratingstemplate',CLEAN_STRING);
    $this->CreateParameter('ratingstemplate','',$this->Lang('param_ratingstemplate'));

    // parameters for the detail view
    $this->SetParameterType('cid',CLEAN_STRING);
    $this->CreateParameter('cid','',$this->Lang('param_cid'));

    $this->CreateParameter('action','default',$this->Lang('param_action'));
  }


  /*---------------------------------------------------------
   InstallPostMessage()
   ---------------------------------------------------------*/
  function InstallPostMessage()
  {
    return $this->Lang('postinstall');
  }


  /*---------------------------------------------------------
   UninstallPostMessage()
   ---------------------------------------------------------*/
  function UninstallPostMessage()
  {
    return $this->Lang('postuninstall');
  }


  /*---------------------------------------------------------
   UninstallPreMessage()
   ---------------------------------------------------------*/
  function UninstallPreMessage()
  {
    return $this->Lang('ask_really_uninstall');
  }	


  /*---------------------------------------------------------
   GetHeaderHTML()
   ---------------------------------------------------------*/
  function GetHeaderHTML()
  {
    $obj =& $this->GetModuleInstance('JQueryTools');
    if( is_object($obj) )
      {
$tmpl = <<<EOT
{JQueryTools action='incjs' exclude='form'}
{JQueryTools action='ready'}
EOT;
        return $this->ProcessTemplateFromData($tmpl);
      }
  }	

  /*---------------------------------------------------------
   GetCommentOperations()
   ---------------------------------------------------------*/
  function &GetCommentOperations()
  {
    if( !is_object($this->_ops_obj) )
      {
	require_once(dirname(__FILE__).'/class.comment_operations.php');
	$this->_ops_obj = new CGFeedback_comment_operations($this);
      }
    return $this->_ops_obj;
  }

} // class

?>

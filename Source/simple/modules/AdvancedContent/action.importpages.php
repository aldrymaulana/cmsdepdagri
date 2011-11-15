<?php
#-------------------------------------------------------------------------------
#
# Module : AdvancedContent (c) 2010-2011 by Georg Busch (georg.busch@gmx.net)
#          a content management tool for CMS Made Simple
#          The projects homepage is http://dev.cmsmadesimple.org/projects/content2/
#          CMS Made Simple is (c) 2004-2011 by Ted Kulp (wishy@cmsmadesimple.org)
#          The projects homepage is: http://www.cmsmadesimple.org
# Version: 0.9.1
# File   : action.importPages.php
# Purpose: toggles the contenttype
# License: GPL
#
#-------------------------------------------------------------------------------

if(!is_object(cmsms())) exit;

if(!$this->CheckPermission('Manage AdvancedContent Preferences'))
{
	return $this->DisplayErrorPage($id,$returnid, $this->Lang('error_permissions'));
}
if(isset($params['old_type']) && isset($params['new_type'])
	&& $params['old_type'] != '' && $params['new_type'] != ''
	&& $params['new_type'] != $params['old_type']
	&& ($params['new_type'] == 'content' || $params['new_type'] == 'content2')
	&& ($params['old_type'] == 'content' || $params['old_type'] == 'content2'))
{
	$db =& $this->GetDb();
	$query    = "UPDATE ".cms_db_prefix()."content SET type = ? WHERE type = ?";
	$dbresult = $db->Execute($query, array($params['new_type'],$params['old_type']));
	if($dbresult)
	{
		$message = $this->lang('success_importpages',$this->lang($params['old_type']), $this->lang($params['new_type']));
		$_params = array(
			'new_type' => $params['new_type'],
			'old_type' => $params['old_type'],
			'message'  => 'success_importpages');
	}
	else
	{
		$_params = array(
			'new_type'     => $params['new_type'],
			'old_type'     => $params['old_type'],
			'errormessage' => 'error_importpages');
		$errormessage = $this->lang('error_importpages',$this->lang($params['old_type']), $this->lang($params['new_type']));
	}
}
else
{
	$_params      = array('errormessage' => 'error_insufficientparams');
	$errormessage = $this->lang('error_insufficientparams', 'new_type, old_type');
}

if(isset($params['ajax']))
{
	@ob_end_clean();
	@ob_start();
	if(isset($errormessage))
	{
		echo '<div class="pageerrorcontainer"><ul class="pageerror"><li>'. $errormessage . '</li></ul></div>';
	}
	if(isset($message))
	{
		echo '<div class="pagemcontainer"><p class="pagemessage">'.$message.'</p></div>';
	}
	ob_end_flush();
	exit;
}
$_params['submit'] = true;
$this->Redirect($id, 'defaultadmin', $returnid, $_params);

?>

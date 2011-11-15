<?php
#-------------------------------------------------------------------------------
#
# Module : AdvancedContent (c) 2010-2011 by Georg Busch (georg.busch@gmx.net)
#          a content management tool for CMS Made Simple
#          The projects homepage is http://dev.cmsmadesimple.org/projects/content2/
#          CMS Made Simple is (c) 2004-2011 by Ted Kulp (wishy@cmsmadesimple.org)
#          The projects homepage is: http://www.cmsmadesimple.org
# Version: 0.9.1
# License: GPL
#
#-------------------------------------------------------------------------------

if(!is_object(cmsms())) exit;

if(!$this->CheckPermission('Manage AdvancedContent Preferences'))
{
	return $this->DisplayErrorPage($id,$returnid, $this->Lang('error_permissions'));
}
# switch content_props redirect_params, feu_params, custom_params
if(isset($params['old_type']) && isset($params['new_type'])
	&& $params['old_type'] != '' && $params['new_type'] != ''
	&& $params['new_type'] != $params['old_type']
	&& ($params['new_type'] == 'custom_params' || $params['new_type'] == 'feu_params')
	&& ($params['old_type'] == 'redirect_params' || $params['old_type'] == 'custom_params' || $params['feu_params']))
{
	$db =& $this->GetDb();
	$query = "UPDATE `". cms_db_prefix() . "content_props` CP, `". cms_db_prefix() . "content` C 
		SET CP.prop_name = ? 
		WHERE CP.prop_name = ? 
		AND CP.content_id = C.content_id 
		AND C.type = ?;";
		
	$query .= "UPDATE `". cms_db_prefix() . "content_props` CP, `". cms_db_prefix() . "content` C 
		SET CP.prop_name = ? 
		WHERE CP.prop_name = ? 
		AND CP.content_id = C.content_id 
		AND C.type = ?;";
	
	$query .= "UPDATE `". cms_db_prefix() . "content_props` CP, `". cms_db_prefix() . "content` C 
		SET CP.prop_name = ? 
		WHERE CP.prop_name = ? 
		AND CP.content_id = C.content_id 
		AND C.type = ?;";
	
	if($params['old_type'] == 'redirect_params')
	{
		$dbresult = $db->Execute($query, array($params['new_type'], $params['old_type'], 'content2', 
			$params['new_type'].'_smarty', 'evaluate_smarty','content2',
			'inherit_'.$params['new_type'], 'inherit_redirect_params','content2'));
		$this->RemovePreference('switch_redirect_params');
	}
	else
	{
		$dbresult = $db->Execute($query, array($params['new_type'], $params['old_type'], 'content2', 
			$params['new_type'].'_smarty', $params['old_type'].'_smarty','content2',
			'inherit_'.$params['new_type'], 'inherit_'.$params['old_type'],'content2'));
	}
	$message = $this->lang('success_switchparams', $this->lang($params['old_type']), $this->lang($params['new_type']));
	$_params = array('new_type' => $params['new_type'],
		'old_type' => $params['old_type'],
		'message'  => 'success_switchparams');
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

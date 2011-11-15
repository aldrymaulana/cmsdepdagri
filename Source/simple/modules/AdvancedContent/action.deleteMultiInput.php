<?php
#-------------------------------------------------------------------------------
#
# Module : AdvancedContent (c) 2010-2011 by Georg Busch (georg.busch@gmx.net)
#          a content management tool for CMS Made Simple
#          The projects homepage is http://dev.cmsmadesimple.org/projects/content2/
#          CMS Made Simple is (c) 2004-2011 by Ted Kulp (wishy@cmsmadesimple.org)
#          The projects homepage is: http://www.cmsmadesimple.org
# Version: 0.9.1
# File   : action.deleteMultiInput.php
# License: GPL
#
#-------------------------------------------------------------------------------

if(!is_object(cmsms())) exit;

if(!$this->CheckPermission('Manage AdvancedContent MultiInputs'))
{
	return $this->DisplayErrorPage($id,$returnid, $this->Lang('error_permissions'));
}
$items        = array();
$_params      = array();
$message      = '';
$errormessage = '';
if(isset($params['input_id']))
{
	$items[] = $params['input_id'];
}
else if(isset($params['submit_bulkaction']))
{
	foreach($params as $param_name => $param_value)
	{
		if(startswith($param_name,'multi_input-'))
		{
			$items[] = $param_value;
		}
	}
}
if($this->DeleteMultiInput($items))
{
	$_params['message'] = 'multi_input_deleted';
	$message .= $this->lang('multi_input_deleted') . "<br />";
}
else
{
	$_params['errormessage'] = 'error_delete_multi_input';
	$errormessage .= $this->lang('error_delete_multi_input') . "<br />";
}
if(!$this->DeleteTplAssoc('multi_input',$items))
{
	$_params['message'] = 'error_delete_multi_input_tpl_assocs';
	$errormessage .= $this->lang('error_delete_multi_input_tpl_assocs'). "<br />";
}
$_params['active_tab'] = 'multi_input';

if(isset($params['ajax']))
{
	@ob_end_clean();
	@ob_start();
	if($errormessage)
	{
		echo '<div class="pageerrorcontainer"><ul class="pageerror"><li>'. $errormessage . '</li></ul></div>';
	}
	if($message)
	{
		echo '<div class="pagemcontainer"><p class="pagemessage">'.$message.'</p></div>';
	}
	ob_end_flush();
	exit;
}

$this->Redirect($id, 'defaultadmin', $returnid, $_params);

?>

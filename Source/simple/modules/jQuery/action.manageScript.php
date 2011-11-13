<?php
if (!isset($gCms)) exit;

if (! $this->CheckAccess())
{
	return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}

if (isset($params['cancel']))
{
	return $this->Redirect($id, 'defaultadmin', $returnid, array('active_tab' => 'scripts'));
}

$script = null;
if (isset($params['script_id']) && $params['script_id'] != '')
{
	$script = jQueryScript::retrieveByPk($params['script_id']);
}
if(is_null($script))
{
	$script = new jQueryScript();
}

if (isset($params['delete']))
{
	$script->delete();
	return $this->Redirect($id, 'defaultadmin', $returnid, array('active_tab' => 'scripts'));
}

if (isset($params['load_default_state']))
{
	$script->setLoadDefault(!$script->getLoadDefault());
	$script->save();
	return $this->Redirect($id, 'defaultadmin', $returnid, array('active_tab' => 'scripts'));
}

if (isset($params['in_header_state']))
{
	$script->setInHeader(!$script->getInHeader());
	$script->save();
	return $this->Redirect($id, 'defaultadmin', $returnid, array('active_tab' => 'scripts'));
}



$form = new jQueryForm('jQuery', $id, 'manageScript', $returnid);
//$form->setLabel('submit',$this->lang('save'));
//$form->setLabel('apply',$this->lang('save_continue'));
$form->setButtons(array('submit','apply','cancel'));
$form->setWidget('script_id', 'hidden', array('object' => &$script, 'field_name' => 'id'));
$form->setWidget('name','text', array('object' => &$script));
$form->setWidget('code','textarea', array('object' => &$script));
$form->setWidget('load_default','checkbox', array('object' => &$script));
$form->setWidget('in_header','checkbox', array('object' => &$script));
$form->setWidget('required_plugins','text', array('object' => &$script));

if(isset($params['submit']) || isset($params['apply']))
{
	$script->save();
	$form->getWidget('script_id')->setValues($script->getId());
	if (isset($params['submit']))
	{
			return $this->Redirect($id, 'defaultadmin', $returnid, array('active_tab' => 'scripts'));
	}
}

$this->smarty->assign('form', $form);


echo $this->ProcessTemplate('manageScript.tpl');
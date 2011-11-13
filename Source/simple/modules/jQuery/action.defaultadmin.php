<?php
if (!isset($gCms)) exit;

if (! $this->CheckAccess())
	{
	return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
	}

$tabs = array ( 'plugins' => false, 'scripts' => false, 'options' => false );

if (isset($params['active_tab']))
{
    $tabs[$params['active_tab']] = true;
}

if(isset($params['is_submitted']))
{
	foreach($this->Plugins() as $plugin => $parameters)
	{
		$this->SetPreference($plugin, $params[$plugin]);
	}
}

$headers = $this->StartTabHeaders().
$this->SetTabHeader('scripts','Scripts', $tabs['scripts']).
$this->SetTabHeader('plugins','Plugins', $tabs['plugins']).
$this->SetTabHeader('options',$this->lang('options'), $tabs['options']).
$this->EndTabHeaders().$this->StartTabContent();
$this->smarty->assign('tab_headers',$headers);
$this->smarty->assign('end_tab',$this->EndTab());
$this->smarty->assign('tab_footers',$this->EndTabContent());
$this->smarty->assign('start_plugins_tab',$this->StartTab('plugins'));
$this->smarty->assign('start_scripts_tab',$this->StartTab('scripts'));
$this->smarty->assign('start_options_tab',$this->StartTab('options'));


// Scripts
$scripts = jQueryScript::doSelect();
foreach($scripts as &$script)
{
	$script->title = $this->CreateLink($id, 'manageScript',$returnid, $script->getName(),array('script_id' => $script->getId()));
	$script->edit = $this->CreateLink($id, 'manageScript',$returnid, $gCms->variables['admintheme']->DisplayImage('icons/system/edit.gif', $script->getName(), '', '', 'systemicon'),array('script_id' => $script->getId()));
	$script->delete = $this->CreateLink($id, 'manageScript',$returnid, $gCms->variables['admintheme']->DisplayImage('icons/system/delete.gif', $script->getName(), '', '', 'systemicon'),array('script_id' => $script->getId(), 'delete' => true), $this->lang('are_you_sure'));
	
	if ($script->getLoadDefault())
	{
		$script->load_default_state = $this->CreateLink($id, 'manageScript',$returnid, $gCms->variables['admintheme']->DisplayImage('icons/system/true.gif', $script->getName(), '', '', 'systemicon'),array('script_id' => $script->getId(), 'load_default_state' => true));
	}
	else
	{
			$script->load_default_state = $this->CreateLink($id, 'manageScript',$returnid, $gCms->variables['admintheme']->DisplayImage('icons/system/false.gif', $script->getName(), '', '', 'systemicon'),array('script_id' => $script->getId(), 'load_default_state' => true));
	}
	
	if ($script->getInHeader())
	{
		$script->in_header_state = $this->CreateLink($id, 'manageScript',$returnid, $gCms->variables['admintheme']->DisplayImage('icons/system/true.gif', $script->getName(), '', '', 'systemicon'),array('script_id' => $script->getId(), 'in_header_state' => true));
	}
	else
	{
			$script->in_header_state = $this->CreateLink($id, 'manageScript',$returnid, $gCms->variables['admintheme']->DisplayImage('icons/system/false.gif', $script->getName(), '', '', 'systemicon'),array('script_id' => $script->getId(), 'in_header_state' => true));
	}
	
	
}

$this->smarty->assign('add_script', $this->CreateLink($id, 'manageScript', $returnid, 
$gCms->variables['admintheme']->DisplayImage('icons/system/newobject.gif', $this->Lang('add_script'), '', '', 'systemicon') . ' ' . $this->lang('add_script')
));

$this->smarty->assign('title_script',$this->lang('scripts'));
$this->smarty->assign('scripts',$scripts);
//$this->smarty->assign('add_icon', $this->CreateLink($id, 'edit', '', );



// Plugins
$this->smarty->assign('title_plugins','Plugins');
$plugins = $this->checkPlugins();	
	
$entries =  array();
$rowclass = 'row1';

foreach($plugins as $plugin => $parameters)
{
	$entry = new stdClass();
	$entry->name = $plugin;	
	$entry->path = $parameters['path'];				
//	$entry->field = $this->CreateInputCheckbox($id, $plugin, 1, (isset($params['is_submitted'])) ? $params[$plugin] : $this->GetPreference($plugin, 0));
	
	if (isset($parameters['active']) && $parameters['active'])
	{
			$entry->active = $this->CreateLink($id, 'managePlugin', $returnid, 
$this->getIcon('connect.png', $this->Lang('desactivate')),
//$gCms->variables['admintheme']->DisplayImage('icons/system/true.gif', $this->Lang('desactivate'),'','','systemicon'),
 array('plugin'=>$plugin, 'plugin_action' => 'change_state'));
	}
	else
	{
			$entry->active = $this->CreateLink($id, 'managePlugin', $returnid,
$this->getIcon('disconnect.png', $this->Lang('activate')),
//$gCms->variables['admintheme']->DisplayImage('icons/system/false.gif', $this->Lang('activate'),'','','systemicon'), 
array('plugin'=>$plugin, 'plugin_action' => 'change_state'));
	}
	
		$entry->deletelink = $this->CreateLink($id, 'deletePlugin', $returnid, $gCms->variables['admintheme']->DisplayImage('icons/system/delete.gif', $this->Lang('delete_plugin'),'','','systemicon'), array('plugin'=>$plugin), $this->Lang('areyousure'));
		$entry->rowclass = $rowclass;
		($rowclass=="row1"?$rowclass="row2":$rowclass="row1");
		$entries[] = $entry;
}

/*$this->smarty->assign('plugins_startform', $this->CreateFormStart($id, 'defaultadmin', $returnid));
$this->smarty->assign('plugins_endform', $this->CreateFormEnd());
$this->smarty->assign('is_submitted',$this->CreateInputHidden($id, 'is_submitted', '1'));
$this->smarty->assign('submit_button',$this->CreateInputSubmit($id, 'submit', 'Update plugins'));*/

$this->smarty->assign('is_active', $this->lang('is active'));
$this->smarty->assign('title_plugin', $this->Lang('title_plugin'));
$this->smarty->assign('title_path', $this->Lang('title_path'));
$this->smarty->assign('plugins', $entries);

// OPTIONS

$form = new jQueryForm('jQuery', $id, 'defaultadmin', $returnid);
$form->setWidget('active_tab', 'hidden', array('value' => 'options'));
$form->setWidget('autoload', 'checkbox', array('preference' => 'autoload'));
$this->smarty->assign('form', $form);

echo $this->ProcessTemplate('adminpanel.tpl');
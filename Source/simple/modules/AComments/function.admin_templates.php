<?php
/*======================================================================================
Module: AComments
======================================================================================*/

// Check authorisation
if ( !isset($gCms) ) exit;
check_login();
if ( !$this->CheckPermission('Modify Templates') ) exit;

// Set Tab name
$tabto = 'templates';

// Display form for editing a template
if (isset($params['edittemplate'])) {
    // Get template name
    $template = preg_replace('/[^0-9a-zA-Z_ -]/','',$params['edittemplate']);
	$template_content = $this->GetTemplate($template, $this->GetName());
	if (!$template_content) $template_content = $this->GetTemplateFromFile('default_display');
    // Assign Smarty vars
    $smarty->assign('formstart',$this->CreateFormStart($id,'admin_edittemplate',$returnid,'post','multipart/form-data',true,array()));
    $smarty->assign('formend', $this->CreateFormEnd());
    $smarty->assign('submit', $this->CreateInputSubmit($id,$template ? 'submit': 'add',$this->Lang('submit')));
    $smarty->assign('cache', $this->CreateInputSubmit($id,$template ? 'cache' : 'cacheadd',$this->Lang('cache')));
    $smarty->assign('reset', $this->CreateInputReset($id,'reset',$this->Lang('reset')));
    $smarty->assign('cancel', $this->CreateInputSubmit($id,'cancel',$this->Lang('cancel')));
    $smarty->assign('tabto', $this->CreateInputHidden($id,'tabto',$tabto));
    $smarty->assign('prefix', $this->CreateInputHidden($id,'prefix',$prefix));
    $smarty->assign('edittemplate', $this->CreateInputHidden($id,'template',$template));
    $smarty->assign('templateedit', $this->Lang('templateedit'));
    $smarty->assign('template_name', $template);
    $smarty->assign('template_content', $this->CreateTextArea(false, $id, $template_content, 'templatecontent', 'pagebigtextarea'));
    $smarty->assign('prompt_templatename', $this->Lang('templatename'));
    $smarty->assign('input_templatename', $template ? $template : $this->CreateInputText($id,'template','',50,100));
    // Display Template
    echo $this->ProcessTemplate('admin_edittemplate.tpl');
}
// Display a list with available templates
else {
	
	// Set vars and images
	$imagefalse = $gCms->variables['admintheme']->DisplayImage('icons/system/false.gif',$this->Lang('makestandard'),'','','systemicon');
	$imagetrue = $gCms->variables['admintheme']->DisplayImage('icons/system/true.gif',$this->Lang('standard'),'','','systemicon');
	$imageedit = $gCms->variables['admintheme']->DisplayImage('icons/system/edit.gif',$this->Lang('edit'),'','','systemicon');
	$imagedelete = $gCms->variables['admintheme']->DisplayImage('icons/system/delete.gif',$this->Lang('delete'),'','','systemicon');
	$imagenew = $gCms->variables['admintheme']->DisplayImage('icons/system/newobject.gif',$this->Lang('newtemplate'),'','','systemicon');

	// Get templates
	$alltemplates = $this->ListTemplates($this->getName());

	// Show templates
	$rowarray = array();
	$rowclass = 'row1';
	foreach ( $alltemplates as $onetemplate ) {
		// Build edit link
		$row = new StdClass();
		$row->name = $this->CreateLink( $id, 'admin_edittemplate', $returnid, $onetemplate, array ( 'tabto'=>$tabto, 'template'=>$onetemplate ), '', false, false, ' title="'.$this->Lang('edit').'"');
		$row->rowclass = $rowclass;
		// Build link for making the template to the default template
		$default = ($this->GetPreference('default_template') == $onetemplate) ? true : false;
		if ( $default ) { $row->default = $imagetrue; }
		else { $row->default = $this->CreateLink( $id, 'admin_makestandardtemplate', $returnid, $imagefalse, array ( 'tabto'=>$tabto, 'template'=>$onetemplate ), $this->Lang('reallymakestandard'), false, false, ' title="'.$this->Lang('makestandard').'"'); }
		// Build edit icon
		$row->editlink = $this->CreateLink( $id, 'admin_edittemplate', $returnid, $imageedit, array ( 'tabto'=>$tabto, 'template'=>$onetemplate ), '', false, false, ' title="'.$this->Lang('edit').'"');
		// Build delete icon
		if ( $default ) { $row->deletelink = '&nbsp;'; }
		else { $row->deletelink = $this->CreateLink( $id, 'admin_deletetemplate', $returnid, $imagedelete, array ( 'tabto'=>$tabto, 'template'=>$onetemplate ), $this->Lang('reallydelete'), false, false, ' title="'.$this->Lang('delete').'"'); }
		// merge new template to array
		array_push ($rowarray, $row);
		// Alternate row color
		($rowclass == "row1" ? $rowclass = "row2" : $rowclass = "row1");
	}

	// Assign smarty vars
	$smarty->assign('items', $rowarray );
	$smarty->assign('template', $this->Lang('template'));
	$smarty->assign('standard', $this->Lang('standard'));
	$smarty->assign('newtemplatelink', $this->CreateLink( $id, 'admin_edittemplate', '', $imagenew.' '.$this->Lang('newtemplate'), array ( 'tabto'=>$tabto, 'template'=>'' ), '', false, false, ' title="'.$this->Lang('newtemplate').'"'));
	$smarty->assign($this->CreateFormEnd());
	echo $this->ProcessTemplate('admin_listtemplates.tpl');
}

// EOF
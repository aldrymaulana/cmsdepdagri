<?php
/*======================================================================================
Module:		IE6Warning
======================================================================================*/

// Check authorisation
if ( !isset($gCms) ) exit;
check_login();
if ( !$this->CheckPermission('Modify Templates') ) exit;

// Get POST data
$tabto = preg_replace('/[^0-9a-zA-Z_]/','',$params['tabto']);
$edittemplate = preg_replace('/[^0-9a-zA-Z_]/','',$params['template']);
$template_name = $edittemplate;
$template_content = $params['templatecontent'];

// Save template changes
if (isset($params['submit']) || isset($params['cache']) || isset($params['add']) || isset($params['cacheadd'])) {
    $this->SetTemplate($edittemplate, $template_content, $this->GetName());
}

// Redirect
if (isset($params['submit']) || isset($params['cancel']) || isset($params['add'])) $this->Redirect($id, 'defaultadmin', $returnid, array( 'tabto'=>$tabto ));
else $this->Redirect($id, 'defaultadmin', $returnid, array( 'tabto'=>$tabto, 'edittemplate'=>$edittemplate, 'template_name'=>$template_name ));

// EOF
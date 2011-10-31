<?php
/*======================================================================================
Module: AComments
======================================================================================*/

// Check authorisation
if ( !isset($gCms) ) exit;
check_login();
if ( !$this->CheckPermission('Modify Templates') ) exit;

// Get POST data
$tabto = 'templates';
$template = preg_replace('/[^0-9a-zA-Z_]/','',$params['template']);

// Check, whether template exists
$this->DeleteTemplate($template,$this->getName());

// Redirect
$this->Redirect($id, 'defaultadmin', $returnid, array( 'tabto'=>$tabto ));

// EOF
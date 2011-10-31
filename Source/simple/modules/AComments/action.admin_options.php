<?php
/*======================================================================================
Module: AComments
======================================================================================*/

// Check authorisation
if ( !isset($gCms) ) exit;
check_login();
if ( !$this->CheckPermission('Modify Site Preferences') ) exit;

// Get POST data
$tabto = 'options';
$params['spamprotect'] = (int)$params['spamprotect'];
$params['moderate'] = (int)$params['moderate'];
$params['notify'] = trim($params['notify']);
$params['disable_html'] = (int)$params['disable_html'];
$params['akismet_check'] = (int)$params['akismet_check'];
$params['enable_trackbacks'] = (int)$params['enable_trackbacks'];
$params['enable_trackback_backlink_check'] = (int)$params['enable_trackback_backlink_check'];
$params['enable_cookie_support'] = (int)$params['enable_cookie_support'];

// Set preferences
$this->SetPreference('spamprotect', $params['spamprotect']);
$this->SetPreference('moderate', $params['moderate']);
$this->SetPreference('notify', $params['notify']);
$this->SetPreference('disable_html', $params['disable_html']);
$this->SetPreference('akismet_check', $params['akismet_check']);
$this->SetPreference('enable_trackbacks', $params['enable_trackbacks']);
$this->SetPreference('enable_trackback_backlink_check', $params['enable_trackback_backlink_check']);
$this->SetPreference('enable_cookie_support', $params['enable_cookie_support']);

// Redirect
$params = array('tab_message'=> 'options_updated', 'active_tab' => 'options', 'tabto'=>$tabto);
$this->Redirect($id, 'defaultadmin', $returnid, $params);

// EOF
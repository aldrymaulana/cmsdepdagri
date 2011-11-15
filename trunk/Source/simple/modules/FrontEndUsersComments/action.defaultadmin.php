<?php
/***************************************************************************
 *                              function.admin.home.php
 *                            -------------------
 *   begin                : 14 nov. 08
 *   copyright            : (C) 2006 Anyware Hosting
 * 	 author				  : Alexandre Courtois
 *   email                : alexandre@anyware-hosting.co.uk
 *
 ***************************************************************************/
 
if (!isset($gCms)) exit;

if (!empty($params['active_tab']))
  $tab = $params['active_tab'];
else
  $tab = 'home';


echo $this->StartTabHeaders();
echo $this->SetTabHeader('home', $this->Lang('home'), ('home' == $tab ? true : false));
echo $this->SetTabHeader('modify_tpl', $this->Lang('modify_tpl'), 'modify_tpl' == $tab ? true : false);
echo $this->SetTabHeader('modify_message_tpl', $this->Lang('modify_message_tpl'), 'modify_message_tpl' == $tab ? true : false);
echo $this->SetTabHeader('preferences', $this->Lang('preferences'), ('preferences' == $tab ? true : false));
echo $this->EndTabHeaders();

// Display each tab's content
echo $this->StartTabContent();

echo $this->StartTab('home', $params);
include('function.admin.home.php');
echo $this->EndTab();

echo $this->StartTab('modify_tpl', $params);
include('function.admin.modify_tpl.php');
echo $this->EndTab();

echo $this->StartTab('modify_message_tpl', $params);
include('function.admin.modify_message_tpl.php');
echo $this->EndTab();

echo $this->StartTab('preferences', $params);
include('function.admin.preferences.php');
echo $this->EndTab();

echo $this->EndTabContent();

?>

<?php
class FrontEndEditor extends CMSModule
{
	/*---------------------------------------------------------
	 GetName()
	 must return the exact class name of the module.
	 If these do not match, bad things happen.
	
	 This is the name that's shown in the main Modules
	 page in the Admin.
	 ---------------------------------------------------------*/
	function GetName()
	{
		return 'FrontEndEditor';
	}
	
	/*---------------------------------------------------------
	 GetFriendlyName()
	 This can return any string.
	 This is the name that's shown in the Admin Menus and section pages
	 (if the module has an admin component).
	 ---------------------------------------------------------*/
	function GetFriendlyName()
	{
		return $this->Lang('friendlyname');
	}
	
	
	/*---------------------------------------------------------
	 GetVersion()
	 This can return any string, preferably a number or
	 something that makes sense for designating a version.
	 The CMS will use this to identify whether or not
	 the installed version of the module is current, and
	 the module will use it to figure out how to upgrade
	 itself if requested.
	 ---------------------------------------------------------*/
	function GetVersion()
	{
		return '1.2.0';
	}
	
	
  function GetHelp()
  {
    return $this->Lang('help');
  }
  
  function GetAuthor()
  {
    return 'Steven Bakker';
  }
  
  function GetAuthorEmail()
  {
    return 'info@dingyourworld.nl';
  }
  
  function GetChangeLog()
  {
    return $this->Lang('changelog');
  }
	/*---------------------------------------------------------
	 IsPluginModule()
	 This function returns true or false, depending upon
	 whether users can include the module in a page or
	 template using a smarty tag of the form
	 {cms_module module='Skeleton' param1=val param2=val...}
	 If your module does not get included in pages or
	 templates, return "false" here.
	
	 (Required if you want to use the method DoAction later.)
	 ---------------------------------------------------------*/
	function IsPluginModule()
	{
		return true;
	}
	
	
	//admin panel
	function HasAdmin()
	{
		// Return true or false depending on whether you actually
		// want to add the admin page for your module to the admin menu.
		return true;
	}
	function GetAdminSection()
	{
		// Tells, which tab we want to put the menuitem of our module.
		// Can be at least 'content', 'extensions' and 'usergroups' ,
		// maybe others too.
		return 'content';
	}
	function VisibleToAdminUser()
	{
		// Depending on permissions, tell whether the menuitem
		// can be shown.
		return true;
	}
	
	
	//installing
	function Install()
	{
		//Create a permission
		$this->CreatePermission('FrontEndEditor Admin', 'Manage FrontEndEditor');
	}
	
	function InstallPostMessage()
	{
		return $this->Lang('postinstall');
	}
	
	//unstalling
	function Uninstall()
	{
		//Remove the permission
		$this->RemovePermission('FrontEndEditor Admin');
	}
	
	function UninstallPreMessage()
	{
		return $this->Lang('uninstall_confirm');
	}
	
	function UninstallPostMessage()
	{
		return $this->Lang('postuninstall');
	}
	
}
?>
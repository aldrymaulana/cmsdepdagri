<?php
$lang["friendlyname"]="JQuery";
$lang["moddescription"]="";
$lang['admindescription']='This module helps managing jQuery and javascripts in the frontend';

$lang["installed"]="JQuery was successfully install";
$lang["postinstall"]="jQuery was successfully install";

$lang["upgraded"]="jQuery version was successfully upgraded (Attention, please configure the autoload feature regarding your needs)";

$lang["really_uninstall"]="Are you sure jQuery should be uninstalled? Any module depending on it will no longer function!";
$lang["uninstalled"]="jQuery was successfully uninstalled";

$lang['title_plugin'] = 'Plugin';
$lang['title_path'] = 'Path';

$lang['scripts'] = 'Scripts';
$lang['script'] = 'Script';
$lang['add_script'] = 'Add script';
$lang['is active'] = 'Is active';
$lang['activate'] = 'Activate';
$lang['desactivate'] = 'Desactivate';

$lang['form_'] = 'Form';
$lang['form_name'] = 'Name';
$lang['form_code'] = 'Code';
$lang['form_load_default'] = 'Load it by default';
$lang['form_in_header'] = 'Load it in the header of the page';
$lang['form_required_plugins'] = 'List of required plugins (separate by comma)';
$lang['form_autoload'] = 'Autoload in header';

$lang['save'] = 'Save';
$lang['are_you_sure'] =  'Are you sure you want to delete this item?';

$lang['options'] = 'Options';


$lang["help"]="

<h3>Installation</h3>
<ul>
  <li>1. Install the module</li>
  <li>2.
		<ul>
			<li>a. Add {jQuery} in your template where you want the libraries to be loaded</li>
			<li>b. (Old way) Add the comment &lt;!--LOAD JQUERY--&gt; in your template where you want the libraries to be loaded and activate the autoload option.</li>
		</ul>
	</li>
</ul>
<h3>Use a plugin</h3>
<p>You can find documentation on how to use a plugin on the jQuery website. This plugin just assure you that the plugin core is loaded.</p>
<p>The best way to use a plugin is to create a script that run the plugin and to put the plugin in the 'required plugin' field of the script. This will assure that the plugin library is loaded prior to the run of your script.</p>
<h3>Install a new plugin</h3>
You can add plugins in the \"/modules/jQuery/libraries/plugins\" directory by following these steps :
<br><br>
<ul>
	<li>1. Create a new directory for your plugin <strong>/modules/jQuery/libraries/plugins/mynewplugin</strong><br><br></li>
	<li>2. Create a new directory named \"js\" in the pugin directory you created : <strong>/modules/jQuery/libraries/plugins/mynewplugin/js</strong><br><br></li>
	<li>3. Add the .js file to <strong>/modules/jQuery/libraries/plugins/mynewplugin/js/mynewplugin.jquery.js</strong><br><br></li>
	<li>4. <strong>Important :</strong>  the js file must be named as following : <strong>mynewplugin.jquery.js</strong>. mynewplugin is exactly the same in the directory name and in the file name.<br><br></li>
	<li>5. Go to the admin section and reload the page, the new plugin will be loaded. You just need to activate it by checking the checkbox.<br></li>
</ul>
<br/>
<h2>Changelog</h2>
<ul>
	<li>Version 0.0.9: Fix the events handling (thanks to Andreas Glunz)</li>
	<li>Version 0.1.0: Disable autoloading by default and add  the {jQuery} function instead</li>
</ul>
<h2>Copyright and License</h2>
<br/>
Copyright &copy; 2010 - Jean-Christophe Cuvelier - Morris & Chapman Belgium<http://www.morris-chapman.com>. All Rights Are Reserved.
<br/><br/>
This module has been released under the GNU Public License. You must agree to this license before using the module.
<h2>Original author</h2>
<p>The orignial author of this module is Benjamin Magits &raquo; benjamin.magits@gmail.com &laquo;</p>


";



?>
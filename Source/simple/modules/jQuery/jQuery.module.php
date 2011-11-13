<?php
require_once('libraries/classes/jQueryBase.class.php');
require_once('libraries/classes/jQueryScript.class.php');
require_once('libraries/classes/jQueryForm.class.php');

class jQuery extends CMSModule
{
	var $pluginDirectory = '/libraries/plugins/'; // DEPRECATED
	
	protected $plugins = array();
	
	const PLUGIN_DIRECTORY  = '/libraries/plugins/';
	
	function GetName()	{					return 'jQuery';	}	
	function GetFriendlyName()	{			return 'jQuery';	}
	function GetVersion()	{				return '1.1.3';	}
	function GetHelp()	{					return $this->Lang('help');	}
	function GetAuthor()	{				return 'Jean-Christophe Cuvelier';	}	
	function GetAuthorEmail()	{			return 'jcc@morris-chapman.com';	}
	function GetChangeLog()	{				return $this->Lang('changelog');	}
	function IsPluginModule()	{			return true;	}
	function HasAdmin()	{					return true;	}
	function GetAdminSection()	{			return 'layout';	}
	function GetAdminDescription()	{		return $this->Lang('admindescription');	}
	function VisibleToAdminUser()	{       return $this->CheckAccess();	}
	function CheckAccess($perm = '')	{	return $this->CheckPermission($perm);	}
    function DisplayErrorPage($id, &$params, $return_id, $message='')    {
		$this->smarty->assign('title_error', $this->Lang('error'));
		$this->smarty->assign_by_ref('message', $message);
        echo $this->ProcessTemplate('error.tpl');
    }
	function GetDependencies()	{			return array();	}
	function MinimumCMSVersion()	{		return "1.0.6";	}
	function InstallPostMessage()	{		return $this->Lang('postinstall');	}	
	function UninstallPostMessage()	{		return $this->Lang('postuninstall');	}
	function UninstallPreMessage()	{		return $this->Lang('really_uninstall');	}	
	function SetParameters()	{	   		$this->RegisterModulePlugin();	}		
	function HandlesEvents()	{			return true;	}	
	function DoEvent($originator, $eventname, &$params)
	{
		if($originator == 'Core' && $eventname == 'ContentPostRender')
		{
			$this->ContentPostRender($params['content']);
		}
	}    
	function RegisterEvents()	{		$this->AddEventHandler('Core', 'ContentPostRender', false);	}
	
	public function GetHeaderHTML()
	{
		// For Admin side
		return;
	}
	
 	private function generateHeader() 
    {	
		global $jQuery;
		
		if (isset($jQuery['loaded']))
		{
			return;
		}
		
		$html = jQueryBase::getJavascriptTag($this->config['root_url'].'/modules/jQuery/libraries/jquery-1.4.2/jquery.js');
		$html .= jQueryBase::getJavascriptTag(null,'jQuery.noConflict();');

		// foreach ($this->getPlugins() as $plugin => $parameters)
		// 		{
		// 			if (isset($parameters['active'] ))
		// 			$html .= ($parameters['active'] == 1)?jQueryBase::getJavascriptTag($this->config['root_url'] . '/modules/jQuery/libraries/plugins/' . $parameters['path']):'';        			
		// 		}
				
		// Scripts loading
		$default_scripts = jQueryScript::doSelect(array('where' => array('load_default' => true)));
		foreach($default_scripts as $script)
		{
			$jQuery['headers']['scripts'][$script->getPosition()] = $script->getId();
			$required_plugins = explode(',',$script->getRequiredPlugins());
			foreach($required_plugins as $plugin)
			{
				if ($plugin != '')	$jQuery['headers']['plugins'][$plugin] = 1; //TODO: FIX THE POSITION ISSUE
			}
		}
		
		
		// Plugins
		$plugins = $this->getActivePlugins();
		foreach($plugins as $plugin => $status)
		{
			$jQuery['headers']['plugins'][$plugin] = 1;
		}
		// Output plugins 
		if (is_array($jQuery['headers']['plugins']))
		{
			foreach ($jQuery['headers']['plugins'] as $plugin => $status)
			{
				$html .= jQueryBase::getJavascriptTag($this->getPluginUrl($plugin));
			}
		}
		
		// Output scripts
		if (is_array($jQuery['headers']['scripts']))
		{
			ksort($jQuery['headers']['scripts']);
			foreach ($jQuery['headers']['scripts'] as $script_id)
			{
				$html .= jQueryBase::getJavascriptTag($this->config['root_url'].'/modules/jQuery/load.php?id='.$script_id);
			}
		}

		$jQuery['loaded'] = true;
		return $html;
    }


    
    function ContentPostRender(&$content)
    {
			// Content side
		if ($this->getPreference('autoload') == 1)
		{
	        if (strpos($content, '<!--LOAD JQUERY-->') !== FALSE)
	        {
	            $content = str_replace('<!--LOAD JQUERY-->', $this->generateHeader(), $content);
	        }
			elseif (strpos($content, '<!--NOJQUERY-->') !== FALSE)
	        {
	            //$content = str_replace('<!--LOAD JQUERY-->', $this->GetHeaderHTML(), $content);
	        }
	        else
	        {
				// Load scripts at the end (speed up loading)
	            $content = str_replace('</body', $this->generateHeader()  .'</body', $content);
	        }
		}
    }

// Plugins management

public function checkPlugins()
{
	$plugins =  $this->getPlugins();
	$plugin_scan = $this->scanPlugins();
	
	foreach($plugin_scan as $plugin => $path)
	{
		$plugins[$plugin]['path'] = $path;
	}
	
	// Check for ghosts plugins
	
	foreach ($plugins as $plugin => $plugin_values) 
	{
		if (is_array($plugin))
		{
			foreach($plugin as $plug)
			{
				if (!empty($plug) && !isset($plugin_scan[$plug]))
				{
					unset($plugin[$plug]);
				}
			}
		}
		else
		{
			if (!empty($plugin) && !isset($plugin_scan[$plugin]))
			{
				unset($plugins[$plugin]);
			}
		}	
	}
	
	$this->setPlugins($plugins);
	
	return $plugins;	
}

public function getPlugins()
{
	$plugins = unserialize($this->GetPreference('plugins', array()));
//	asort($plugins);
	return $plugins;
}

public function setPlugins($plugins = array())
{
	return $this->setPreference('plugins', serialize($plugins));
}

public function scanPlugins()
{
	$plugins_dir = dirname(__FILE__) . jQuery::PLUGIN_DIRECTORY;
	
	$dir = scandir($plugins_dir);

	$plugins =  array();

	foreach ($dir as $plugin)
	{
		if(
			$plugin != '.' 
			&& $plugin != '..' 
			&& is_dir($plugins_dir . $plugin) 
			&& file_exists( $plugins_dir . $plugin . '/js/' . $plugin . '.jquery.js' ) 
			)
		{
			$plugins[$plugin] = $plugin . '/js/' . $plugin . '.jquery.js';
		}
	}
	return $plugins;
}    

public function getPluginUrl($plugin)
{
	return $this->config['root_url'] . '/modules/jQuery/libraries/plugins/' . $plugin . '/js/' . $plugin . '.jquery.js';
}

public function getActivePlugins()
{
	$plugins = array();
	foreach ($this->getPlugins() as $plugin => $parameters)
	{
		if (isset($parameters['active']) && $parameters['active'] == 1)
		{
			$plugins[$plugin] = 1; //TODO: FIX POSITION
		}
	}
	return $plugins;
}	
// DEPRECATED

function GetPluginPath($plugin)
{
	return $plugin . '/js/' . $plugin . '.jquery.js'; 
}


function PluginsDirectory()
{
	return '/libraries/plugins/';
}




function Plugins()
{
$plugins = array();

	foreach ($this->GetPlugins() as $plugin)
{
	$plugins[$plugin] =  array('active' => $this->GetPreference($plugin, 0));
}
	return $plugins;
}

function getIcon($icon, $alt=null)
{
	$config =& $this->getConfig();
	$image_path = dirname(__FILE__) . DIRECTORY_SEPARATOR . 'images'. DIRECTORY_SEPARATOR . 'icons' . DIRECTORY_SEPARATOR . $icon;
	$image_url = $config['root_url'] . '/modules/' . $this->GetName(). '/images/icons/' . $icon;
	if(is_file($image_path))
	{
		$img = '<img src="'.$image_url.'"';
		if (!is_null($alt))
		{
			$img .= ' alt="'.$alt.'" title="'.$alt.'"';
		}
		$img .= ' />';
		return  $img;
	}
	return null;
}


}

?>

<?php
if (!isset($gCms)) exit;

if (isset($params['script']))
{
	$script = jQueryScript::retrieveByPk($params['script']);
	if (!is_null($script))
	{
		if ($script->getInHeader() || $script->getLoadDefault())
		{
			// We have to load it in header
			global $jQuery;
			$jQuery['headers']['scripts'][$script->getPosition()] = $script->getId();
				$required_plugins = explode(',',$script->getRequiredPlugins());
				foreach($required_plugins as $plugin)
				{
					if ($plugin != '')	$jQuery['headers']['plugins'][$plugin] = 1; //TODO: FIX THE POSITION ISSUE
				}
		}
		else
		{
			echo jQueryBase::getJavascriptTag($this->config['root_url'].'/modules/jQuery/load.php?id='.$script->getId());
		}
	}
}
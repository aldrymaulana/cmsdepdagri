<?php
if (!isset($gCms)) exit;

if (! $this->CheckAccess())
	{
	return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
	}
	
	
if (isset($params['plugin']) && isset($params['plugin_action']))
{
	$plugins = $this->getPlugins();
	
	switch($params['plugin_action'])
	{
		case 'change_state':
			if (!isset($plugins[$params['plugin']]))
			{
				$plugins[$params['plugin']]['active'] = true;
			}
			elseif($plugins[$params['plugin']]['active'] == true)
			{
				$plugins[$params['plugin']]['active'] = false;
			}
			else
			{
				$plugins[$params['plugin']]['active'] = true;
			}			
			break;
	}
	
	$this->setPlugins($plugins);	
	
	//var_dump($plugins);
	
	$this->Redirect($id, 'defaultadmin', $returnid);
}
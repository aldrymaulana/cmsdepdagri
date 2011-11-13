<?php
if (!isset($gCms)) exit;

if (! $this->CheckAccess())
	{
	return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
	}
			foreach ($this->GetPlugins() as $plugin)
    		{
    			$this->RemovePreference($plugin);
    		}
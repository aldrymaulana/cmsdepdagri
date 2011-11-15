<?php
if (!isset($gCms)) exit;

	/*---------------------------------------------------------
	   Upgrade()
	   If your module version number does not match the version
	   number of the installed module, the CMS Admin will give
	   you a chance to upgrade the module. This is the function
	   that actually handles the upgrade.
	   Ideally, this function should handle upgrades incrementally,
	   so you could upgrade from version 0.0.1 to 10.5.7 with
	   a single call. For a great example of this, see the News
	   module in the standard CMS install.
	  ---------------------------------------------------------*/
		$current_version = $oldversion;
		switch($current_version)
		{
			case "0.0.1":
				$current_version = '0.0.2';
			case "0.0.2":
				$this->SetPreference('gallery_path','gallery');
        $this->SetPreference('gallery_url',str_replace($_SERVER['PHP_SELF'], '', $_SERVER['HTTP_REFERER']). DIRECTORY_SEPARATOR . 'gallery');
				  
		}
		
		// put mention into the admin log
		$this->Audit( 0, $this->Lang('friendlyname'), $this->Lang('upgraded',$this->GetVersion()));

?>
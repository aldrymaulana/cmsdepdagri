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
		
		$dict = NewDataDictionary($db);
		
		switch($current_version)
		{
		    case '0.0.1':
				$current_version = '0.0.9';
		    case '0.0.2':
				$current_version = '0.0.9';
		    case '0.0.3':
				$current_version = '0.0.9';
		    case '0.0.4':
				$current_version = '0.0.9';
		    case '0.0.5':
				$current_version = '0.0.9';
		    case '0.0.6':
				$current_version = '0.0.9';
		    case '0.0.7':
				$current_version = '0.0.9';
		    case '0.0.8':
				$current_version = '0.0.9';
				// table schema description
				$flds = "
					id	I AUTO KEY,
					name	C(255),
					position I,
					code XL,
					load_default I,
					in_header I,
					required_plugins C(255)
					";

				// create it. This should do error checking, but I'm a lazy sod.
				$sqlarray = $dict->CreateTableSQL(cms_db_prefix()."module_jquery_scripts",
						$flds, $taboptarray);
				$dict->ExecuteSQLArray($sqlarray);
				// 		    case '0.0.9':
				// $current_version = '0.0.9';
				
		
			//  case '1.0.5':
			// 	// PREPARE THE FUTURE
			// 	$sqlarray = $dict->AddColumnSQL(cms_db_prefix()."module_modulextender_relations_link", "type C(255)");
			// 	$dict->ExecuteSQLArray($sqlarray);
			// 	MX_RelationLink::upgrade('1.0.5');    	 
			// 	$current_version='1.0.6';
			// 	case '1.0.6':
			// // Fix bug in 1.0.6
			// 	// table schema description
			// 	$flds = "
			// 	id I KEY,
			// 	type C(255),
			// 	modulename C(255),
			// 	rel_code C(255),
			// 	rel_id I,
			// 	module_id C(255)
			// 	";
			// 
			// 	// create it.
			// 	$sqlarray = $dict->CreateTableSQL(cms_db_prefix()."module_modulextender_relations_link",
			// 			$flds, $taboptarray);
			// 	$dict->ExecuteSQLArray($sqlarray);
			// 	$current_version='1.5.6';
			// case '1.5.6':			
			// 	$this->CreatePermission('Manage ModuleXtender', 'Manage ModuleXtender');
			// 	$current_version='1.5.7';
	
		  
		}
		
		// put mention into the admin log
		$this->Audit( 0, $this->Lang('friendlyname'), $this->Lang('upgraded',$this->GetVersion()));

?>
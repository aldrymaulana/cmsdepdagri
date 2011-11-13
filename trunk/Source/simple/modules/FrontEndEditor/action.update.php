<?php
			global $gCms;
			$page_id = $gCms->variables['content_id'];
			$summary = $params['summary'];
			$date = trim($db->DBTimeStamp(time()), "'");	
						
			$db =& $this->GetDb();
			$query = "UPDATE ".cms_db_prefix()."content_props SET content='$summary' WHERE prop_name ='content_en' AND content_id ='$page_id'";
			$dbr = $db->Execute($query);
			
			
			$db2 =& $this->GetDb();
			$query2 = "UPDATE ".cms_db_prefix()."content SET modified_date ='$date' WHERE content_id ='$page_id'";
			$dbr2 = $db->Execute($query2);
					
			$this->smarty->assign('message', $this->Lang('changed'));
			$this->smarty->assign('summary', $summary);
			
			echo $this->ProcessTemplate('updated.tpl');
?>
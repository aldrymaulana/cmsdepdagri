<?php 
if (!isset($gCms)) exit;

			global $gCms;
			$pageid = $gCms->variables['content_id'];
			$pagealias = $gCms->variables['page_name'];
			/*
			echo "<br/>";
			echo $pagealias;
			echo "<br/>";
			echo $pageid;
			echo "<br/>";
			*/
			echo "Want the edit page form use this tag in your template {cms_module module='FrontEndEditor' action='add_text'}"
?>
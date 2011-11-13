<?php
require_once(dirname(dirname(dirname(__FILE__))) . DIRECTORY_SEPARATOR . 'include.php');
global $gCms;
$db  =& $gCms->GetDb();

if (isset($_REQUEST['id']))
{
//	$module = $gCms->modules['jQuery']['object'];
	$script = jQueryScript::retrieveByPk($_REQUEST['id']);
	echo $script->getCode();
}

// TODO: Load required plugins first ! 
// NOTE: This have to be done prior to this call, like in the headers when we build the call to this script! 
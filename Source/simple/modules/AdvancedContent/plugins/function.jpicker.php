<?php
#-------------------------------------------------------------------------------
#
# Smarty Plugin : {jpicker}
# Purpose       : renders javascript of jQuery plugin colorpicker
# Author        : Nic Bug (nicmare) - adapted by Georg Busch (NaN)
# Version       : 1.1
# License       : GPL
#
#-------------------------------------------------------------------------------

function smarty_cms_function_jpicker($params, &$smarty) 
{
	$config = cmsms()->GetConfig();
	$AdvancedContent =& cms_utils::get_module('AdvancedContent');
	
	if(!isset($params['input_id']))
	{
		return;
	}
	
	$input_id = $params['input_id'];
	
	$output = '
<link rel=stylesheet href="'.$config['root_url'].'/modules/AdvancedContent/plugins/jpicker/css/jpicker.css" type="text/css" />
<script type="text/javascript" src="'.$config['root_url'].'/modules/AdvancedContent/plugins/jpicker/js/jq.jpicker.js"></script>
<script type="text/javascript">';
	
	$output.= '
	jQuery(document).ready(function() {
		jQuery.fn.jPicker.defaults.images.clientPath="'.$config['root_url'].'/modules/AdvancedContent/plugins/jpicker/images/";
		jQuery("'.$input_id.'").jPicker();
	})
</script>';

	if(isset($params['assign']))
	{
		$smarty->assign($params['assign'],$output);
	}
	else
	{
		return $output;
	}
}

?>

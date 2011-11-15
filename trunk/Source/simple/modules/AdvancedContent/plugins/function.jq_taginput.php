<?php
#-------------------------------------------------------------------------------
#
# Smarty Plugin : {jq_taginput}
# Purpose       : renders javascript of jQuery plugin tagInput
# Author        : Georg Busch (NaN)
# Version       : 1.0
# License       : GPL
#
#-------------------------------------------------------------------------------

function smarty_cms_function_jq_taginput($params, &$smarty) 
{
	$config = cmsms()->GetConfig();
	$AdvancedContent =& cms_utils::get_module('AdvancedContent');
	
	if(!isset($params['input_id']))
	{
		return;
	}
	
	$input_id = $params['input_id'];
	
	$auto_filter = 'true';
	if(isset($params['auto_filter']) && $AdvancedContent->IsFalse($params['auto_filter']))
	{
		$auto_filter = 'false';
	}
	
	$auto_start = 'false';
	if(isset($params['auto_start']) && $AdvancedContent->IsTrue($params['auto_start']))
	{
		$auto_start = 'true';
	}
	
	$boldify = 'true';
	if(isset($params['boldify']) && $AdvancedContent->IsFalse($params['boldify']))
	{
		$boldify = 'false';
	}
	
	$tag_separator = ' ';
	if(isset($params['tag_separator']))
	{
		$tag_separator = $params['tag_separator'];
	}
	
	$sortby = 'frequency';
	if(isset($params['sortby']))
	{
		$sortby = $params['sortby'];
	}
	
	$suggested_tags = array();
	if(isset($params['suggested_tags']))
	{
		$suggested_tags = $params['suggested_tags'];
		if(!is_array($suggested_tags))
		{
			$suggested_tags = explode(',',$suggested_tags);
		}
	}
	
	$tags = array();
	if(isset($params['tags']))
	{
		if(!is_array($params['tags']))
		{
			$tags = array();
			foreach(explode(';',$params['tags']) as $k => $v)
			{
				$_t = explode(',', $v);
				$tags[$k]['tag'] = $_t[0];
				$tags[$k]['freq'] = $_t[1];
			}
		}
		else
		{
			$tags = $params['tags'];
		}
	}
	$output = '
<link rel=stylesheet href="'.$config['root_url'].'/modules/AdvancedContent/plugins/tagInput/jquery.tagInput.css" type="text/css" />
<script type="text/javascript" src="'.$config['root_url'].'/modules/AdvancedContent/plugins/tagInput/jquery.timers.js"></script>
<script type="text/javascript" src="'.$config['root_url'].'/modules/AdvancedContent/plugins/tagInput/jquery.tagInput.js"></script>
<script type="text/javascript">';
	if(count($tags)) 
	{
		$available_tags = array();
		foreach($tags as $tag)
		{ 
			$available_tags[] = '{tag:"'.$tag['tag'].'",freq:'.$tag['freq'].'}';
		}
		$output.= '	var tags=['.implode(',',$available_tags).'];';
	}
	
	$output.= '
	jQuery(document).ready(function() {
		jQuery("#'.$input_id.'").tagInput({';
	if (count($tags))
	{
		$output.= 'tags:tags,';
	}
	$output.= '
			sortBy:"'.$sortby.'",
			suggestedTags:["'.implode('","',$suggested_tags).'"],
			tagSeparator:"'.$tag_separator.'",
			autoFilter:'.$auto_filter.',
			autoStart:'.$auto_start.',
			boldify:'.$boldify.'
		}).css("padding-left","25px");
	});
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

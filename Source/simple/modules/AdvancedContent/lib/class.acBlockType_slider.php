<?php
class acBlockType_slider extends acContentBlockBase
{
	function __construct(&$content_obj, &$params = array())
	{
		$params['type'] = 'slider';
		parent::__construct($content_obj, $params);
		$slider_params = array();
		if(isset($params['from']))
		{
			$slider_params['from'] = intval($params['from']);
		}
		if(isset($params['to']))
		{
			$slider_params['to'] = intval($params['to']);
		}
		if(isset($params['step']))
		{
			$slider_params['step'] = intval($params['step']);
		}
		if(isset($params['round']))
		{
			$slider_params['round'] = intval($params['round']);
		}
		if(isset($params['heterogeneity']))
		{
			$slider_params['heterogeneity'] = $params['heterogeneity'];
		}
		if(isset($params['dimension']))
		{
			$slider_params['dimension'] = "'".$params['dimension']."'" ;
		}
		if(isset($params['limits']))
		{
			$slider_params['limits'] = "'".$params['limits']."'";
		}
		if(isset($params['scale']))
		{
			$slider_params['scale'] = $params['scale'];
		}
		if(isset($params['skin']))
		{
			$slider_params['skin'] = "'".$params['skin']."'";
		}
		if(isset($params['calculate']))
		{
			$slider_params['calculate'] = $params['calculate'];
		}
		if(isset($params['onstatechange']))
		{
			$slider_params['onstatechange'] = $params['onstatechange'];
		}
		if(isset($params['callback']))
		{
			$slider_params['callback'] = $params['callback'];
		}
		$this->SetBlockProperty('slider_params',$slider_params);
	}
	
	public function GetBlockInput()
	{
		return '<input id="'.$this->GetBlockProperty('id').'" type="hidden" name="' . $this->GetBlockProperty('id') . '" value="' . ($this->content_obj->GetPropertyValue($this->GetBlockProperty('id')) ? $this->content_obj->GetPropertyValue($this->GetBlockProperty('id')) : intval($this->content_obj->GetPropertyValue($this->GetBlockProperty('id')))) . '" />';
	}
	
	public function GetHeaderHTML()
	{
		$config = cmsms()->GetConfig();
		$ret = '
<script language="javascript" type="text/javascript" src="'.$config['root_url'].'/modules/AdvancedContent/js/jquery.jslider.min.js"></script>
<script language="javascript" type="text/javascript">
/* <![CDATA[ */
jQuery(document).ready(function() {';

		foreach($this->content_obj->GetBlocksByType('slider') as $block_id)
		{
			$ret .= 'jQuery("#'.$block_id.'").j_slider(';
			if(count($this->GetBlockProperty('slider_params')))
			{
				$ret .= '{';
				$slider_params = array();
				foreach($this->GetBlockProperty('slider_params') as $paramName => $paramValue)
				{
					$slider_params[] = $paramName . ': ' . $paramValue;
				}
				$ret .= implode(',',$slider_params) . '}';
			}
			$ret .= ');';
		}

		return $ret . '
});
/* ]]> */
</script>';
	}
}
?>

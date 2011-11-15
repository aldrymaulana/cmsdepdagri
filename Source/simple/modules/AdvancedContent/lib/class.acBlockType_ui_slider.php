<?php
class acBlockType_ui_slider extends acContentBlockBase
{
	function __construct(&$content_obj, &$params = array())
	{
		$params['type'] = 'ui_slider';
		parent::__construct($content_obj, $params);
		$slider_params = array();
		
		if(isset($params['min']))
		{
			$slider_params['min'] = intval($params['min']);
		}
		if(isset($params['max']))
		{
			$slider_params['max'] = intval($params['max']);
		}
		if(isset($params['orientation']))
		{
			$slider_params['orientation'] = $params['orientation'];
		}
		if(isset($params['range']))
		{
			$slider_params['range'] = $this->content_obj->IsTrue($params['range']) ? true : $params['range'];
		}
		if(isset($params['step']))
		{
			$slider_params['step'] = intval($params['step']);
		}
		
		$this->SetBlockProperty('slider_params',$slider_params);
		$this->SetBlockProperty('unit',isset($params['unit']) ? $params['unit'] : '');
		
	}
	
	public function GetBlockInput()
	{
		$slider_params = $this->GetBlockProperty('slider_params');
		$diff = (isset($slider_params['max']) ? $slider_params['max'] : 10) - (isset($slider_params['min']) ? $slider_params['min'] : 0);
		$total_steps = ceil($diff / (isset($slider_params['step']) && $slider_params['step'] > 0 ? $slider_params['step'] : 1));
		$width = $total_steps >= 100 ? '100%' : $total_steps.'%';
		$ret = '
<div id="'. $this->GetBlockProperty('id') .'_display">';

		if(isset($slider_params['range']))
		{
			$_values = explode(',',$this->content_obj->GetPropertyValue($this->GetBlockProperty('id')));
			if($slider_params['range'] === true || $slider_params['range'] === false)
			{
				if(count($_values) < 2)
				{
					$value_min = isset($slider_params['min']) ? $slider_params['min'] : 0;
					$value_max = intval($_values[0]);
				}
				else
				{
					$value_min = intval($_values[0]);
					$value_max = intval($_values[1]);
				}
			}
			else if($slider_params['range'] == 'min')
			{
				$value_min = isset($slider_params['min']) ? $slider_params['min'] : 0;
				$value_max = count($_values) < 2 ? $_values[0] : $_values[1];
			}
			else if($slider_params['range'] == 'max')
			{
				$value_min = count($_values) < 2 ? $_values[0] : $_values[1];
				$value_max = isset($slider_params['max']) ? $slider_params['max'] : 10;
			}
			if(isset($slider_params['max']) && $slider_params['max'] < $value_max)
			{
				$value_max = $slider_params['max'];
			}
			if(isset($slider_params['min']) && $slider_params['min'] > $value_min)
			{
				$value_min = $slider_params['min'];
			}
			$ret .= $value_min . ' - ' . $value_max;
		}
		else
		{
			$ret .= intval($this->content_obj->GetPropertyValue($this->GetBlockProperty('id')));
		}
		$ret .= ' ' . $this->GetBlockProperty('unit') . 
'</div><br />
<div id="'.$this->GetBlockProperty('id').'_slider" style="margin:0.6em;'.(!isset($slider_params['orientation']) || $slider_params['orientation'] == 'horizontal' ? 'width:'.$width : '' ). '"></div>
<input id="'.$this->GetBlockProperty('id').'" type="hidden" name="' . $this->GetBlockProperty('id') . '" value="' . ($this->content_obj->GetPropertyValue($this->GetBlockProperty('id')) ? $this->content_obj->GetPropertyValue($this->GetBlockProperty('id')) : intval($this->content_obj->GetPropertyValue($this->GetBlockProperty('id')))) . '" />';
		
		return $ret;

	}
	
	public function GetHeaderHTML()
	{
		$ret = '
<script language="javascript" type="text/javascript">
/* <![CDATA[ */
jQuery(document).ready(function() {';

		foreach($this->content_obj->GetBlocksByType('ui_slider') as $block_id)
		{
			$slider_params = $this->content_obj->GetContentBlock($block_id)->GetBlockProperty('slider_params');
			$ret .= '
	jQuery("#'.$block_id.'_slider").slider({
		slide: function( event, ui ) {';
		
			if(isset($slider_params['range']))
			{
				$ret .= '
			jQuery("#'. $block_id .'").val( ui.values );
			jQuery("#'. $block_id .'_display").html( ui.values[0] + \' - \' + ui.values[1] + " '. $this->content_obj->GetContentBlock($block_id)->GetBlockProperty('unit') .'");';
			
			}
			else
			{
				$ret .= '
			jQuery("#'. $block_id .'").val( ui.value );
			jQuery("#'. $block_id .'_display").html( ui.value + " '. $this->content_obj->GetContentBlock($block_id)->GetBlockProperty('unit') .'");';
			
			}
			
			$ret .= '
		},';
			
			if(isset($slider_params['range']))
			{
				$_values = explode(',',$this->content_obj->GetPropertyValue($block_id));
				if($slider_params['range'] === true || $slider_params['range'] === false)
				{
					if(count($_values) < 2)
					{
						$value_min = isset($slider_params['min']) ? $slider_params['min'] : 0;
						$value_max = intval($_values[0]);
					}
					else
					{
						$value_min = intval($_values[0]);
						$value_max = intval($_values[1]);
					}
				}
				else if($slider_params['range'] == 'min')
				{
					$value_min = isset($slider_params['min']) ? $slider_params['min'] : 0;
					$value_max = count($_values) < 2 ? $_values[0] : $_values[1];
				}
				else if($slider_params['range'] == 'max')
				{
					$value_min = count($_values) < 2 ? $_values[0] : $_values[1];
					$value_max = isset($slider_params['max']) ? $slider_params['max'] : 10;
				}
				if(isset($slider_params['max']) && $slider_params['max'] < $value_max)
				{
					$value_max = $slider_params['max'];
				}
				if(isset($slider_params['min']) && $slider_params['min'] > $value_min)
				{
					$value_min = $slider_params['min'];
				}
				$ret .= 'values: [' . $value_min . ',' . $value_max . ']';
			}
			else
			{
				$ret .= 'value: ' . intval($this->content_obj->GetPropertyValue($block_id));
			}
			if(count($this->content_obj->GetContentBlock($block_id)->GetBlockProperty('slider_params')))
			{
				$ret .= ',';
				$slider_settings = array();
				foreach($this->content_obj->GetContentBlock($block_id)->GetBlockProperty('slider_params') as $paramName => $paramValue)
				{
					if(is_bool($paramValue))
					{
						$slider_settings[] = $paramName . ': ' . ($paramValue ? 'true' : 'false');
					}
					else
					{
						$slider_settings[] = $paramName . ': ' . (is_numeric($paramValue) ? $paramValue : '"' . $paramValue . '"');
					}
				}
				$ret .= implode(',',$slider_settings);
			}
			$ret .= '
	});';
			
		}
		
		return $ret . '
});
/* ]]> */
</script>';

	}
}
?>

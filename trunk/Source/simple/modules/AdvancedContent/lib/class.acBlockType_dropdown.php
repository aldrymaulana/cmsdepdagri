<?php
class acBlockType_dropdown extends acContentBlockBase
{
	function __construct(&$content_obj, &$params = array())
	{
		$params['type'] = 'dropdown';
		parent::__construct($content_obj, $params);
		
		$this->SetBlockProperty('delimiter', isset($params['delimiter']) ? $params['delimiter'] : '|');
		$this->SetBlockProperty('items', isset($params['items']) ? $params['items'] : '');
		$this->SetBlockProperty('values', isset($params['values']) ? $params['values'] : '');
	}
	
	public function GetBlockInput()
	{
		$AdvancedContent =& cms_utils::get_module('AdvancedContent');
		$items = array();
		if($this->GetBlockProperty('items') != '')
		{
			foreach(explode($this->GetBlockProperty('delimiter'), $this->GetBlockProperty('items')) as $key => $val)
			{
				$items[$key]['label'] = trim($val);
				if($this->GetBlockProperty('translate_labels'))
				{
					$items[$key]['label'] = $AdvancedContent->lang($items[$key]['label']);
				}
				
				$items[$key]['value']    = $items[$key]['label'];
				$items[$key]['selected'] = (trim($this->content_obj->GetPropertyValue($this->GetBlockProperty('id'))) === $items[$key]['value']);
			}
		}
		if($this->GetBlockProperty('values') != '')
		{
			foreach(explode($this->GetBlockProperty('delimiter'), $this->GetBlockProperty('values')) as $key => $val)
			{
				$items[$key]['value'] = trim($val);
				if($this->GetBlockProperty('translate_values'))
				{
					$items[$key]['value'] = $AdvancedContent->lang($items[$key]['value']);
				}
				
				$items[$key]['selected'] = (trim($this->content_obj->GetPropertyValue($this->GetBlockProperty('id'))) === $items[$key]['value']);
				
				if(!isset($items[$key]['label']))
				{
					$items[$key]['label'] = $items[$key]['value'];
				}
			}
		}
		
		$input = '<select name="' . $this->GetBlockProperty('id') . '" ' . ($this->GetBlockProperty('style') != ''?'style="' . $this->GetBlockProperty('style') . ' "':'') . ' >';
		foreach($items as $item)
		{
			$input .= '<option value="' . $item['value'] . '"';
			if($item['selected'])
			{
				$input .= ' selected="selected"';
			}
			$input .= '>' . $item['label'] . '</option>';
		}
		$input .= '</select>';
		return $input;
	}
}
?>

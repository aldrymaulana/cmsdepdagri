<?php
class acBlockType_select_multiple extends acContentBlockBase
{
	function __construct(&$content_obj, &$params = array())
	{
		$params['type'] = 'select_multiple';
		parent::__construct($content_obj, $params);
		$AdvancedContent =& cms_utils::get_module('AdvancedContent');
		#$AdvancedContent->SetAllowedParam(CLEAN_REGEXP.'/.*_AdvancedContentSortableItem_.*/',CLEAN_STRING);
		
		$this->SetBlockProperty('sortable', isset($params['sortable_items']) && $this->content_obj->IsTrue($params['sortable_items'])); # deprecated
		$this->SetBlockProperty('sortable', isset($params['sortable']) && $this->content_obj->IsTrue($params['sortable']));
		$this->SetBlockProperty('delimiter', isset($params['delimiter']) ? $params['delimiter'] : '|');
		$this->SetBlockProperty('items', isset($params['items']) ? $params['items'] : '');
		$this->SetBlockProperty('values', isset($params['values']) ? $params['values'] : '');
	}
	
	public function GetBlockInput()
	{
		$selItems = explode($this->GetBlockProperty('delimiter'), $this->content_obj->GetPropertyValue($this->GetBlockProperty('id')));
		$items    = $this->_get_items_array($selItems);
		
		if(!$this->GetBlockProperty('sortable'))
		{
			$input = '<select name="' . $this->GetBlockProperty('id') . '[]" ' . 
				($this->GetBlockProperty('style') != '' ? 'style="' . $this->GetBlockProperty('style') . ' "' : '') . 
				'multiple="multiple" size="' . ($this->GetBlockProperty('size') ? $this->GetBlockProperty('size') : count($items)) . '">';
				
			foreach($items as $oneItem)
			{
				$input .= '<option value="' . $oneItem['value'] . '"';
				if($oneItem['selected'])
				{
					$input .= ' selected="selected"';
				}
				$input .= '>' . $oneItem['label'] . '</option>';
			}
			$input .= '</select>';
		}
		else
		{
			$items = $this->_sort_items($items, $selItems);
			$input = '<div class="sortable_wrapper">';
			foreach($items as $item)
			{
				$input .=
				'<div class="sortable">
					<img class="sortable_handler" src="../modules/AdvancedContent/images/sort.png" />
					<input class="pagecheckbox"' . ($this->GetBlockProperty('style') != ''?' style="' . $this->GetBlockProperty('style') . ' "':'') . ' type="checkbox" value="'.$item['value'].'" name="' . $this->GetBlockProperty('id') . '[]"' . ($item['selected']? ' checked="checked"':'') . ' />
					'.$item['label'].'
				</div>';
			}
			$input .= '</div>';
		}
		return $input;
	}
	
	public function GetHeaderHTML()
	{
		return '
<script language="javascript" type="text/javascript">
/* <![CDATA[ */
jQuery(document).ready(function() {
	jQuery(".sortable_wrapper").sortable({
		items: ".sortable",
		handle: ".sortable_handler",
		axis: "y"
	});
	jQuery(".sortable_handler").disableSelection();
});
/* ]]> */
</script>';
	}
	
	public function FillBlockParams(&$params, $editing = false)
	{
		$blockId = $this->GetBlockProperty('id');
		if(!isset($params[$blockId]) || !is_array($params[$blockId]))
		{
			return;
		}
		return implode($this->GetBlockProperty('delimiter'), $params[$blockId]);
	}
	
	/**
	 * Not part of the api
	 */
	private function _get_items_array($selItems = array())
	{
		$AdvancedContent =& cms_utils::get_module('AdvancedContent');
		$items = array();
		if($this->GetBlockProperty('items') != '')
		{
			foreach(explode($this->GetBlockProperty('delimiter'), $this->GetBlockProperty('items')) as $key => $val)
			{
				$items[$key]['id']    = munge_string_to_url(trim($val));
				$items[$key]['label'] = trim($val);
				if($this->GetBlockProperty('translate_labels'))
				{
					$items[$key]['label'] = $AdvancedContent->lang($items[$key]['label']);
				}
				
				$items[$key]['value']    = $items[$key]['label'];
				$items[$key]['selected'] = in_array($items[$key]['label'],$selItems);
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
				
				$items[$key]['selected'] = in_array($items[$key]['value'],$selItems);
				if(!isset($items[$key]['label']))
				{
					$items[$key]['label'] = $items[$key]['value'];
				}
			}
		}
		return $items;
	}
	
	/**
	 * Not part of the api
	 */
	private function _sort_items($items = array(), $selItems = array())
	{
		$_items = array();
		foreach($selItems as $selKey => $selItem)
		{
			reset($items);
			foreach($items as $itemKey => $item)
			{
				if($item['value'] === $selItem)
				{
					$_items[] = $item;
					unset($items[$itemKey]);
					unset($selItems[$selKey]);
					break;
				}
			}
		}
		$items = array_merge($_items,$items);
		return $items;
	}
}
?>

<?php
class acBlockType_multi_input extends acContentBlockBase
{
	function __construct(&$content_obj, &$params = array())
	{
		$params['type'] = 'multi_input';
		parent::__construct($content_obj, $params);
		
		$AdvancedContent =& cms_utils::get_module('AdvancedContent');
		#$AdvancedContent->SetAllowedParam(CLEAN_REGEXP.'/multiInput-.*/',CLEAN_NONE);
		
		$this->SetBlockProperty('inputs', isset($params['inputs']) ? $params['inputs'] : '');
		$this->SetBlockProperty('value_delimiter', isset($params['value_delimiter']) ? $params['value_delimiter'] : '<!-- multi_input_value_delimiter -->');
		$this->SetBlockProperty('input_delimiter', isset($params['input_delimiter']) ? $params['input_delimiter'] : '<!-- multi_input_delimiter -->');
	}
	
	public function GetBlockInput()
	{
		$AdvancedContent =& cms_utils::get_module('AdvancedContent');
		$multi_input_ids = $this->content_obj->CleanArray(explode(',', $this->GetBlockProperty('inputs')));
		$input_values    = array();
		#$multi_input     = '<input type="hidden" value="" name="' . $this->GetBlockProperty('id') . '" />';
		$multi_input     = '';
		
		foreach(explode($this->GetBlockProperty('input_delimiter'), $this->content_obj->GetPropertyValue($this->GetBlockProperty('id'))) as $input_data)
		{
			$input_values[] = explode($this->GetBlockProperty('value_delimiter'),$input_data);
		}
		$multiInput_props = $this->content_obj->GetBlockTypeProperties('multi_input');
		foreach($multi_input_ids as $k1=>$multi_input_id)
		{
			if(isset($multiInput_props[$multi_input_id]))
			{
				if(!isset($multiInput_props[$multi_input_id]['template']))
				{
					$multiInput_props[$multi_input_id]['template'] = $AdvancedContent->GetTemplate($multiInput_props[$multi_input_id]['tpl_name']);
					$this->content_obj->SetBlockTypeProperty('multi_input', $multi_input_id, $multiInput_props[$multi_input_id]);
				}
				$inputs = array();
				foreach ($multiInput_props[$multi_input_id]['elements'] as $k2=>$inputBlock)
				{
					if($inputBlock->GetBlockProperty('smarty'))
					{
						foreach($inputBlock->GetBlockProperties() as $propName=>$propValue)
						{
							$inputBlock->SetBlockProperty($propName, $this->content_obj->DoSmarty($propValue));
						}
					}
					$inputBlock->SetBlockProperty('id', 'multiInput-' . $this->GetBlockProperty('id') . '-' . $multi_input_id . '-' . $k1 . '-' . $k2);
					
					# ToDo: need to find a beter way than this temporary stuff
					$this->content_obj->SetTempProperty($inputBlock->GetBlockProperty('id'), (isset($input_values[$k1][$k2]) ? $input_values[$k1][$k2] : ''));
					#---
					
					$inputs[$inputBlock->GetBlockProperty('id')] = $inputBlock;
				}
				$AdvancedContent->smarty->assign_by_ref('inputs', $inputs);
				$multi_input .= $AdvancedContent->ProcessTemplateFromData($multiInput_props[$multi_input_id]['template']);
				
				# ToDo: need to find a beter way than this temporary stuff
				foreach ($multiInput_props[$multi_input_id]['elements'] as $k2=>$inputBlock)
				{
					$this->content_obj->RemoveTempProperty($inputBlock->GetBlockProperty('id'));
				}
				#---
			}
		}
		return $multi_input;
	}
	
	public function GetBlockTypeProperties($access = 'backend')
	{
		if($access == 'backend')
		{
			$AdvancedContent  =& cms_utils::get_module('AdvancedContent');
			$multi_input_ids  = $this->content_obj->CleanArray(explode(',',$this->GetBlockProperty('inputs')));
			$multiInput_props = $this->content_obj->GetBlockTypeProperties('multi_input');
			
			foreach($multi_input_ids as $k1=>$multi_input_id)
			{
				if(!isset($multiInput_props[$multi_input_id]))
				{
					$multiInput_props = array_merge($multiInput_props, $AdvancedContent->GetMultiInputFull($multi_input_ids));
					if(!isset($multiInput_props[$multi_input_id]))
					{
						continue;
					}
					$multiInput_props[$multi_input_id]['template'] = $AdvancedContent->GetTemplate($multiInput_props[$multi_input_id]['tpl_name']);
					$matches = array();
					$result  = preg_match_all(AC_BLOCK_PATTERN, $multiInput_props[$multi_input_id]['input_fields'], $matches);
					
					if ($result && count($matches[1]) > 0)
					{
						foreach ($matches[1] as $k2=>$wholetag)
						{
							if(!$inputBlock = $this->content_obj->CreateContentBlock($wholetag))
							{
								continue;
							}
							if($inputBlock->GetBlockProperty('type') == 'multi_input')
							{
								continue; # ToDo: display message?
							}
							$multiInput_props[$multi_input_id]['elements'][$k2] = $inputBlock;
						}
					}
				}
			}
			return $multiInput_props;
		}
	}
	
	public function FillBlockParams(&$params, $editing = false)
	{
		$blockId          = $this->GetBlockProperty('id');
		$multi_inputs     = array();
		$value            = '';
		$multiInput_props = $this->content_obj->GetBlockTypeProperties('multi_input');
		foreach($this->content_obj->CleanArray(explode(',',$this->GetBlockProperty('inputs'))) as $k1=>$multi_input_id)
		{
			$multi_input_values = array();
			foreach($multiInput_props[$multi_input_id]['elements'] as $k2=>$inputBlock)
			{
				if(isset($params['multiInput-' . $blockId . '-' . $multi_input_id . '-' . $k1 . '-' . $k2]))
				{
					$inputBlock->SetBlockProperty('id', 'multiInput-' . $blockId . '-' . $multi_input_id . '-' . $k1 . '-' . $k2);
					$multi_input_values[] = $inputBlock->FillBlockParams($params, $editing);
				}
			}
			$multi_inputs[] = implode($this->GetBlockProperty('value_delimiter'),$multi_input_values);
		}
		if(!$this->content_obj->IsVarEmpty($multi_inputs))
		{
			$value = implode($this->GetBlockProperty('input_delimiter'), $multi_inputs);
		}
		return $value;
	}
}
?>

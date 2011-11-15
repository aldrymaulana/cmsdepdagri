<?php
class acBlockType_module extends acContentBlockBase
{
	function __construct(&$content_obj, &$params = array())
	{
		$params['type'] = 'module';
		parent::__construct($content_obj, $params);
		$AdvancedContent =& cms_utils::get_module('AdvancedContent');
		$this->SetBlockProperty('module', isset($params['module']) ? $params['module'] : '');
		#$this->SetBlockProperty('params',array_diff($params, $this->GetBlockProperties(), $AdvancedContent->GetAllowedParams()));
		$this->SetBlockProperty('params', $params, $this->GetBlockProperties());
	}
	
	public function GetBlockInput()
	{
		$AdvancedContent =& cms_utils::get_module('AdvancedContent');
		if($this->GetBlockProperty('module') == '')
		{
			return $AdvancedContent->lang('error_insufficient_blockparams','module',$this->GetBlockProperty('name'));
		}
		if( !$module =& $AdvancedContent->GetModuleInstance($this->GetBlockProperty('module')))
		{
			return $AdvancedContent->lang('error_loading_module',$this->GetBlockProperty('module'),$this->GetBlockProperty('name'));
		}
		if( !$module->HasCapability('contentblocks') )
		{
			return $AdvancedContent->lang('error_contentblock_support',$this->GetBlockProperty('module'),$this->GetBlockProperty('name'));
		}
		return $module->GetContentBlockInput($this->GetBlockProperty('id'),$this->content_obj->GetPropertyValue($this->GetBlockProperty('id')),$this->GetBlockProperty('params'),$this->GetBlockProperty('adding'));
	}
}
?>

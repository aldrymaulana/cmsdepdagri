<?php
class acBlockType_image extends acContentBlockBase
{
	function __construct(&$content_obj, &$params = array())
	{
		$params['type'] = 'image';
		parent::__construct($content_obj, $params);
		
		$config = cmsms()->GetConfig();
		
		$this->SetBlockProperty('prefix', isset($params['prefix']) ? $params['prefix'] : 'thumb_');
		$this->SetBlockProperty('exclude', isset($params['exclude']) && $this->content_obj->IsFalse($params['exclude']));
		$this->SetBlockProperty('dir', cms_join_path($config['uploads_path'], isset($params['dir']) ? $params['dir'] : get_site_preference('contentimage_path')));
		$this->SetBlockProperty('inputname', isset($params['inputname']) ? $params['inputname'] : $this->GetBlockProperty('id'));
	}
	
	public function GetBlockInput()
	{
		$dropdown = create_file_dropdown($this->GetBlockProperty('inputname'),$this->GetBlockProperty('dir'),$this->content_obj->GetPropertyValue($this->GetBlockProperty('id')),'jpg,jpeg,png,gif','',$this->GetBlockProperty('allow_none'),'',$this->GetBlockProperty('prefix'),$this->GetBlockProperty('exclude'));
		if( $dropdown === false )
		{
			$dropdown = lang('error_retrieving_file_list');
		}
		return $dropdown;
	}
}
?>

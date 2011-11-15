<?php
class acBlockType_checkbox extends acContentBlockBase
{
	function __construct(&$content_obj, &$params = array())
	{
		$params['type'] = 'checkbox';
		parent::__construct($content_obj, $params);
		$this->SetBlockProperty('default',intval($this->GetBlockProperty('default')));
	}
	
	public function GetBlockInput()
	{
		return '<input type="hidden" name="'. $this->GetBlockProperty('id') .'" value="0" />
			<input id="'. $this->GetBlockProperty('id') .'" class="pagecheckbox"'. ($this->GetBlockProperty('style') != ''?' style="'. $this->GetBlockProperty('style') .' "':'') . ' type="checkbox" value="1" name="'. $this->GetBlockProperty('id') .'"'. ($this->content_obj->GetPropertyValue($this->GetBlockProperty('id')) == 1 ? ' checked="checked"':'') .' />';
	}
}
?>

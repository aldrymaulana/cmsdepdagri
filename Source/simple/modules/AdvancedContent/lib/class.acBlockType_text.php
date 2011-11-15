<?php
class acBlockType_text extends acContentBlockBase
{
	function __construct(&$content_obj, &$params = array())
	{
		$size        = '';
		$usewysiwyg  = true;
		$oneline     = false;
		$maxlength   = '';
		$rows        = '';
		$cols        = '';
		$auto_resize = true;
		
		$params['type'] = 'text';
		parent::__construct($content_obj, $params);
		if(isset($params['size']))
		{
			$size = intval($params['size']);
		}
		if(isset($params['maxlength']))
		{
			$maxlength = $params['maxlength'];
		}
		
		if($this->content_obj->GetPropertyValue('disable_wysiwyg')
			|| (isset($params['wysiwyg']) && $this->content_obj->IsFalse($params['wysiwyg'])))
		{
			$usewysiwyg = false;
		}
		
		if(isset($params['rows']))
		{
			$rows = $params['rows'];
		}
		
		if(isset($params['cols']))
		{
			$cols = $params['cols'];
		}
		
		if(isset($params['auto_resize']) && $this->content_obj->IsFalse('auto_resize'))
		{
			$auto_resize = false;
		}
		
		if(isset($params['oneline']) && $this->content_obj->IsTrue($params['oneline']))
		{
			$oneline = true;
		}
		
		$this->SetBlockProperty('size', $size);
		$this->SetBlockProperty('usewysiwyg', $usewysiwyg );
		$this->SetBlockProperty('oneline', $oneline );
		$this->SetBlockProperty('maxlength', $maxlength );
		$this->SetBlockProperty('rows', $rows );
		$this->SetBlockProperty('cols', $cols );
		$this->SetBlockProperty('auto_resize', $auto_resize);
	}
	
	public function GetBlockInput()
	{
		if (!$this->GetBlockProperty('oneline'))
		{
			return create_textarea($this->GetBlockProperty('usewysiwyg'), $this->content_obj->GetPropertyValue($this->GetBlockProperty('id')), $this->GetBlockProperty('id'), ($this->GetBlockProperty('auto_resize') ? 'AdvancedContent_textarea' : ''), $this->GetBlockProperty('id'), '', $this->content_obj->GetStylesheet(), $this->GetBlockProperty('cols') ? $this->GetBlockProperty('cols') : 80, $this->GetBlockProperty('rows') ? $this->GetBlockProperty('rows') : 15, '', '', ($this->GetBlockProperty('cols') || $this->GetBlockProperty('rows') ? ('style="'.($this->GetBlockProperty('cols') ? 'width:auto;' : '').($this->GetBlockProperty('rows') ? 'height:auto;' : '').'"') : ''));
		}
		else
		{
			return '<input id="'.$this->GetBlockProperty('id').'" type="text"' . ($this->GetBlockProperty('style') != ''?'style="' . $this->GetBlockProperty('style') . ' "':'') . ($this->GetBlockProperty('maxlength') != ''?' maxlength="' . $this->GetBlockProperty('maxlength') . ' "':'') . ($this->GetBlockProperty('size') != ''?' size="' . $this->GetBlockProperty('size') . ' "':'') . ' name="' . $this->GetBlockProperty('id') . '" value="' . htmlspecialchars($this->content_obj->GetPropertyValue($this->GetBlockProperty('id'))) . '" />';
		}
	}
	
	public function GetHeaderHTML()
	{
		return '
<script language="javascript" type="text/javascript">
/* <![CDATA[ */
jQuery(document).ready(function() {
	jQuery("textarea.AdvancedContent_textarea").autoResize({
		animate:false,
		extraSpace: 0,
		limit:jQuery(window).height()
	}).keydown();
});
/* ]]> */
</script>';
	}
	
}
?>

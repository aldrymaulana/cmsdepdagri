<?php
class acBlockType_colorpicker extends acContentBlockBase
{
	function __construct(&$content_obj, &$params = array())
	{
		$params['type'] = 'colorpicker';
		parent::__construct($content_obj, $params);
	}
	
	public function GetBlockInput()
	{
		return '# <input id="'. $this->GetBlockProperty('id') .'" type="text"'. ($this->GetBlockProperty('style') != ''?'style="'. $this->GetBlockProperty('style') .' "' : '') .' maxlength="6" size="7" name="'. $this->GetBlockProperty('id') .'" value="'. htmlspecialchars($this->content_obj->GetPropertyValue($this->GetBlockProperty('id'))) .'" />';
	}
	
	public function GetHeaderHTML()
	{
		$config = cmsms()->GetConfig();
		$ret = '
<link rel=stylesheet href="'.$config['root_url'].'/modules/AdvancedContent/css/jpicker.css" type="text/css" />
<script language="javascript" type="text/javascript" src="'.$config['root_url'].'/modules/AdvancedContent/js/jquery.jpicker.min.js"></script>
<script language="javascript" type="text/javascript">
/* <![CDATA[ */
jQuery(document).ready(function() {
	jQuery.fn.jPicker.defaults.images.clientPath="'.$config['root_url'].'/modules/AdvancedContent/images/jpicker/";';
		foreach($this->content_obj->GetBlocksByType('colorpicker') as $block_id)
		{
			$ret .= '		jQuery("#'. $block_id .'").jPicker();';
		}
		return $ret . '
});
/* ]]> */
</script>';
	}
}
?>

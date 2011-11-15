<?php
/**
 * Class definition and methods for AdvancedContent contentblock types.<br />
 * All block types needs to inherit and extend this class!
 *
 * @package AdvancedContent
 * @category CMSModuleContentType
 * @license GPL
 * @author Georg Busch (NaN)
 * @copyright 2010-2011 Georg Busch (NaN)
 * @since 0.9
 */
class acContentBlockBase
{
	/**
	 * @ignore
	 */
	private $_block_properties = array('active' => true); // we shouldn't be here if the the block is not active
	
	/**
	 * @access protected
	 * @var object - the content object instance that creates the contentblock
	 */
	protected $content_obj;
	
	/**
	 * Constructor.<br />
     * Required for all subclasses.<br />
     * Should be called from each subclass as the very first.
     * @param object &$content_obj - the content object instance that creates the contentblock
     * @param array $params - the parameters of that contentblock
     */
	function __construct(&$content_obj, &$params = array())
	{
		$this->content_obj = $content_obj;
		$AdvancedContent   =& cms_utils::get_module('AdvancedContent');
		
		$this->_block_properties['smarty']           = isset($params['smarty']) ? $params['smarty'] : false;
		$this->_block_properties['editor_groups']    = isset($params['editor_groups']) ? $params['editor_groups'] : '';
		$this->_block_properties['editor_users']     = isset($params['editor_users']) ? $params['editor_users'] : '';
		$this->_block_properties['type']             = isset($params['block_type']) ? $params['block_type'] : '';
		
		$this->_block_properties['name']             = isset($params['block']) ? $params['block'] : 'content_en';
		$this->_block_properties['id']               = preg_replace('/-+/','_', munge_string_to_url($this->_block_properties['name']));
		$this->_block_properties['label']            = isset($params['label']) ? $params['label'] : ucwords($this->_block_properties['name']);
		$this->_block_properties['translate_labels'] = (isset($params['translate_labels']) && $this->content_obj->IsTrue($params['translate_labels']));
		$this->_block_properties['translate_values'] = (isset($params['translate_values']) && $this->content_obj->IsTrue($params['translate_values']));
		$this->_block_properties['required']         = (isset($params['required']) && $this->content_obj->IsTrue($params['required']));
		$this->_block_properties['default']          = isset($params['default']) ? $params['default'] : '';
		$this->_block_properties['style']            = isset($params['style']) ? $params['style'] : ''; # deprecated
		$this->_block_properties['page_tab']         = isset($params['page_tab']) ? $params['page_tab'] : 'main';
		$this->_block_properties['block_tab']        = isset($params['block_tab']) ? $params['block_tab'] : '';
		$this->_block_properties['block_group']      = isset($params['block_group']) ? $params['block_group'] : '';
		$this->_block_properties['allow_none']       = !(isset($params['allow_none']) && $this->content_obj->IsFalse($params['allow_none']));
		$this->_block_properties['description']      = isset($params['description']) ? $params['description'] : '';
		
		$this->_block_properties['no_collapse'] = (isset($params['no_collapse']) && $this->content_obj->IsTrue($params['no_collapse']));
		$this->_block_properties['collapsible'] = !$this->_block_properties['no_collapse'];
		if(!$this->_block_properties['collapsible'])
		{
			$this->_block_properties['collapse'] = false;
		}
		else
		{
			$this->_block_properties['collapse'] = isset($params['collapse']) ? !$this->content_obj->IsFalse($params['collapse']) : $AdvancedContent->GetPreference('collapse_block_default', true);
		}
		
		$this->_block_properties['feu_access'] = isset($params['feu_access']) ? $params['feu_access'] : ''; 
		$this->_block_properties['feu_action'] = (isset($params['feu_action']) && $this->content_obj->IsTrue($params['feu_action']));
		$this->_block_properties['feu_hide']   = (isset($params['feu_hide']) && $this->content_obj->IsTrue($params['feu_hide']));
		
		#$this->_block_properties['inherit'] = (isset($params['inherit']) && $this->content_obj->IsTrue($params['inherit']));
	}
	
	/**
	 * Sets the value of a property. If not exists it will be created.
	 * @param string $name - the name of the property
	 * @param string $value - the value of the property
	 */
	public final function SetBlockProperty($name, $value = '')
	{
		$this->_block_properties[strtolower($name)] = $value;
	}
	
	/**
	 * Returns the value of a property.
	 * @param string $name - the name of the property
	 * @param string $default - the default value of the property if not exists
	 * @return mixed - usually this will be a string
	 */
	public final function GetBlockProperty($name, $default = '')
	{
		$name = strtolower($name);
		if(isset($this->_block_properties[$name]))
		{
			return $this->_block_properties[$name];
		}
		return $default;
	}
	
	/**
	 * Returns all valid properties of that block.
	 * @return array - array(propname => propvalue)
	 */
	public final function GetBlockProperties()
	{
		return $this->_block_properties;
	}
	
	/**
	 * Defines additional properties of the blocktype that needs to be stored "outside" the block.
	 * @return array - array(propname => propvalue)
	 */
	public function GetBlockTypeProperties($access = 'backend')
	{
		return array();
	}
	
	/**
	 * Gets the html output of the block in backend.<br />
	 * This method is required and needs to be overwritten.
	 * @return string
	 */
	public function GetBlockInput()
	{
		$AdvancedContent =& cms_utils::get_module('AdvancedContent');
		return $AdvancedContent->lang('invalid_block', $this->GetBlockProperty('name'));
	}
	
	/**
	 * Gets the html that needs to be inserted in the head section for this blocktype when editing a page.<br />
	 * Can be useful to add css or js.
	 * @return string
	 */
	public function GetHeaderHTML()
	{
		return;
	}
	
	/**
	 * Displays the help text for this blocktype.<br />
	 * Helptext will be displayed in modulehelp.
	 * @return string
	 */
	public function GetHelp()
	{
		return;
	}
	
	/**
	 * Displays the changelog text for this blocktype.<br />
	 * Changelog will be displayed in modules changelog.
	 * @return string
	 */
	public function GetChangeLog()
	{
		return;
	}
	
	/**
     * Function for the subclass to parse out data for it's parameters.<br />
     * Needs to be overwritten if the blocktype provides a special kind of data that needs to be processed before storing it.
     * @param array &$params - the parameters that are passed when the form is submitted
     * @param bool $editing - a flag to determine if the page is created or edited
     * @return string
     */
	public function FillBlockParams(&$params, $editing = false)
	{
		return isset($params[$this->GetBlockProperty('id')]) ? $params[$this->GetBlockProperty('id')] : '';
	}
	
	/**
     * Function for the subclass to perform the blocks output<br />
     * Needs to be overwritten if the blocktype provides a special kind of data that needs to be processed before displaying it in frontend.
     * @return string
     */
	public function ShowBlock()
	{
		return $this->content_obj->GetPropertyValue($this->GetBlockProperty('id'));
	}
}
?>

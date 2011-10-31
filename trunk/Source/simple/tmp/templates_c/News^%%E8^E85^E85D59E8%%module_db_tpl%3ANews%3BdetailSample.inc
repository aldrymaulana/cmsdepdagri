<?php /* Smarty version 2.6.26, created on 2011-10-29 06:32:47
         compiled from module_db_tpl:News%3BdetailSample */

$this->_cache_serials['E:\WEB\CMS\simple\tmp\templates_c\News^%%E8^E85^E85D59E8%%module_db_tpl%3ANews%3BdetailSample.inc'] = 'e687559c105f3e24b5e1ed4b514580dd';

?><?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'cms_date_format', 'module_db_tpl:News;detailSample', 66, false),array('modifier', 'cms_escape', 'module_db_tpl:News;detailSample', 69, false),array('function', 'eval', 'module_db_tpl:News;detailSample', 76, false),)), $this); ?>
<?php
function _smarty_tplfunc_e687559c105f3e24b5e1ed4b514580dd_0(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('e687559c105f3e24b5e1ed4b514580dd','0');echo smarty_function_eval(array('var' => $_smarty->_tpl_vars['entry']->summary), $_smarty);
}


function _smarty_tplfunc_e687559c105f3e24b5e1ed4b514580dd_1(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('e687559c105f3e24b5e1ed4b514580dd','1');echo smarty_function_eval(array('var' => $_smarty->_tpl_vars['entry']->content), $_smarty);
}


function _smarty_tplfunc_e687559c105f3e24b5e1ed4b514580dd_2(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('e687559c105f3e24b5e1ed4b514580dd','2');echo smarty_function_eval(array('var' => $_smarty->_tpl_vars['field']->value), $_smarty);
}



?>

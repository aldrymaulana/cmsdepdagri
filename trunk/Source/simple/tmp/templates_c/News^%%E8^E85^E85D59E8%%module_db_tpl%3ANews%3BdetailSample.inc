<?php /* Smarty version 2.6.26, created on 2011-11-13 07:55:43
         compiled from module_db_tpl:News%3BdetailSample */

$this->_cache_serials['E:\WEB\CMSDepdagri\Source\simple\tmp\templates_c\News^%%E8^E85^E85D59E8%%module_db_tpl%3ANews%3BdetailSample.inc'] = '86f09493a0658d51157cbfe3c91a1289';

?><?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'cms_date_format', 'module_db_tpl:News;detailSample', 66, false),array('modifier', 'cms_escape', 'module_db_tpl:News;detailSample', 69, false),array('function', 'eval', 'module_db_tpl:News;detailSample', 76, false),array('function', 'cms_module', 'module_db_tpl:News;detailSample', 120, false),)), $this); ?>
<?php
function _smarty_tplfunc_86f09493a0658d51157cbfe3c91a1289_0(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('86f09493a0658d51157cbfe3c91a1289','0');echo smarty_function_eval(array('var' => $_smarty->_tpl_vars['entry']->summary), $_smarty);
}


function _smarty_tplfunc_86f09493a0658d51157cbfe3c91a1289_1(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('86f09493a0658d51157cbfe3c91a1289','1');echo smarty_function_eval(array('var' => $_smarty->_tpl_vars['entry']->content), $_smarty);
}


function _smarty_tplfunc_86f09493a0658d51157cbfe3c91a1289_2(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('86f09493a0658d51157cbfe3c91a1289','2');echo smarty_function_eval(array('var' => $_smarty->_tpl_vars['field']->value), $_smarty);
}


function _smarty_tplfunc_86f09493a0658d51157cbfe3c91a1289_3(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('86f09493a0658d51157cbfe3c91a1289','3');echo smarty_cms_function_cms_module(array('module' => 'comments','modulename' => 'News','pageid' => $_smarty->_tpl_vars['entry']->id), $_smarty);
}



?>

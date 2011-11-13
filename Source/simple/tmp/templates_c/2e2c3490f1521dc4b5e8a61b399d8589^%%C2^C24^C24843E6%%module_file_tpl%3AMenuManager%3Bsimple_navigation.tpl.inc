<?php /* Smarty version 2.6.26, created on 2011-11-12 02:28:54
         compiled from module_file_tpl:MenuManager%3Bsimple_navigation.tpl */

$this->_cache_serials['E:\WEB\CMSDepdagri\Source\simple\tmp\templates_c\2e2c3490f1521dc4b5e8a61b399d8589^%%C2^C24^C24843E6%%module_file_tpl%3AMenuManager%3Bsimple_navigation.tpl.inc'] = '694e3d5b398b7f8ee8a3ac670717ae73';

?><?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'repeat', 'module_file_tpl:MenuManager;simple_navigation.tpl', 17, false),array('modifier', 'cat', 'module_file_tpl:MenuManager;simple_navigation.tpl', 30, false),)), $this); ?>
<?php
function _smarty_tplfunc_694e3d5b398b7f8ee8a3ac670717ae73_0(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('694e3d5b398b7f8ee8a3ac670717ae73','0');echo smarty_cms_function_repeat(array('string' => "<ul>",'times' => $_smarty->_tpl_vars['node']->depth-$_smarty->_tpl_vars['node']->prevdepth), $_smarty);
}


function _smarty_tplfunc_694e3d5b398b7f8ee8a3ac670717ae73_1(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('694e3d5b398b7f8ee8a3ac670717ae73','1');echo smarty_cms_function_repeat(array('string' => "</li></ul>",'times' => $_smarty->_tpl_vars['node']->prevdepth-$_smarty->_tpl_vars['node']->depth), $_smarty);
}


function _smarty_tplfunc_694e3d5b398b7f8ee8a3ac670717ae73_2(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('694e3d5b398b7f8ee8a3ac670717ae73','2');echo smarty_cms_function_repeat(array('string' => "</li></ul>",'times' => $_smarty->_tpl_vars['node']->depth-1), $_smarty);
}



?>

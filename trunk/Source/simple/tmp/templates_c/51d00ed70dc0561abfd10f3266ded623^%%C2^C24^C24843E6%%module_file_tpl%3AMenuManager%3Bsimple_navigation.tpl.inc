<?php /* Smarty version 2.6.26, created on 2011-11-12 02:28:55
         compiled from module_file_tpl:MenuManager%3Bsimple_navigation.tpl */

$this->_cache_serials['E:\WEB\CMSDepdagri\Source\simple\tmp\templates_c\51d00ed70dc0561abfd10f3266ded623^%%C2^C24^C24843E6%%module_file_tpl%3AMenuManager%3Bsimple_navigation.tpl.inc'] = '1c561ab84413b3a49f82dbf35cb33bd3';

?><?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'repeat', 'module_file_tpl:MenuManager;simple_navigation.tpl', 17, false),array('modifier', 'cat', 'module_file_tpl:MenuManager;simple_navigation.tpl', 30, false),)), $this); ?>
<?php
function _smarty_tplfunc_1c561ab84413b3a49f82dbf35cb33bd3_0(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('1c561ab84413b3a49f82dbf35cb33bd3','0');echo smarty_cms_function_repeat(array('string' => "<ul>",'times' => $_smarty->_tpl_vars['node']->depth-$_smarty->_tpl_vars['node']->prevdepth), $_smarty);
}


function _smarty_tplfunc_1c561ab84413b3a49f82dbf35cb33bd3_1(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('1c561ab84413b3a49f82dbf35cb33bd3','1');echo smarty_cms_function_repeat(array('string' => "</li></ul>",'times' => $_smarty->_tpl_vars['node']->prevdepth-$_smarty->_tpl_vars['node']->depth), $_smarty);
}


function _smarty_tplfunc_1c561ab84413b3a49f82dbf35cb33bd3_2(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('1c561ab84413b3a49f82dbf35cb33bd3','2');echo smarty_cms_function_repeat(array('string' => "</li></ul>",'times' => $_smarty->_tpl_vars['node']->depth-1), $_smarty);
}



?>

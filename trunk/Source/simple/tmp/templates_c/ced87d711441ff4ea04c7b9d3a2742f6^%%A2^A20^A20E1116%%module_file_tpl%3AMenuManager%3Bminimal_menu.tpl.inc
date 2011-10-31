<?php /* Smarty version 2.6.26, created on 2011-10-29 05:02:22
         compiled from module_file_tpl:MenuManager%3Bminimal_menu.tpl */

$this->_cache_serials['E:\WEB\CMS\simple\tmp\templates_c\ced87d711441ff4ea04c7b9d3a2742f6^%%A2^A20^A20E1116%%module_file_tpl%3AMenuManager%3Bminimal_menu.tpl.inc'] = '169be485ecd9e908585efa3ac2bf6fcb';

?><?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'repeat', 'module_file_tpl:MenuManager;minimal_menu.tpl', 9, false),)), $this); ?>
<?php
function _smarty_tplfunc_169be485ecd9e908585efa3ac2bf6fcb_0(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('169be485ecd9e908585efa3ac2bf6fcb','0');echo smarty_cms_function_repeat(array('string' => "<ul>",'times' => $_smarty->_tpl_vars['node']->depth-$_smarty->_tpl_vars['node']->prevdepth), $_smarty);
}


function _smarty_tplfunc_169be485ecd9e908585efa3ac2bf6fcb_1(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('169be485ecd9e908585efa3ac2bf6fcb','1');echo smarty_cms_function_repeat(array('string' => "</li></ul>",'times' => $_smarty->_tpl_vars['node']->prevdepth-$_smarty->_tpl_vars['node']->depth), $_smarty);
}


function _smarty_tplfunc_169be485ecd9e908585efa3ac2bf6fcb_2(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('169be485ecd9e908585efa3ac2bf6fcb','2');echo smarty_cms_function_repeat(array('string' => "</li></ul>",'times' => $_smarty->_tpl_vars['node']->depth-1), $_smarty);
}



?>

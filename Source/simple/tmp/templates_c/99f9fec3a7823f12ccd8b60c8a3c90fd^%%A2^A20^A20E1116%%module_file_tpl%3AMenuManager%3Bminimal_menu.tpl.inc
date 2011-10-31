<?php /* Smarty version 2.6.26, created on 2011-10-29 05:07:40
         compiled from module_file_tpl:MenuManager%3Bminimal_menu.tpl */

$this->_cache_serials['E:\WEB\CMS\simple\tmp\templates_c\99f9fec3a7823f12ccd8b60c8a3c90fd^%%A2^A20^A20E1116%%module_file_tpl%3AMenuManager%3Bminimal_menu.tpl.inc'] = 'bf762ef37790d33d979b605d0ea24268';

?><?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'repeat', 'module_file_tpl:MenuManager;minimal_menu.tpl', 9, false),)), $this); ?>
<?php
function _smarty_tplfunc_bf762ef37790d33d979b605d0ea24268_0(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('bf762ef37790d33d979b605d0ea24268','0');echo smarty_cms_function_repeat(array('string' => "<ul>",'times' => $_smarty->_tpl_vars['node']->depth-$_smarty->_tpl_vars['node']->prevdepth), $_smarty);
}


function _smarty_tplfunc_bf762ef37790d33d979b605d0ea24268_1(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('bf762ef37790d33d979b605d0ea24268','1');echo smarty_cms_function_repeat(array('string' => "</li></ul>",'times' => $_smarty->_tpl_vars['node']->prevdepth-$_smarty->_tpl_vars['node']->depth), $_smarty);
}


function _smarty_tplfunc_bf762ef37790d33d979b605d0ea24268_2(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('bf762ef37790d33d979b605d0ea24268','2');echo smarty_cms_function_repeat(array('string' => "</li></ul>",'times' => $_smarty->_tpl_vars['node']->depth-1), $_smarty);
}



?>

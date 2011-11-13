<?php /* Smarty version 2.6.26, created on 2011-11-13 17:12:26
         compiled from module_file_tpl:MenuManager%3Bcssmenu.tpl */

$this->_cache_serials['E:\WEB\CMSDepdagri\Source\simple\tmp\templates_c\aa508868877665fdce58b1389de3e0d8^%%A8^A88^A88C4357%%module_file_tpl%3AMenuManager%3Bcssmenu.tpl.inc'] = 'b09a251fd8966e974ce0957f721917b8';

?><?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'repeat', 'module_file_tpl:MenuManager;cssmenu.tpl', 17, false),array('modifier', 'cat', 'module_file_tpl:MenuManager;cssmenu.tpl', 30, false),)), $this); ?>
<?php
function _smarty_tplfunc_b09a251fd8966e974ce0957f721917b8_0(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('b09a251fd8966e974ce0957f721917b8','0');echo smarty_cms_function_repeat(array('string' => '<ul class="unli">','times' => $_smarty->_tpl_vars['node']->depth-$_smarty->_tpl_vars['node']->prevdepth), $_smarty);
}


function _smarty_tplfunc_b09a251fd8966e974ce0957f721917b8_1(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('b09a251fd8966e974ce0957f721917b8','1');echo smarty_cms_function_repeat(array('string' => '</li></ul>','times' => $_smarty->_tpl_vars['node']->prevdepth-$_smarty->_tpl_vars['node']->depth), $_smarty);
}


function _smarty_tplfunc_b09a251fd8966e974ce0957f721917b8_2(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('b09a251fd8966e974ce0957f721917b8','2');echo smarty_cms_function_repeat(array('string' => '</li></ul>','times' => $_smarty->_tpl_vars['node']->depth-1), $_smarty);
}



?>

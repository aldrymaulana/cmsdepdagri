<?php /* Smarty version 2.6.26, created on 2011-10-29 05:07:40
         compiled from module_file_tpl:MenuManager%3Bcssmenu_ulshadow.tpl */

$this->_cache_serials['E:\WEB\CMS\simple\tmp\templates_c\88133eebfd60ab1acb83fd7cb7ee480f^%%2D^2D2^2D22AD26%%module_file_tpl%3AMenuManager%3Bcssmenu_ulshadow.tpl.inc'] = '9560406f2a0974ea640b066110389db9';

?><?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'repeat', 'module_file_tpl:MenuManager;cssmenu_ulshadow.tpl', 17, false),array('modifier', 'cat', 'module_file_tpl:MenuManager;cssmenu_ulshadow.tpl', 29, false),)), $this); ?>
<?php
function _smarty_tplfunc_9560406f2a0974ea640b066110389db9_0(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('9560406f2a0974ea640b066110389db9','0');echo smarty_cms_function_repeat(array('string' => '<ul class="unli">','times' => $_smarty->_tpl_vars['node']->depth-$_smarty->_tpl_vars['node']->prevdepth), $_smarty);
}


function _smarty_tplfunc_9560406f2a0974ea640b066110389db9_1(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('9560406f2a0974ea640b066110389db9','1');echo smarty_cms_function_repeat(array('string' => '</li><li class="separator once" style="list-style-type: none;">&nbsp;</li></ul>','times' => $_smarty->_tpl_vars['node']->prevdepth-$_smarty->_tpl_vars['node']->depth), $_smarty);
}


function _smarty_tplfunc_9560406f2a0974ea640b066110389db9_2(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('9560406f2a0974ea640b066110389db9','2');echo smarty_cms_function_repeat(array('string' => '</li><li class="separator once" style="list-style-type: none;">&nbsp;</li></ul>','times' => $_smarty->_tpl_vars['node']->depth-1), $_smarty);
}



?>
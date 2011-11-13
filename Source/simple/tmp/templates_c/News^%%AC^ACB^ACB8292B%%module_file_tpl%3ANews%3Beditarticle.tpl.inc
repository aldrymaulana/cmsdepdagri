<?php /* Smarty version 2.6.26, created on 2011-11-13 07:56:06
         compiled from module_file_tpl:News%3Beditarticle.tpl */

$this->_cache_serials['E:\WEB\CMSDepdagri\Source\simple\tmp\templates_c\News^%%AC^ACB^ACB8292B%%module_file_tpl%3ANews%3Beditarticle.tpl.inc'] = '3b0a78fbb613f3670f28461b426041cd';

?><?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'html_select_date', 'module_file_tpl:News;editarticle.tpl', 55, false),array('function', 'html_select_time', 'module_file_tpl:News;editarticle.tpl', 55, false),array('function', 'html_options', 'module_file_tpl:News;editarticle.tpl', 170, false),)), $this); ?>
<?php
function _smarty_tplfunc_3b0a78fbb613f3670f28461b426041cd_0(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('3b0a78fbb613f3670f28461b426041cd','0');echo smarty_function_html_select_date(array('prefix' => $_smarty->_tpl_vars['postdateprefix'],'time' => $_smarty->_tpl_vars['postdate'],'start_year' => "-10",'end_year' => "+15"), $_smarty);
}


function _smarty_tplfunc_3b0a78fbb613f3670f28461b426041cd_1(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('3b0a78fbb613f3670f28461b426041cd','1');echo smarty_function_html_select_time(array('prefix' => $_smarty->_tpl_vars['postdateprefix'],'time' => $_smarty->_tpl_vars['postdate']), $_smarty);
}


function _smarty_tplfunc_3b0a78fbb613f3670f28461b426041cd_2(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('3b0a78fbb613f3670f28461b426041cd','2');echo smarty_function_html_select_date(array('prefix' => $_smarty->_tpl_vars['startdateprefix'],'time' => $_smarty->_tpl_vars['startdate'],'start_year' => "-10",'end_year' => "+15"), $_smarty);
}


function _smarty_tplfunc_3b0a78fbb613f3670f28461b426041cd_3(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('3b0a78fbb613f3670f28461b426041cd','3');echo smarty_function_html_select_time(array('prefix' => $_smarty->_tpl_vars['startdateprefix'],'time' => $_smarty->_tpl_vars['startdate']), $_smarty);
}


function _smarty_tplfunc_3b0a78fbb613f3670f28461b426041cd_4(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('3b0a78fbb613f3670f28461b426041cd','4');echo smarty_function_html_select_date(array('prefix' => $_smarty->_tpl_vars['enddateprefix'],'time' => $_smarty->_tpl_vars['enddate'],'start_year' => "-10",'end_year' => "+15"), $_smarty);
}


function _smarty_tplfunc_3b0a78fbb613f3670f28461b426041cd_5(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('3b0a78fbb613f3670f28461b426041cd','5');echo smarty_function_html_select_time(array('prefix' => $_smarty->_tpl_vars['enddateprefix'],'time' => $_smarty->_tpl_vars['enddate']), $_smarty);
}


function _smarty_tplfunc_3b0a78fbb613f3670f28461b426041cd_6(&$_smarty)
{
$_cache_attrs =& $_smarty->_smarty_cache_attrs('3b0a78fbb613f3670f28461b426041cd','6');echo smarty_function_html_options(array('options' => $_smarty->_tpl_vars['detail_templates'],'selected' => $_smarty->_tpl_vars['cur_detail_template']), $_smarty);
}



?>

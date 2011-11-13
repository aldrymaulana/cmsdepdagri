<?php /* Smarty version 2.6.26, created on 2011-11-09 13:53:23
         compiled from module_file_tpl:MenuManager%3Bcssmenu.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'repeat', 'module_file_tpl:MenuManager;cssmenu.tpl', 17, false),array('modifier', 'cat', 'module_file_tpl:MenuManager;cssmenu.tpl', 30, false),)), $this); ?>
<?php $this->_cache_serials['E:\WEB\CMSDepdagri\Source\simple\tmp\templates_c\ee506741b5c54307ef49e9d472273161^%%A8^A88^A88C4357%%module_file_tpl%3AMenuManager%3Bcssmenu.tpl.inc'] = 'd0ecd3cd448a87b231ba84ccc94cca28'; ?>
<?php $this->assign('number_of_levels', 10000); ?>
<?php if (isset ( $this->_tpl_vars['menuparams']['number_of_levels'] )): ?>
  <?php $this->assign('number_of_levels', $this->_tpl_vars['menuparams']['number_of_levels']); ?>
<?php endif; ?>

<?php if ($this->_tpl_vars['count'] > 0): ?>
<div id="menuwrapper">
<ul id="primary-nav">
<?php $_from = $this->_tpl_vars['nodelist']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['node']):
?>
<?php if ($this->_tpl_vars['node']->depth > $this->_tpl_vars['node']->prevdepth): ?>
<?php if ($this->caching && !$this->_cache_including): echo '{nocache:d0ecd3cd448a87b231ba84ccc94cca28#0}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('d0ecd3cd448a87b231ba84ccc94cca28','0');echo smarty_cms_function_repeat(array('string' => '<ul class="unli">','times' => $this->_tpl_vars['node']->depth-$this->_tpl_vars['node']->prevdepth), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:d0ecd3cd448a87b231ba84ccc94cca28#0}'; endif;?>

<?php elseif ($this->_tpl_vars['node']->depth < $this->_tpl_vars['node']->prevdepth): ?>
<?php if ($this->caching && !$this->_cache_including): echo '{nocache:d0ecd3cd448a87b231ba84ccc94cca28#1}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('d0ecd3cd448a87b231ba84ccc94cca28','1');echo smarty_cms_function_repeat(array('string' => '</li></ul>','times' => $this->_tpl_vars['node']->prevdepth-$this->_tpl_vars['node']->depth), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:d0ecd3cd448a87b231ba84ccc94cca28#1}'; endif;?>

</li>
<?php elseif ($this->_tpl_vars['node']->index > 0): ?></li>
<?php endif; ?>

<?php if ($this->_tpl_vars['node']->parent == true || $this->_tpl_vars['node']->current == true): ?>
  <?php $this->assign('classes', 'menuactive'); ?>
  <?php if ($this->_tpl_vars['node']->parent == true): ?>
    <?php $this->assign('classes', 'menuactive menuparent'); ?>
  <?php endif; ?>
  <?php if ($this->_tpl_vars['node']->children_exist == true && $this->_tpl_vars['node']->depth < $this->_tpl_vars['number_of_levels']): ?>
    <?php $this->assign('classes', ((is_array($_tmp=$this->_tpl_vars['classes'])) ? $this->_run_mod_handler('cat', true, $_tmp, ' parent') : smarty_modifier_cat($_tmp, ' parent'))); ?>
  <?php endif; ?>
  <li class="<?php echo $this->_tpl_vars['classes']; ?>
"><a class="<?php echo $this->_tpl_vars['classes']; ?>
" 
<?php elseif ($this->_tpl_vars['node']->type == 'sectionheader' && $this->_tpl_vars['node']->haschildren == true): ?>
  <li class="menuparent"><a class="menuparent"><span class="sectionheader"><?php echo $this->_tpl_vars['node']->menutext; ?>
</span></a>
<?php elseif ($this->_tpl_vars['node']->type == 'sectionheader'): ?>
  <li><a ><span class="sectionheader"><?php echo $this->_tpl_vars['node']->menutext; ?>
</span></a>
<?php elseif ($this->_tpl_vars['node']->type == 'separator'): ?>
  <li style="list-style-type: none;"> <hr class="menu_separator" />
<?php elseif ($this->_tpl_vars['node']->children_exist == true && $this->_tpl_vars['node']->depth < $this->_tpl_vars['number_of_levels'] && $this->_tpl_vars['node']->type != 'sectionheader' && $this->_tpl_vars['node']->type != 'separator'): ?>
  <li class="menuparent"><a class="menuparent" 
<?php else: ?>
  <li>
  <a 
<?php endif; ?>

<?php if (( $this->_tpl_vars['node']->type != 'sectionheader' && $this->_tpl_vars['node']->type != 'separator' ) || $this->_tpl_vars['node']->parent == true || $this->_tpl_vars['node']->current == true): ?>
 <?php if ($this->_tpl_vars['node']->target): ?>target="<?php echo $this->_tpl_vars['node']->target; ?>
" <?php endif; ?>
href="<?php echo $this->_tpl_vars['node']->url; ?>
"><span><?php echo $this->_tpl_vars['node']->menutext; ?>
</span></a>
<?php endif; ?>
<?php endforeach; endif; unset($_from); ?>
<?php if ($this->caching && !$this->_cache_including): echo '{nocache:d0ecd3cd448a87b231ba84ccc94cca28#2}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('d0ecd3cd448a87b231ba84ccc94cca28','2');echo smarty_cms_function_repeat(array('string' => '</li></ul>','times' => $this->_tpl_vars['node']->depth-1), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:d0ecd3cd448a87b231ba84ccc94cca28#2}'; endif;?>

</li>
</ul>
<div class="clearb"></div>
</div>
<?php endif; ?>

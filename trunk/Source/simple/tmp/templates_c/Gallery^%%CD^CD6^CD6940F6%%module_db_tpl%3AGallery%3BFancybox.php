<?php /* Smarty version 2.6.26, created on 2011-11-12 02:28:51
         compiled from module_db_tpl:Gallery%3BFancybox */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', 'module_db_tpl:Gallery;Fancybox', 2, false),array('modifier', 'replace', 'module_db_tpl:Gallery;Fancybox', 18, false),)), $this); ?>
<div class="gallery">
<?php if (! empty ( $this->_tpl_vars['module_message'] )): ?><h4><?php echo ((is_array($_tmp=$this->_tpl_vars['module_message'])) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
</h4><?php endif; ?>
<?php if (! empty ( $this->_tpl_vars['gallerytitle'] )): ?><h3><?php echo $this->_tpl_vars['gallerytitle']; ?>
</h3><?php endif; ?>
<?php if (! empty ( $this->_tpl_vars['gallerycomment'] )): ?><div class="gallerycomment"><?php echo $this->_tpl_vars['gallerycomment']; ?>
</div><?php endif; ?>
<p><?php echo $this->_tpl_vars['imagecount']; ?>
</p>
<div class="pagenavigation">
<?php if ($this->_tpl_vars['pages'] > 1): ?>
<div class="prevpage"><?php echo $this->_tpl_vars['prevpage']; ?>
</div>
<div class="nextpage"><?php echo $this->_tpl_vars['nextpage']; ?>
</div>
<?php endif; ?>
<?php if (! $this->_tpl_vars['hideparentlink'] && ! empty ( $this->_tpl_vars['parentlink'] )): ?><div class="parentlink"><?php echo $this->_tpl_vars['parentlink']; ?>
</div><?php endif; ?>
<?php if ($this->_tpl_vars['pages'] > 1): ?><div class="pagelinks"><?php echo $this->_tpl_vars['pagelinks']; ?>
</div><?php endif; ?>
</div>

<?php $_from = $this->_tpl_vars['images']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['image']):
?>
	<div class="img">
	<?php if ($this->_tpl_vars['image']->isdir): ?>
		<a href="<?php echo $this->_tpl_vars['image']->file; ?>
" title="<?php echo $this->_tpl_vars['image']->titlename; ?>
"><img src="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['image']->thumb)) ? $this->_run_mod_handler('escape', true, $_tmp, 'url') : smarty_modifier_escape($_tmp, 'url')))) ? $this->_run_mod_handler('replace', true, $_tmp, '%2F', '/') : smarty_modifier_replace($_tmp, '%2F', '/')); ?>
" alt="<?php echo $this->_tpl_vars['image']->titlename; ?>
" /></a><br />
		<?php echo $this->_tpl_vars['image']->titlename; ?>

	<?php else: ?>
   <a class="group" href="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['image']->file)) ? $this->_run_mod_handler('escape', true, $_tmp, 'url') : smarty_modifier_escape($_tmp, 'url')))) ? $this->_run_mod_handler('replace', true, $_tmp, '%2F', '/') : smarty_modifier_replace($_tmp, '%2F', '/')); ?>
" title="<?php echo $this->_tpl_vars['image']->titlename; ?>
" rel="gallery-<?php echo $this->_tpl_vars['galleryid']; ?>
"><img src="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['image']->thumb)) ? $this->_run_mod_handler('escape', true, $_tmp, 'url') : smarty_modifier_escape($_tmp, 'url')))) ? $this->_run_mod_handler('replace', true, $_tmp, '%2F', '/') : smarty_modifier_replace($_tmp, '%2F', '/')); ?>
" alt="<?php echo $this->_tpl_vars['image']->titlename; ?>
" /></a>
	<?php endif; ?>
	</div>
<?php endforeach; endif; unset($_from); ?>
<div class="galleryclear">&nbsp;</div>
</div>


<?php /* Smarty version 2.6.26, created on 2011-11-13 07:55:25
         compiled from module_file_tpl:News%3Bedittemplate.tpl */ ?>
<div class="pageoverflow">
<h3><?php echo $this->_tpl_vars['title']; ?>
</h3>
</div>
<?php echo $this->_tpl_vars['formstart']; ?>
<?php echo $this->_tpl_vars['hidden']; ?>

<div class="pageoverflow">
  <p class="pagetext"><?php echo $this->_tpl_vars['prompt_templatename']; ?>
:</p>
  <p class="pageinput"><?php echo $this->_tpl_vars['templatename']; ?>
</p>
</div>
<div class="pageoverflow">
  <p class="pagetext"><?php echo $this->_tpl_vars['prompt_template']; ?>
:</p>
  <p class="pageinput"><?php echo $this->_tpl_vars['template']; ?>
</p>
</div>
<div class="pageoverflow">
  <p class="pagetext">&nbsp;</p>
  <p class="pageinput"><?php echo $this->_tpl_vars['submit']; ?>
<?php echo $this->_tpl_vars['cancel']; ?>
</p>
</div>
<?php echo $this->_tpl_vars['formend']; ?>

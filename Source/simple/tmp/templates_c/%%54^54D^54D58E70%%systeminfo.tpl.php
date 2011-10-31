<?php /* Smarty version 2.6.26, created on 2011-10-29 05:00:51
         compiled from systeminfo.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'si_lang', 'systeminfo.tpl', 3, false),array('function', 'cycle', 'systeminfo.tpl', 19, false),array('modifier', 'default', 'systeminfo.tpl', 57, false),array('modifier', 'lower', 'systeminfo.tpl', 110, false),)), $this); ?>
<?php $this->_cache_serials['E:\WEB\CMS\simple\tmp\templates_c\%%54^54D^54D58E70%%systeminfo.tpl.inc'] = 'b0016bda300f4ea51828fb0ac5674f47'; ?><div class="pagecontainer">
<?php if (empty ( $_GET['cleanreport'] )): ?>
	<p class="pageshowrows"><a href="<?php echo $this->_tpl_vars['systeminfo_cleanreport']; ?>
"><?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#0}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','0');echo systeminfo_lang(array('a' => 'copy_paste_forum'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#0}'; endif;?>
</a></p>
<?php endif; ?>
<?php echo $this->_tpl_vars['showheader']; ?>


<div class="pageoverflow">
	<div class="pageoverflow">
		<p><?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#1}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','1');echo systeminfo_lang(array('a' => 'help_systeminformation'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#1}'; endif;?>
</p>
	</div>
<hr/>
<table class="pagetable" cellspacing="0" summary="<?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#2}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','2');echo systeminfo_lang(array('a' => 'cms_install_information'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#2}'; endif;?>
">
    <thead> 
       <tr>
         <th colspan="3"><?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#3}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','3');echo systeminfo_lang(array('a' => 'cms_install_information'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#3}'; endif;?>
</th>
       </tr>
    </thead> 
	<tbody>
		<tr class="<?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#4}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','4');echo smarty_function_cycle(array('values' => 'row1,row2'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#4}'; endif;?>
">
  			<td width="45%"><?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#5}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','5');echo systeminfo_lang(array('a' => 'cms_version'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#5}'; endif;?>
</td>
			<td width="5%"></td>
  			<td width="50%"><?php echo $this->_tpl_vars['cms_version']; ?>
</td>
  		</tr>
	</tbody>
</table>
<br /><br />
<table class="pagetable" cellspacing="0" summary="<?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#6}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','6');echo systeminfo_lang(array('a' => 'installed_modules'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#6}'; endif;?>
">
    <thead> 
       <tr>
         <th colspan="3"><?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#7}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','7');echo systeminfo_lang(array('a' => 'installed_modules'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#7}'; endif;?>
</th>
       </tr>
    </thead> 
	<tbody>
  		<?php $_from = $this->_tpl_vars['installed_modules']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['module']):
?>
  		<tr class="<?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#8}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','8');echo smarty_function_cycle(array('values' => 'row1,row2'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#8}'; endif;?>
">
    		<td width="45%"><?php echo $this->_tpl_vars['module']['module_name']; ?>
</td>
			<td width="5%"></td>
    		<td width="50%"><?php echo $this->_tpl_vars['module']['version']; ?>
</td>
  		</tr>
  		<?php endforeach; endif; unset($_from); ?>
	</tbody>
</table>
<br /><br />
<table class="pagetable" cellspacing="0" summary="<?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#9}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','9');echo systeminfo_lang(array('a' => 'config_information'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#9}'; endif;?>
">
    <thead> 
       <tr>
         <th colspan="3"><?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#10}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','10');echo systeminfo_lang(array('a' => 'config_information'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#10}'; endif;?>
</th>
       </tr>
    </thead> 
	<tbody>
  	<?php $_from = $this->_tpl_vars['config_info']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['view'] => $this->_tpl_vars['tmp']):
?>
  		<?php $_from = $this->_tpl_vars['tmp']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['test']):
?>
		<tr class="<?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#11}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','11');echo smarty_function_cycle(array('values' => 'row1,row2'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#11}'; endif;?>
">
    		<td width="45%"><?php echo $this->_tpl_vars['test']->title; ?>
</td>
			<td width="5%"><?php if (isset ( $this->_tpl_vars['test']->res )): ?><img class="systemicon" src="themes/<?php echo $this->_tpl_vars['themename']; ?>
/images/icons/extra/<?php echo $this->_tpl_vars['test']->res; ?>
.gif" title="<?php echo $this->_tpl_vars['test']->res_text; ?>
" alt="<?php echo $this->_tpl_vars['test']->res_text; ?>
" /><?php endif; ?></td>
			<td width="50%">
	<?php if (isset ( $this->_tpl_vars['test']->value )): ?><?php echo ((is_array($_tmp=@$this->_tpl_vars['test']->value)) ? $this->_run_mod_handler('default', true, $_tmp, "&nbsp;") : smarty_modifier_default($_tmp, "&nbsp;")); ?>
<?php endif; ?>
	<?php if (isset ( $this->_tpl_vars['test']->secondvalue )): ?>(<?php echo ((is_array($_tmp=@$this->_tpl_vars['test']->secondvalue)) ? $this->_run_mod_handler('default', true, $_tmp, "&nbsp;") : smarty_modifier_default($_tmp, "&nbsp;")); ?>
)<?php endif; ?>
	<?php if (isset ( $this->_tpl_vars['test']->error_fragment )): ?><a class="external" rel="external" href="<?php echo $this->_tpl_vars['cms_install_help_url']; ?>
#<?php echo $this->_tpl_vars['test']->error_fragment; ?>
"><img src="themes/<?php echo $this->_tpl_vars['themename']; ?>
/images/icons/system/info-external.gif" title="?" alt="?" /></a><?php endif; ?>
	<?php if (isset ( $this->_tpl_vars['test']->message )): ?><br /><?php echo $this->_tpl_vars['test']->message; ?>
<?php endif; ?>
			</td>
		</tr>
  		<?php endforeach; endif; unset($_from); ?>
	<?php endforeach; endif; unset($_from); ?>
	</tbody>
</table>
<br /><br />
<table class="pagetable" cellspacing="0" summary="<?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#12}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','12');echo systeminfo_lang(array('a' => 'php_information'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#12}'; endif;?>
">
    <thead> 
       <tr>
         <th colspan="3"><?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#13}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','13');echo systeminfo_lang(array('a' => 'php_information'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#13}'; endif;?>
</th>
       </tr>
    </thead> 
	<tbody>
	<?php $_from = $this->_tpl_vars['php_information']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['view'] => $this->_tpl_vars['tmp']):
?>
  		<?php $_from = $this->_tpl_vars['tmp']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['test']):
?>
		<tr class="<?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#14}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','14');echo smarty_function_cycle(array('values' => 'row1,row2'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#14}'; endif;?>
">
    		<td width="45%"><?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#15}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','15');echo systeminfo_lang(array('a' => $this->_tpl_vars['key']), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#15}'; endif;?>
 (<?php echo $this->_tpl_vars['key']; ?>
)</td>
			<td width="5%"><?php if (isset ( $this->_tpl_vars['test']->res )): ?><img class="systemicon" src="themes/<?php echo $this->_tpl_vars['themename']; ?>
/images/icons/extra/<?php echo $this->_tpl_vars['test']->res; ?>
.gif" title="<?php echo $this->_tpl_vars['test']->res_text; ?>
" alt="<?php echo $this->_tpl_vars['test']->res_text; ?>
" /><?php endif; ?></td>
			<td width="50%">
	<?php if (isset ( $this->_tpl_vars['test']->value ) && $this->_tpl_vars['test']->display_value != 0): ?>&nbsp;<?php echo $this->_tpl_vars['test']->value; ?>
<?php endif; ?>
	<?php if (isset ( $this->_tpl_vars['test']->secondvalue )): ?>(<?php echo $this->_tpl_vars['test']->secondvalue; ?>
)<?php endif; ?>
	<?php if (isset ( $this->_tpl_vars['test']->error_fragment )): ?><a class="external" rel="external" href="<?php echo $this->_tpl_vars['cms_install_help_url']; ?>
#<?php echo $this->_tpl_vars['test']->error_fragment; ?>
"><img src="themes/<?php echo $this->_tpl_vars['themename']; ?>
/images/icons/system/info-external.gif" title="?" alt="?" /></a><?php endif; ?>
	<?php if (isset ( $this->_tpl_vars['test']->message )): ?><?php echo $this->_tpl_vars['test']->message; ?>
<?php endif; ?>
	<?php if (isset ( $this->_tpl_vars['test']->opt )): ?>
		<?php $_from = $this->_tpl_vars['test']->opt; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['opt']):
?>
			<br /><?php echo $this->_tpl_vars['key']; ?>
: <?php echo $this->_tpl_vars['opt']['message']; ?>
 <img class="systemicon" src="themes/<?php echo $this->_tpl_vars['themename']; ?>
/images/icons/extra/<?php echo $this->_tpl_vars['opt']['res']; ?>
.gif" alt="<?php echo $this->_tpl_vars['opt']['res_text']; ?>
" title="<?php echo $this->_tpl_vars['opt']['res_text']; ?>
" />
		<?php endforeach; endif; unset($_from); ?>
	<?php endif; ?>
			</td>
		</tr>
  		<?php endforeach; endif; unset($_from); ?>
	<?php endforeach; endif; unset($_from); ?>
	</tbody>
</table>
<br /><br />
<table class="pagetable" cellspacing="0" summary="<?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#16}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','16');echo systeminfo_lang(array('a' => 'server_information'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#16}'; endif;?>
">
    <thead> 
       <tr>
         <th colspan="3"><?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#17}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','17');echo systeminfo_lang(array('a' => 'server_information'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#17}'; endif;?>
</th>
       </tr>
    </thead> 
	<tbody>
	<?php $_from = $this->_tpl_vars['server_info']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['view'] => $this->_tpl_vars['tmp']):
?>
  		<?php $_from = $this->_tpl_vars['tmp']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['test']):
?>
		<tr class="<?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#18}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','18');echo smarty_function_cycle(array('values' => 'row1,row2'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#18}'; endif;?>
">
			<td width="45%"><?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#19}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','19');echo systeminfo_lang(array('a' => $this->_tpl_vars['key']), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#19}'; endif;?>
 (<?php echo $this->_tpl_vars['key']; ?>
)</td>
			<td width="5%"><?php if (isset ( $this->_tpl_vars['test']->res )): ?><img class="systemicon" src="themes/<?php echo $this->_tpl_vars['themename']; ?>
/images/icons/extra/<?php echo ((is_array($_tmp=@$this->_tpl_vars['test']->res)) ? $this->_run_mod_handler('default', true, $_tmp, 'space') : smarty_modifier_default($_tmp, 'space')); ?>
.gif" title="<?php echo ((is_array($_tmp=@$this->_tpl_vars['test']->res_text)) ? $this->_run_mod_handler('default', true, $_tmp, "") : smarty_modifier_default($_tmp, "")); ?>
" alt="<?php echo ((is_array($_tmp=@$this->_tpl_vars['test']->res_text)) ? $this->_run_mod_handler('default', true, $_tmp, "") : smarty_modifier_default($_tmp, "")); ?>
" /><?php endif; ?></td>
			<td width="50%">
			<?php if (isset ( $this->_tpl_vars['test']->value )): ?><?php echo ((is_array($_tmp=$this->_tpl_vars['test']->value)) ? $this->_run_mod_handler('lower', true, $_tmp) : smarty_modifier_lower($_tmp)); ?>
<?php endif; ?>
			<?php if (isset ( $this->_tpl_vars['test']->secondvalue )): ?>(<?php echo $this->_tpl_vars['test']->secondvalue; ?>
)<?php endif; ?>
			<?php if (isset ( $this->_tpl_vars['test']->message )): ?><br /><?php echo $this->_tpl_vars['test']->message; ?>
<?php endif; ?>
			</td>
		</tr>
  		<?php endforeach; endif; unset($_from); ?>
	<?php endforeach; endif; unset($_from); ?>
	</tbody>
</table>
<br /><br />
<table class="pagetable" cellspacing="0" summary="<?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#20}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','20');echo systeminfo_lang(array('a' => 'permission_information'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#20}'; endif;?>
">
    <thead> 
       <tr>
         <th colspan="3"><?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#21}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','21');echo systeminfo_lang(array('a' => 'permission_information'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#21}'; endif;?>
</th>
       </tr>
    </thead> 
	<tbody>
	<?php $_from = $this->_tpl_vars['permission_info']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['view'] => $this->_tpl_vars['tmp']):
?>
  		<?php $_from = $this->_tpl_vars['tmp']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['test']):
?>
	<tr class="<?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#22}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','22');echo smarty_function_cycle(array('values' => 'row1,row2'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#22}'; endif;?>
">
		<td width="45%"><?php echo $this->_tpl_vars['key']; ?>
</td>
		<td width="5%"><?php if (isset ( $this->_tpl_vars['test']->res )): ?><img class="systemicon" src="themes/<?php echo $this->_tpl_vars['themename']; ?>
/images/icons/extra/<?php echo $this->_tpl_vars['test']->res; ?>
.gif" title="<?php echo $this->_tpl_vars['test']->res_text; ?>
" alt="<?php echo $this->_tpl_vars['test']->res_text; ?>
" /><?php endif; ?></td>
		<td width="50%">
		<?php if (isset ( $this->_tpl_vars['test']->value )): ?><?php echo $this->_tpl_vars['test']->value; ?>
<?php endif; ?>
		<?php if (isset ( $this->_tpl_vars['test']->secondvalue )): ?>(<?php echo $this->_tpl_vars['test']->secondvalue; ?>
)<?php endif; ?>
		<?php if (isset ( $this->_tpl_vars['test']->message )): ?><br /><?php echo $this->_tpl_vars['test']->message; ?>
<?php endif; ?>
		</td>
	</tr>
  		<?php endforeach; endif; unset($_from); ?>
	<?php endforeach; endif; unset($_from); ?>
	</tbody>
</table>
<br />
<p class="pageback"><a class="pageback" href="<?php echo $this->_tpl_vars['backurl']; ?>
">&#171; <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b0016bda300f4ea51828fb0ac5674f47#23}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b0016bda300f4ea51828fb0ac5674f47','23');echo systeminfo_lang(array('a' => 'back'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b0016bda300f4ea51828fb0ac5674f47#23}'; endif;?>
</a></p>

	</div>
</div>
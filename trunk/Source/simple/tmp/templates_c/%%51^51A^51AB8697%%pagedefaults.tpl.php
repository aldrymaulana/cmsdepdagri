<?php /* Smarty version 2.6.26, created on 2011-10-29 05:00:42
         compiled from pagedefaults.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'lang', 'pagedefaults.tpl', 3, false),array('function', 'html_options', 'pagedefaults.tpl', 21, false),)), $this); ?>
<?php $this->_cache_serials['E:\WEB\CMS\simple\tmp\templates_c\%%51^51A^51AB8697%%pagedefaults.tpl.inc'] = '4cbc72690956776a1620710f8af4bcb8'; ?><div class="pagecontainer">
<?php echo $this->_tpl_vars['header']; ?>

<?php echo ((is_array($_tmp='info_pagedefaults')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>


<form id="pagedefaultsform" method="post" action="pagedefaults.php">
  <input type="hidden" name="editpagedefaults" value="true"/>
  <input type="hidden" name="<?php echo $this->_tpl_vars['CMS_SECURE_PARAM_NAME']; ?>
" value="<?php echo $this->_tpl_vars['CMS_KEY']; ?>
"/>

  <div class="pageoverflow">
    <p class="pagetext"></p>
    <p class="pageinput">
      <input type="submit" name="submit" value="<?php echo ((is_array($_tmp='submit')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
" class="pagebutton" />
      <input type="submit" name="cancel" value="<?php echo ((is_array($_tmp='cancel')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
" class="pagebutton" />
    </p>
  </div>

<div class="pageoverflow">
  <p class="pagetext"><?php echo ((is_array($_tmp='default_contenttype')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
:</p>
  <p class="pageinput">
    <select name="default_contenttype">
      <?php if ($this->caching && !$this->_cache_including): echo '{nocache:4cbc72690956776a1620710f8af4bcb8#0}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('4cbc72690956776a1620710f8af4bcb8','0');echo smarty_function_html_options(array('options' => $this->_tpl_vars['all_contenttypes'],'selected' => $this->_tpl_vars['default_contenttype']), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:4cbc72690956776a1620710f8af4bcb8#0}'; endif;?>

    </select>
    <br/>
    <?php echo ((is_array($_tmp='info_default_contenttype')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>

  </p>
</div>

  <div class="pageoverflow">
    <p class="pagetext"><?php echo ((is_array($_tmp='active')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
:</p>
    <p class="pageinput">
      <input class="pagenb" type="checkbox" name="page_active" <?php if ($this->_tpl_vars['page_active'] == 1): ?>checked="checked"<?php endif; ?>/>
    </p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext"><?php echo ((is_array($_tmp='secure_page')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
:</p>
    <p class="pageinput">
      <input class="pagenb" type="checkbox" name="page_secure" <?php if ($this->_tpl_vars['page_secure'] == 1): ?>checked="checked"<?php endif; ?>/>
    </p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext"><?php echo ((is_array($_tmp='showinmenu')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
:</p>
    <p class="pageinput">
      <input class="pagenb" type="checkbox" name="page_showinmenu" <?php if ($this->_tpl_vars['page_showinmenu'] == 1): ?>checked="checked"<?php endif; ?>/>
    </p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext"><?php echo ((is_array($_tmp='use_name')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
:</p>
    <p class="pageinput">
      <input class="pagenb" type="checkbox" name="page_parent_use_name" <?php if ($this->_tpl_vars['page_parent_use_name'] == 1): ?>checked="checked"<?php endif; ?>/>
    </p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext"><?php echo ((is_array($_tmp='cachable')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
:</p>
    <p class="pageinput">
      <input class="pagenb" type="checkbox" name="page_cachable" <?php if ($this->_tpl_vars['page_cachable'] == 1): ?>checked="checked"<?php endif; ?>/>
    </p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext"><?php echo ((is_array($_tmp='metadata')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
:</p>
    <p class="pageinput">
      <textarea class="pagesmalltextarea" name="page_metadata" cols="80" rows="20"><?php echo $this->_tpl_vars['page_metadata']; ?>
</textarea>
    </p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext"><?php echo ((is_array($_tmp='content')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
:</p>
    <p class="pageinput">
      <textarea class="pagesmalltextarea" name="page_defaultcontent" cols="80" rows="20"><?php echo $this->_tpl_vars['page_defaultcontent']; ?>
</textarea>
    </p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext"><?php echo ((is_array($_tmp='searchable')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
:</p>
    <p class="pageinput">
      <input class="pagenb" type="checkbox" name="page_searchable" <?php if ($this->_tpl_vars['page_searchable'] == 1): ?>checked="checked"<?php endif; ?>/>
    </p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext"><?php echo ((is_array($_tmp='additionaleditors')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
:</p>
    <p class="pageinput">
      <?php echo $this->_tpl_vars['input_additional_editors']; ?>

    </p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext"><?php echo ((is_array($_tmp='extra1')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
:</p>
    <p class="pageinput">
      <input class="pagenb" type="text" name="page_extra1" size="50" maxlength="255" value="<?php echo $this->_tpl_vars['page_extra1']; ?>
"/>
    </p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext"><?php echo ((is_array($_tmp='extra2')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
:</p>
    <p class="pageinput">
      <input class="pagenb" type="text" name="page_extra2" size="50" maxlength="255" value="<?php echo $this->_tpl_vars['page_extra2']; ?>
"/>
    </p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext"><?php echo ((is_array($_tmp='extra3')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
:</p>
    <p class="pageinput">
      <input class="pagenb" type="text" name="page_extra3" size="50" maxlength="255" value="<?php echo $this->_tpl_vars['page_extra3']; ?>
"/>
    </p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext"></p>
    <p class="pageinput">
      <input type="submit" name="submit" value="<?php echo ((is_array($_tmp='submit')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
" class="pagebutton" />
      <input type="submit" name="cancel" value="<?php echo ((is_array($_tmp='cancel')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
" class="pagebutton" />
    </p>
  </div>

</form>
</div>
<p class="pageback"><a class="pageback" href="<?php echo $this->_tpl_vars['backurl']; ?>
">&#171; <?php echo ((is_array($_tmp='back')) ? $this->_run_mod_handler('lang', true, $_tmp) : lang($_tmp)); ?>
</a></p>;
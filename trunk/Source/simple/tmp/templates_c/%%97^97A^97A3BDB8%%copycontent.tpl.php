<?php /* Smarty version 2.6.26, created on 2011-11-13 07:44:31
         compiled from copycontent.tpl */ ?>
<div class="pagecontainer">

  <?php echo $this->_tpl_vars['showheader']; ?>


  <fieldset>
    <legend><strong><?php echo $this->_tpl_vars['lang_copyfrom']; ?>
:</strong></legend>

    <div class="pageoverflow">
      <p class="pagetext"><?php echo $this->_tpl_vars['lang_pageid']; ?>
:</p>
      <p class="pageinput"><?php echo $this->_tpl_vars['fromid']; ?>
</p>
    </div>

    <div class="pageoverflow">
      <p class="pagetext"><?php echo $this->_tpl_vars['lang_pagealias']; ?>
:</p>
      <p class="pageinput"><?php echo $this->_tpl_vars['fromobj']->Alias(); ?>
</p>
    </div>

    <div class="pageoverflow">
      <p class="pagetext"><?php echo $this->_tpl_vars['lang_pagetitle']; ?>
:</p>
      <p class="pageinput"><?php echo $this->_tpl_vars['fromobj']->Name(); ?>
</p>
    </div>

    <div class="pageoverflow">
      <p class="pagetext"><?php echo $this->_tpl_vars['lang_pagemenutext']; ?>
:</p>
      <p class="pageinput"><?php echo $this->_tpl_vars['fromobj']->MenuText(); ?>
</p>
    </div>

    <div class="pageoverflow">
      <p class="pagetext"><?php echo $this->_tpl_vars['lang_pagetype']; ?>
:</p>
      <p class="pageinput"><?php echo $this->_tpl_vars['fromobj']->FriendlyName(); ?>
</p>
    </div>

    <div class="pageoverflow">
      <p class="pagetext"><?php echo $this->_tpl_vars['lang_pageparent']; ?>
:</p>
      <p class="pageinput"><?php echo $this->_tpl_vars['parentinfo']; ?>
</p>
    </div>

  </fieldset>

  <fieldset>
    <legend><strong><?php echo $this->_tpl_vars['lang_copyto']; ?>
:</strong></legend>
    <form action="copycontent.php">
    <div>
      <input type="hidden" name="<?php echo $this->_tpl_vars['cms_secure_param_name']; ?>
" value="<?php echo $this->_tpl_vars['cms_user_key']; ?>
" />
    </div>
    <div class="hidden"><input type="hidden" name="content_id" value="<?php echo $this->_tpl_vars['fromid']; ?>
" /></div>

    <?php if (isset ( $this->_tpl_vars['info_pagealias'] )): ?>
    <div class="pageoverflow">
      <p class="pagetext"><?php echo $this->_tpl_vars['lang_pagealias']; ?>
:</p>
      <p class="pageinput"><input type="text" name="to_alias" size="50" maxlength="255" value="" />
        <br/><?php echo $this->_tpl_vars['info_pagealias']; ?>

	<?php if (isset ( $this->_tpl_vars['info_alias'] )): ?><br/><?php echo $this->_tpl_vars['info_alias']; ?>
<?php endif; ?></p>
    </div>
    <?php endif; ?>

    <div class="pageoverflow">
      <p class="pagetext"><?php echo $this->_tpl_vars['lang_pagetitle']; ?>
:</p>
      <p class="pageinput"><input type="text" name="to_title" size="50" maxlength="255" value="<?php echo $this->_tpl_vars['fromobj']->Name(); ?>
" /></p>
    </div>

    <div class="pageoverflow">
      <p class="pagetext"><?php echo $this->_tpl_vars['lang_pagemenutext']; ?>
:</p>
      <p class="pageinput"><input type="text" name="to_menutext" size="50" maxlength="255" value="<?php echo $this->_tpl_vars['fromobj']->MenuText(); ?>
" /></p>
    </div>

    <div class="pageoverflow">
      <p class="pagetext"><?php echo $this->_tpl_vars['lang_pageparent']; ?>
:</p>
      <p class="pageinput"><?php echo $this->_tpl_vars['input_parentdropdown']; ?>
</p>
    </div>

    <?php if (isset ( $this->_tpl_vars['lang_pageaccesskey'] )): ?>
    <div class="pageoverflow">
      <p class="pagetext"><?php echo $this->_tpl_vars['lang_pageaccesskey']; ?>
:</p>
      <p class="pageinput"><input type="text" name="to_accesskey" size="5" maxlength="5" value="<?php echo $this->_tpl_vars['fromobj']->AccessKey(); ?>
" /></p>
    </div>
    <?php endif; ?>

    <div class="pageoverflow">
      <p class="pagetext">&nbsp;</p>
      <p class="pageinput"><input type="submit" name="submit" value="<?php echo $this->_tpl_vars['lang_submit']; ?>
" /><input type="submit" name="cancel" value="<?php echo $this->_tpl_vars['lang_cancel']; ?>
" /></p>
    </div>
    </form>
  </fieldset>

</div>
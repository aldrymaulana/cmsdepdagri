<?php /* Smarty version 2.6.26, created on 2011-11-13 17:15:25
         compiled from module_file_tpl:MicroTiny%3Bfilepicker.tpl */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $this->_tpl_vars['filepickertitle']; ?>
</title>
<link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rooturl']; ?>
/modules/MicroTiny/filepicker.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $this->_tpl_vars['rooturl']; ?>
/modules/MicroTiny/tinymce/themes/advanced/skins/default/dialog.css" />
<script language="javascript" type="text/javascript" src="<?php echo $this->_tpl_vars['rooturl']; ?>
/modules/MicroTiny/tinymce/tiny_mce_popup.js"></script>
<?php echo '
<script language="javascript" type="text/javascript">

function SubmitElement(filename) {
  var URL = filename;
  var win = tinyMCEPopup.getWindowArg("window");

  // insert information now
  win.document.getElementById(tinyMCEPopup.getWindowArg("input")).value = URL;
'; ?>

  
  <?php if ($this->_tpl_vars['isimage'] == '1'): ?>
  // for image browsers: update image dimensions
  if (win.ImageDialog.getImageData) win.ImageDialog.getImageData();
  if (win.ImageDialog.showPreviewImage) win.ImageDialog.showPreviewImage(URL);
  <?php endif; ?> 
  
<?php echo '
   // close popup window
  tinyMCEPopup.close();
}
'; ?>

</script>
</head>
<body>
<div id="full-fp">

<div class="header">

<fieldset>
<legend><?php echo $this->_tpl_vars['youareintext']; ?>
</legend>
<h2><img src="<?php echo $this->_tpl_vars['rooturl']; ?>
/modules/MicroTiny/images/dir.gif" title="<?php echo $this->_tpl_vars['subdir']; ?>
" alt="<?php echo $this->_tpl_vars['subdir']; ?>
" />/<?php echo $this->_tpl_vars['subdir']; ?>
</h2>
</fieldset>

</div>
<div class="filelist">
<table width="100%">
<thead>
<tr>
<td>&nbsp;</td>
<td>&nbsp;</td>
<td width="1%" align="right" style="white-space:nowrap;"><b><?php echo $this->_tpl_vars['dimensionstext']; ?>
</b></td>
<td width="1%" align="right" style="white-space:nowrap;"><b><?php echo $this->_tpl_vars['sizetext']; ?>
</b></td>
</tr>
</thead>
  <?php $_from = $this->_tpl_vars['files']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['file']):
?>
  <tr>
  <?php if ($this->_tpl_vars['file']->isdir == '1'): ?>
    <td width="1%" align="center"><img src="<?php echo $this->_tpl_vars['rooturl']; ?>
/modules/MicroTiny/images/dir.gif" title="Dir" alt="Dir" /></td>
    <td><?php echo $this->_tpl_vars['file']->namelink; ?>
 </td>
    <td width="1%">&nbsp;</td>
    <td width="1%">&nbsp;</td>
    <td width="1%">&nbsp;</td>
  <?php else: ?>
    <td align="right">
    <?php if ($this->_tpl_vars['filepickerstyle'] == 'filename'): ?>
      <?php if ($this->_tpl_vars['file']->isimage == '1'): ?>
      <img src="<?php echo $this->_tpl_vars['rooturl']; ?>
/modules/MicroTiny/images/images.gif" title="<?php echo $this->_tpl_vars['file']->name; ?>
" alt="<?php echo $this->_tpl_vars['file']->name; ?>
" />
      <?php elseif ($this->_tpl_vars['file']->fileicon != ""): ?>
        <?php echo $this->_tpl_vars['file']->fileicon; ?>
      <?php else: ?>

      <img src="<?php echo $this->_tpl_vars['rooturl']; ?>
/modules/MicroTiny/images/fileicon.gif" title="<?php echo $this->_tpl_vars['file']->name; ?>
" alt="<?php echo $this->_tpl_vars['file']->name; ?>
" />
      <?php endif; ?>
    <?php else: ?>
      <div class="thumbnail">
      <a title="<?php echo $this->_tpl_vars['file']->name; ?>
" href='#' onclick='SubmitElement("<?php echo $this->_tpl_vars['file']->fullurl; ?>
")'>
      <?php if (isset ( $this->_tpl_vars['file']->thumbnail ) && $this->_tpl_vars['file']->thumbnail != ''): ?>
      
        <?php echo $this->_tpl_vars['file']->thumbnail; ?>

      <?php else: ?>
      
        <?php if ($this->_tpl_vars['file']->isimage == '1'): ?>        
        <img src="<?php echo $this->_tpl_vars['rooturl']; ?>
/modules/MicroTiny/images/images.gif" title="<?php echo $this->_tpl_vars['file']->name; ?>
" alt="<?php echo $this->_tpl_vars['file']->name; ?>
" />
        <?php elseif ($this->_tpl_vars['file']->fileicon != ""): ?>
        <?php echo $this->_tpl_vars['file']->fileicon; ?>
        <?php else: ?>
        <img src="<?php echo $this->_tpl_vars['rooturl']; ?>
/modules/MicroTiny/images/fileicon.gif" title="<?php echo $this->_tpl_vars['file']->name; ?>
" alt="<?php echo $this->_tpl_vars['file']->name; ?>
" />
        <?php endif; ?>
      <?php endif; ?>
      </a>
      </div>
    <?php endif; ?>
    </td>
    <td align="left">
       <a  title="<?php echo $this->_tpl_vars['file']->name; ?>
" href='#' onclick='SubmitElement("<?php echo $this->_tpl_vars['file']->fullurl; ?>
")'>
     <?php echo $this->_tpl_vars['file']->name; ?>

       </a>
    </td>
    <td width="1%" align="right"><?php echo $this->_tpl_vars['file']->dimensions; ?>
</td>
    <td width="1%" align="right"><?php echo $this->_tpl_vars['file']->size; ?>
</td>
    <td width="1%" align="right"><?php echo $this->_tpl_vars['file']->deletelink; ?>
</td>
  <?php endif; ?>
  </tr>
  <?php endforeach; endif; unset($_from); ?>
<tr><td colspan="4">&nbsp;</td></tr>
</table>
</div>
</div><!--end full-fp-->
</body>
</html>
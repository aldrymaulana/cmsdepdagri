<?php /* Smarty version 2.6.26, created on 2011-11-12 04:15:01
         compiled from tpl_body:16 */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'anchor', 'tpl_body:16', 7, false),array('function', 'sitename', 'tpl_body:16', 19, false),array('function', 'cms_selflink', 'tpl_body:16', 22, false),array('function', 'menu', 'tpl_body:16', 31, false),array('function', 'search', 'tpl_body:16', 38, false),array('function', 'breadcrumbs', 'tpl_body:16', 48, false),array('function', 'content', 'tpl_body:16', 60, false),array('function', 'news', 'tpl_body:16', 65, false),array('function', 'print', 'tpl_body:16', 78, false),array('function', 'title', 'tpl_body:16', 79, false),array('function', 'global_content', 'tpl_body:16', 117, false),)), $this); ?>
<?php $this->_cache_serials['E:\WEB\CMSDepdagri\Source\simple\tmp\templates_c\%%5A^5A7^5A71AA6A%%tpl_body%3A16.inc'] = '6a86799e64eeb41ade65e1390a12d148'; ?>
  <body>
    <div id="pagewrapper">

      <ul class="accessibility">
        <li><?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#0}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','0');echo smarty_cms_function_anchor(array('anchor' => 'menu_vert','title' => 'Skip to navigation','accesskey' => 'n','text' => 'Skip to navigation'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#0}'; endif;?>
</li>
        <li><?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#1}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','1');echo smarty_cms_function_anchor(array('anchor' => 'main','title' => 'Skip to content','accesskey' => 's','text' => 'Skip to content'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#1}'; endif;?>
</li>
      </ul>

      <hr class="accessibility" />

      <div id="header">

        <h2 class="headright"><?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#2}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','2');echo smarty_cms_function_sitename(array(), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#2}'; endif;?>
</h2>

        <h1><?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#3}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','3');echo smarty_cms_function_cms_selflink(array('dir' => 'start','text' => ($this->_tpl_vars['sitename'])), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#3}'; endif;?>
</h1>        
        <hr class="accessibility" />
      </div>

      <div id="menu_vert">
        <h2 class="accessibility">Navigation</h2>
        <?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#4}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','4');echo smarty_cms_function_menu(array('loadprops' => 0,'template' => 'cssmenu.tpl'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#4}'; endif;?>

        <hr class="accessibility" />
      </div>

      <div id="search">
      <?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#5}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','5');echo smarty_cms_function_search(array(), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#5}'; endif;?>

      </div>

      <div class="crbk">

        <div class="breadcrumbs">
<img src='uploads/lastevent.png'>
        <?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#6}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','6');echo smarty_cms_function_breadcrumbs(array('starttext' => 'You are here','root' => 'Home','delimiter' => '&raquo;'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#6}'; endif;?>

          <hr class="accessibility" />
        </div>
      </div>

      <div id="content">

        <div id="sidebar">
          <div id="sidebarb">
          <?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#7}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','7');echo smarty_cms_function_content(array('block' => 'Sidebar'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#7}'; endif;?>


            <div id="news">
              <h2>News</h2>
              <?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#8}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','8');echo smarty_cms_function_news(array('number' => '3','detailpage' => 'news'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#8}'; endif;?>

            </div>

          </div>
        </div>

        <div class="back1">
          <div class="back2">
            <div class="back3">
              <div id="main">
                <div style="float: right;"><?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#9}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','9');echo smarty_cms_function_print(array('showbutton' => true,'script' => true), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#9}'; endif;?>
</div>
                <h2><?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#10}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','10');echo smarty_cms_function_title(array(), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#10}'; endif;?>
</h2>
                <?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#11}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','11');echo smarty_cms_function_content(array(), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#11}'; endif;?>

                <br />
            <div class="right49">
              <p><?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#12}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','12');echo smarty_cms_function_anchor(array('anchor' => 'main','text' => '^ Top'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#12}'; endif;?>
</p>
            </div>
            <div class="left49">
              <p> <?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#13}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','13');echo smarty_cms_function_cms_selflink(array('dir' => 'previous','label' => "Previous page: "), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#13}'; endif;?>


              <br />
              <?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#14}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','14');echo smarty_cms_function_cms_selflink(array('dir' => 'next'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#14}'; endif;?>

              </p>
            </div>

                <hr class="accessibility" />
                <div class="clear"></div>
              </div>
            </div>
          </div>
        </div>

      </div>

      <div class="footback">
        <div id="footer">
          <div id="fooleft">
          <?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#15}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','15');echo smarty_cms_function_menu(array('loadprops' => 0), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#15}'; endif;?>

          </div>
          <div id="footrt">
          <?php if ($this->caching && !$this->_cache_including): echo '{nocache:6a86799e64eeb41ade65e1390a12d148#16}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('6a86799e64eeb41ade65e1390a12d148','16');echo smarty_cms_function_global_content(array('name' => 'footer'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:6a86799e64eeb41ade65e1390a12d148#16}'; endif;?>

          </div>
          <div class="clear"></div>
        </div>
      </div>

    </div>

  </body>
</html>
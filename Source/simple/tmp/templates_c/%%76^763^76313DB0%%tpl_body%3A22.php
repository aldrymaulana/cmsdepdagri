<?php /* Smarty version 2.6.26, created on 2011-10-29 05:37:09
         compiled from tpl_body:22 */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'anchor', 'tpl_body:22', 7, false),array('function', 'cms_selflink', 'tpl_body:22', 18, false),array('function', 'search', 'tpl_body:22', 23, false),array('function', 'menu', 'tpl_body:22', 32, false),array('function', 'breadcrumbs', 'tpl_body:22', 53, false),array('function', 'news', 'tpl_body:22', 69, false),array('function', 'cms_version', 'tpl_body:22', 71, false),array('function', 'cms_versionname', 'tpl_body:22', 71, false),array('function', 'print', 'tpl_body:22', 84, false),array('function', 'title', 'tpl_body:22', 90, false),array('function', 'content', 'tpl_body:22', 91, false),array('function', 'global_content', 'tpl_body:22', 139, false),)), $this); ?>
<?php $this->_cache_serials['E:\WEB\CMS\simple\tmp\templates_c\%%76^763^76313DB0%%tpl_body%3A22.inc'] = 'b9cc0bff85cdf5b839f16d05feb25c7c'; ?>
  <body>
    <div id="ncleanblue">
      <div id="pagewrapper" class="core-wrap-960 core-center">
        <ul class="accessibility">
          <li><?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#0}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','0');echo smarty_cms_function_anchor(array('anchor' => 'menu_vert','title' => 'Skip to navigation','accesskey' => 'n','text' => 'Skip to navigation'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#0}'; endif;?>
</li>
          <li><?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#1}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','1');echo smarty_cms_function_anchor(array('anchor' => 'main','title' => 'Skip to content','accesskey' => 's','text' => 'Skip to content'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#1}'; endif;?>
</li>
        </ul>
        <hr class="accessibility" />

        <div id="header" class="util-clearfix">
          <div id="logo" class="core-float-left">
            <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#2}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','2');echo smarty_cms_function_cms_selflink(array('dir' => 'start','text' => ($this->_tpl_vars['sitename'])), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#2}'; endif;?>

          </div>
          
          <div id="search" class="core-float-right">
            <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#3}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','3');echo smarty_cms_function_search(array('search_method' => 'post'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#3}'; endif;?>

          </div>
          <span class="util-clearb">&nbsp;</span>
          
          <h2 class="accessibility util-clearb">Navigation</h2>
          <div class="page-menu util-clearfix">
          <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#4}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','4');echo smarty_cms_function_menu(array('loadprops' => 0,'template' => 'cssmenu_ulshadow.tpl'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#4}'; endif;?>

          </div>
          <hr class="accessibility util-clearb" />

        </div>

        <div id="content" class="util-clearfix"> 

          
          <div id="bar" class="util-clearfix">
            <div class="breadcrumbs core-float-right">
              <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#5}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','5');echo smarty_cms_function_breadcrumbs(array('starttext' => 'You are here','root' => 'Home','delimiter' => '&raquo;'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#5}'; endif;?>

            </div>

            <hr class="accessibility util-clearb" />
          </div>

          <div id="left" class="core-float-left">
            <div class="sbar-top">
              <h2 class="sbar-title">News</h2>
            </div>
            <div class="sbar-main">
              <div id="news">
              <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#6}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','6');echo smarty_cms_function_news(array('number' => '3','detailpage' => 'news'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#6}'; endif;?>

              </div>
              <img class="screen" src="uploads/NCleanBlue/screen-1.6.jpg" width="139" height="142" title="CMS - <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#7}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','7');echo smarty_cms_function_cms_version(array(), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#7}'; endif;?>
 - <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#8}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','8');echo smarty_cms_function_cms_versionname(array(), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#8}'; endif;?>
" alt="CMS - <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#9}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','9');echo smarty_cms_function_cms_version(array(), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#9}'; endif;?>
 - <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#10}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','10');echo smarty_cms_function_cms_versionname(array(), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#10}'; endif;?>
" />
 
            </div>
            <span class="sbar-bottom">&nbsp;</span> 
          </div>

          <div id="main"  class="core-float-right">

            <div class="main-top">
              <div class="print core-float-right">
                <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#11}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','11');echo smarty_cms_function_print(array('showbutton' => true), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#11}'; endif;?>

              </div>
            </div> 
            
            <div class="main-main util-clearfix">
              <h1 class="title"><?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#12}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','12');echo smarty_cms_function_title(array(), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#12}'; endif;?>
</h1>
            <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#13}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','13');echo smarty_cms_function_content(array(), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#13}'; endif;?>

            </div>
            
            <div class="main-bottom">
              <div class="right49 core-float-right">
              <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#14}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','14');echo smarty_cms_function_anchor(array('anchor' => 'main','text' => '^&nbsp;&nbsp;Top'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#14}'; endif;?>

              </div>
              <div class="left49 core-float-left">
                <span>
                  <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#15}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','15');echo smarty_cms_function_cms_selflink(array('dir' => 'previous','label' => "Previous page: "), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#15}'; endif;?>
&nbsp;
                </span>
                <span>
                  <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#16}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','16');echo smarty_cms_function_cms_selflink(array('dir' => 'next'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#16}'; endif;?>
&nbsp;
                </span>
              </div>

              <hr class="accessibility" />
            </div>

          </div>

        </div>

      </div>
      <span class="util-clearb">&nbsp;</span>
      
      <div id="footer-wrapper">
        <div id="footer" class="core-wrap-960">
          <div class="block core-float-left">
            <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#17}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','17');echo smarty_cms_function_menu(array('loadprops' => 0,'template' => 'minimal_menu.tpl','number_of_levels' => '1'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#17}'; endif;?>

          </div>
          
          <div class="block core-float-left">
            <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#18}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','18');echo smarty_cms_function_menu(array('loadprops' => 0,'template' => 'minimal_menu.tpl','start_level' => '2'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#18}'; endif;?>

          </div>
          
          <div class="block cms core-float-left">
            <?php if ($this->caching && !$this->_cache_including): echo '{nocache:b9cc0bff85cdf5b839f16d05feb25c7c#19}'; endif;$_cache_attrs =& $this->_smarty_cache_attrs('b9cc0bff85cdf5b839f16d05feb25c7c','19');echo smarty_cms_function_global_content(array('name' => 'footer'), $this);if ($this->caching && !$this->_cache_including): echo '{/nocache:b9cc0bff85cdf5b839f16d05feb25c7c#19}'; endif;?>

          </div>
          
          <span class="util-clearb">&nbsp;</span>
        </div>
      </div>
    </div>
  </body>
</html>
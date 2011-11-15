<?php
#-------------------------------------------------------------------------------
#
# Module : AdvancedContent (c) 2010-2011 by Georg Busch (georg.busch@gmx.net)
#          a content management tool for CMS Made Simple
#          The projects homepage is http://dev.cmsmadesimple.org/projects/content2/
#          CMS Made Simple is (c) 2004-2011 by Ted Kulp (wishy@cmsmadesimple.org)
#          The projects homepage is: http://www.cmsmadesimple.org
# Version: 0.9.1
# File   : method.upgrade.php
# Purpose: performs a module upgrade
# License: GPL
#
#-------------------------------------------------------------------------------

if(!is_object(cmsms())) exit;

$current_version = $oldversion;
$db              =& $this->GetDb();

switch($current_version)
{
	case '0.8':
		$this->SetPreference('switch_redirect_params', 1);
		$current_version = '0.8.1';
		
	case '0.8.1':

		$this->SetTemplate('multi_input_SampleTemplate (since version 0.9)',
'<div class="pageoverflow">
<p>
{foreach from=$inputs item=elm}
	{$elm->GetBlockProperty(\'label\')}:&nbsp;{$elm->GetBlockInput()}&nbsp;
{/foreach}
</p>
</div>');
	
		$current_version = '0.9';
}

?>

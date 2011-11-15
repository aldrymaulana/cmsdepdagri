<?php
#-------------------------------------------------------------------------------
#
# Module : AdvancedContent (c) 2010-2011 by Georg Busch (georg.busch@gmx.net)
#          a content management tool for CMS Made Simple
#          The projects homepage is dev.cmsmadesimple.org/projects/content2/
#          CMS Made Simple is (c) 2004-2011 by Ted Kulp
#          The projects homepage is: cmsmadesimple.org
# Version: 0.9.1
# File   : event.Core.ContentEditPost.php
# Purpose: copys the expand/collapse status of blocks when page is copied
# License: GPL
#
#-------------------------------------------------------------------------------

if(!function_exists('cmsms') || !is_object(cmsms())) exit;

cms_content_cache::clear();
#$this->smarty->clear_all_cache();
$this->smarty->clear_compiled_tpl();
if(basename($_SERVER['PHP_SELF']) == 'copycontent.php' && isset($params['content']) && is_object($params['content']) && $params['content']->Type() == 'content2')
{
	if(isset($_GET['content_id']))
	{
		$old_content_id = $_GET['content_id'];
	}
	else
	{
		$old_content_id = $params['content']->Id();
	}
	foreach($params['content']->get_content_blocks() as $contentBlock)
	{
		$this->SetItemDisplay('block', $contentBlock->GetBlockProperty('id'), $params['content']->Id(), $params['content']->TemplateId(),
			$this->GetItemDisplay('block', $contentBlock->GetBlockProperty('id'), $old_content_id, $params['content']->TemplateId(), !$contentBlock->GetBlockProperty('collapse')));
	}
	foreach($params['content']->GetBlockGroups() as $groupInfo)
	{
		$this->SetItemDisplay('group', $groupInfo['group_id'], $params['content']->Id(), $params['content']->TemplateId(),
			$this->GetItemDisplay('group', $groupInfo['group_id'], $old_content_id, $params['content']->TemplateId(), !$this->GetPreference('collapse_group_default',1)));
	}
}

?>

<?php
if (!isset($gCms)) exit;

if (! $this->CheckAccess())
	{
	return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
	}

/* -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

   Code for Gallery2Embedded "defaultadmin" admin action
   
   -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   
   Typically, this will display something from a template
   or do some other task.
   
*/
	
if(isset($params['gallery_path']) && !isset($params['cancelbutton']))
{
	$this->SetPreference('gallery_path', $params['gallery_path']);
}
	
	
if(isset($params['gallery_url']) && !isset($params['cancelbutton']))
{
	$this->SetPreference('gallery_url', $params['gallery_url']);
}

$this->smarty->assign('form_start', $this->CreateFormStart($id, 'defaultadmin', $returnid));
$this->smarty->assign('form_end',$this->CreateFormEnd());

$this->smarty->assign('gallery_path_title',$this->lang('gallery_path'));    
$this->smarty->assign('gallery_path',$this->CreateInputText($id, 'gallery_path', $this->GetPreference('gallery_path'), 80));    
$this->smarty->assign('gallery_url_title',$this->lang('gallery_url'));    
$this->smarty->assign('gallery_url',$this->CreateInputText($id, 'gallery_url', $this->GetPreference('gallery_url'), 80));    

$this->smarty->assign('submit', $this->CreateInputSubmit($id, 'submitbutton', $this->Lang('submit'))); 
$this->smarty->assign('cancel', $this->CreateInputSubmit($id, 'cancelbutton', $this->Lang('cancel'))); 

if (!$this->LoadGalleryApi())
{
  $this->smarty->assign('gallery_status', $this->lang('error_no_gallery') );
}
else 
{
	  $this->smarty->assign('gallery_status', $this->lang('gallery_installed') );
}

echo $this->ProcessTemplate('adminpanel.tpl');



?>
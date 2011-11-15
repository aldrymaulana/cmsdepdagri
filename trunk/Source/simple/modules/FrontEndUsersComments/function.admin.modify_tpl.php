<?php
/***************************************************************************
 *                              function.admin.modify_tpl.php
 *                            -------------------
 *   begin                : 14 nov. 08
 * 	 author				  : Alexandre Courtois
 *   email                : alexandre.courtois@gmail.com
 *
 ***************************************************************************/
 
if(!isset($gCms)) exit;

$db =& $gCms->GetDb();

$startForm = $this->CreateFormStart($id, 'admin_save_tpl', $returnid);

$tpl = $this->GetTemplate('FEUcomments', 'FrontEndUsersComments');
if($tpl == '') {
	$tpl = $this->GetTemplateFromFile('frontend.comments');
}
$inputTpl = $this->CreateTextArea(false, $id, $tpl,'frontendTpl');

$submit = $this->CreateInputSubmit($id, 'submit', $this->Lang('submit'));
$endform = $this->CreateFormEnd();

// Language data
$this->smarty->assign('editTpl',$this->Lang('editTpl'));
$this->smarty->assign('editTplHelp',$this->Lang('editTplHelp'));

//Form data
$this->smarty->assign('startForm', $startForm);
$this->smarty->assign('inputTpl', $inputTpl);
$this->smarty->assign('submit', $submit);
$this->smarty->assign('endForm', $endform);

echo $this->ProcessTemplate('admin.modify_tpl.tpl');
?>

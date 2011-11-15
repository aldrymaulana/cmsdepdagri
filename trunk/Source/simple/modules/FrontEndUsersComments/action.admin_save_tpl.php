<?php
/***************************************************************************
 *                              action.admin_save_tpl.php
 *                            -------------------
 *   begin                : 14 nov. 08
 * 	 author				  : Alexandre Courtois
 *   email                : alexandre.courtois@gmail.com
 *
 ***************************************************************************/
 
if(!isset($gCms)) exit;

if(isset($params['frontendTpl'])) {
	$this->SetTemplate('FEUcomments',$params['frontendTpl']);
}

// set the active tab, and a message to display
$params = array('tab_message'=> 'tplupdated', 'active_tab' => 'modify_tpl');

// redirect back to default admin page
$this->Redirect($id, 'defaultadmin', $returnid, $params);
?>

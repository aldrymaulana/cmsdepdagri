<?php
/***************************************************************************
 *                              action.admin_save_preferences.php
 *                            -------------------
 *   begin                : 14 nov. 08
 * 	 author				  : Alexandre Courtois
 *   email                : alexandre.courtois@gmail.com
 *
 ***************************************************************************/

$newParams = array();
//Error checking
if(isset($params['inputNotify']) && ($params['inputNotify'] == 1)) {
	if(strlen($params['inputNotifyAddress']) == 0) {
		$newParams = array('error'=> $this->Lang('notifyAddressUndef'), 'active_tab' => 'preferences');
	}
	//TODO: regexp email validation
	else {
		// set our preference
		$this->SetPreference('notify', isset($params['inputNotify'])?$params['inputNotify']:0);
		$this->SetPreference('notify_address', isset($params['inputNotifyAddress'])?$params['inputNotifyAddress']:'');
		$this->SetPreference('disable_html', isset($params['inputDisable_html'])?$params['inputDisable_html']:0);
		$this->SetPreference('nbCommentsPerPage_admin', isset($params['inputNbPerPage_admin'])?$params['inputNbPerPage_admin']:25);
		$this->SetPreference('moderate', isset($params['inputModerate'])?$params['inputModerate']:0);
		// set the active tab, and a message to display
		$newParams = array('tab_message'=> 'prefsupdated', 'active_tab' => 'preferences');
	}
}
// redirect back to default admin page
$this->Redirect($id, 'defaultadmin', $returnid, $newParams);
?>

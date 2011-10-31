<?php
/*======================================================================================
Module: AComments
======================================================================================*/

// Check authorisation
if ( !isset($gCms) ) exit;
check_login();

// Get db handle
$db =& $this->GetDb();
$dict = NewDataDictionary($db);
$taboptarray = array('mysql' => 'TYPE=MyISAM');

// Create comments table
$flds = '
	comment_id I KEY,
	comment_data X,
	comment_date '.CMS_ADODB_DT.',
	comment_author C(255),
	author_email C(255),
	author_website C(255),
	page_id C(255),
	module_name C(50),
	active I1,
	create_date DT,
	modified_date DT,
	comment_title C(255),
	trackback I1,
	editor I1,
	author_notify I1,
	notified I1,
	ip C(25)
';
$taboptarray = array('mysql' => 'TYPE=MyISAM');
$sqlarray = $dict->CreateTableSQL(cms_db_prefix().'module_acomments', $flds, $taboptarray);
$dict->ExecuteSQLArray($sqlarray);

// Create domain sequence table
$db->CreateSequence(cms_db_prefix().'module_acomments_seq');

// Set permission
$this->CreatePermission('Manage AComments', 'Manage AComments');

# Install template
$this->SetTemplate('default_display', $this->GetTemplateFromFile('default_display'));

// Preferences
$this->SetPreference('moderate', ''); // Spam protect off by default
$this->SetPreference('spamprotect', ''); // Captcha spam protection
$this->SetPreference('moderate', ''); // EMail address for notification by new comments
$this->SetPreference('disable_html', 1); //  Disable HTML for everyone by default
$this->SetPreference('akismet_check',0); //Disable spam checking
$this->SetPreference('enable_trackbacks',0); // Enable trackbacks
$this->SetPreference('enable_trackback_backlink_check',0); // Enable trackback link check
$this->SetPreference('enable_cookie_support',0); // Enable cookie support for restore the form values

// Events
$this->RegisterEvents();

// Write message to admin log
$this->Audit( 0, $this->Lang('friendlyname'), $this->Lang('installed',$this->GetVersion()));

// EOF
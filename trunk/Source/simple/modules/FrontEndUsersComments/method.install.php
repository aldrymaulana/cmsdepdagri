<?php

if (!isset($gCms)) exit;

$db =& $gCms->GetDb();

// mysql-specific, but ignored by other database
$table_options = array('mysql' => 'TYPE=MyISAM');

$dict = NewDataDictionary($db);

######################## TABLE  #####################
$fields = "
			comment_id I KEY,
			comment_data X,
			comment_date DT,
			comment_author_id I,
			comment_author_name C(255),
			page_id C(255),
			module_name C(50),
			active I1,
			modified_date DT
		";
$sqlarray = $dict->CreateTableSQL(cms_db_prefix()."module_feusers_comments", $fields, $table_options);
$dict->ExecuteSQLArray($sqlarray);

$db->CreateSequence(cms_db_prefix()."module_feusers_comments_seq");

// create a permission
$this->CreatePermission('Manage FrontEndUsersComments', 'Manage FrontEndUsersComments');

// Preferences
$this->SetPreference('moderate', 0);
$this->SetPreference('nbCommentsPerPage_admin', 25);
$this->SetPreference('disable_html', 1);
$this->SetPreference('notify', 0);
$this->SetPreference('notify_address', '');

# Install template
$this->SetTemplate('FEUcomments', $this->GetTemplateFromFile('frontend.comments'));
$this->SetTemplate('FEUcomments_message', $this->GetTemplateFromFile('frontend.message'));

// put mention into the admin log
$this->Audit( 0, $this->Lang('friendlyname'), $this->Lang('installed',$this->GetVersion()));

?>

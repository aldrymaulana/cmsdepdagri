<?php
	$lang["friendlyname"] = "Attachments";
	$lang["moddescription"] = "Attach anything to anything (create links between contents)";
	$lang["admindescription"] = "Attach anything to anything (create links between contents)";

// strings for ressource
	$lang["attach"] = "Attach";
	$lang["attachments"] = "Attachments";
	$lang["attachment"] = "Attachment";
	$lang["to"] = "To";
	$lang["restype"] = "Ressource Type";
	$lang["restypes"] = "Ressource Types";
	$lang["showonly"] = "Show only";
	$lang["attachedto"] = "Attached to";
	$lang["anything"] = "Anything";
	$lang["edit_attachment"] = "Edit Attachment";
	$lang["add_attachment"] = "Add Attachment";
	$lang["edit_restype"] = "Edit Ressource Type";
	$lang["add_restype"] = "Add Ressource Type";
	$lang["attachedurl"] = "Attached URL";
	$lang["attachedfile"] = "Attached File";
	$lang["attachedpage"] = "Attached Page";
	$lang["typehelp"] = "Help";
	$lang["whattodo"] = "What kind of attachment would you like to create exactly?";
	$lang["reciproc"] = "Create a link to other way around too (bidirectional link)";
	$lang["searchthistable"] = "Search this table for:";
	$lang["select_file"] = "Select File";
	$lang["type_destonly"] = 'Can this type of ressource <b>only</b> be an attachment? (it can be attached to anything, but nothing can be attached to it)';
	$lang["type_retrievecombo"] = '<u>type_retrievecombo:</u><br/>This is the code to be executed in order to retrieve the array of ressources options.<br/>
	The available variables are $gCms, $db and $type, and the results should be stored in $options (in the form $id=>$label).';
	$lang["type_retrieveitem"] = '<u>type_retrieveitem:</u><br/>This is the code to be executed when we wish to retrieve an attachment.<br/>
	The available variables are $gCms, $db, $type, $item, $id and $returnid. This could should fill the $item->ressource_name and $item->ressource_url values.';
	$lang["type_activecheck"] = '<u>type_activecheck:</u><br/>This code is executed before the ressource type is made active (for example, to check if the necessary modules are present).<br/>
	At the end of the execution, $result should hold <i>true</i> if the ressource type can be activated, and <i>false</i> if it can\'t.';	
	$lang["help_edittype"] = '
<h1>Help</h1><br/>
<p>In order to create a ressource type, you need to specify three functions that will be used to access the ressources.</p>
<br/><h2>type_retrievecombo:</h2><br/>
<p>When users create an attachment, they are offered a dropdown list to choose both contents (the attachment, and that to which it is attached) from. This function retrieves the options that will be available in the dropdown list.</p>
<p>The options should be stored in the variable $options, in the form of $options = array($id=>$label)<br/>
The available variables are $gCms, $db and $type (see below for this object\'s attributes).</p>
<p>Here is, for example, the retrievecombo code for the "News article" ressource type:</p>
<pre style="border: 2px groove Gray; padding: 5px; width: 500px;">
$query = "SELECT news_id, news_title FROM ".cms_db_prefix()."module_news";
$dbresult =& $db->Execute($query);
while ($dbresult && $row = $dbresult->FetchRow()){
	$options[$row["news_id"]] = $row["news_title"];
}
</pre>
<br/><br/><h2>type_retrieveitem:</h2><br/>
<p>When the module displays the elements attached to the content we are currently seeing, it needs for each attachment to retrieve some of the ressource\'s information to build the link that will be displayed, namely the url and the name to display.<br/>
You are given the attachment object ($item), and should fill the values $item->ressource_url and $item->ressource_name. (Other available variables are $gCms, $db, $type, $id and $returnid).</p>
<p>Here is, for example, the retrieveitem code for the "Content Page" ressource type:</p>
<pre style="border: 2px groove Gray; padding: 5px; width: 500px;">
$manager =& $gCms->GetHierarchyManager();
$node =& $manager->sureGetNodeById($item->destid);
if(!isset($node))	return false;
$content =& $node->GetContent();
$item->ressource_name = $content->Name();
$item->ressource_url = $content->getURL();
</pre>
<br/><br/><h2>type_activecheck:</h2><br/>
<p>This code is executed before the ressource type is made active. If you need to check for any necessary module, here\'s the place to do it.<br/>
At the end of the execution, $result should hold <i>true</i> if the ressource type can be activated, and <i>false</i> if it can\'t.
<p>Here is, for example, the activecheck code for the "News article" ressource type:</p>
<pre style="border: 2px groove Gray; padding: 5px; width: 500px;">
if(!isset($gCms->modules["News"]) || !$gCms->modules["News"]["active"]){
	$result = false;
}else{
	$result = true;
}
</pre>
<br/><br/><h2>$type and $item objects:</h2><br/>
<ul>
	<li>$item-&gt;attachid : id of the attachment (for internal use only)</li>
	<li>$item-&gt;name</li>
	<li>$item-&gt;sourcetype : this holds the id of the ressource type of the element <b>to which</b> something is attached</li>
	<li>$item-&gt;sourceid : id of the element <b>to which</b> something is attached (ie, content id, news article id...)</li>
	<li>$item-&gt;desttype : this holds the id of the ressource type of the attached element</li>
	<li>$item-&gt;destid : id of the attached element (ie, content id, news article id, but could also be any string, such as a filepath)</li>	
	<li>$item-&gt;ressource_type : the type object of the ressource type of the attached element</li>	
</ul><br/><br/>

<ul>
	<li>$type-&gt;typeid : id of the ressource type (for internal use only)</li>
	<li>$type-&gt;typename</li>
	<li>$type-&gt;destonly : whether or not this type can only be an attachment (nothing can be attached to it)</li>
	<li>$type-&gt;active</li>
	<li>$type-&gt;iscore : whether or not this is a core ressource type</li>
</ul>
';

	
	$lang["templatehelp"] = '<h3>Important smarty variables</h3><ul>
	<li>$restitle</li>
	<li>$itemlist (array of items)</li>
	<li>$item-&gt;name</li>
	<li>$item-&gt;ressource_name</li>
	<li>$item-&gt;ressource_url</li>
	<li>$item-&gt;ressource_type (type object)</li>
	<li>$item-&gt;ressource_type->typename</li>
</ul><br/>If the item is a file (which you can verify with<br/>{if $item-&gt;ressource_type-&gt;typename == "File"} ),<br/>it will also have the following attributes:<br/>
<ul>
	<li>$item-&gt;filename</li>
	<li>$item-&gt;ext (file extension)</li>
	<li>$item-&gt;size (size in bytes)</li>
	<li>$item-&gt;size_wformat (formated size)</li>
	<li>$item-&gt;imagesize (for images only)</li>
	<li>$item-&gt;width (for images only)</li>
	<li>$item-&gt;height (for images only)</li>
	<li>$item-&gt;filemtime (last modified, unix time)</li>
	<li>$item-&gt;modified (last modified, formated time)</li>
</ul>';

// For file fields
$lang["Remove"] = "Remove";
$lang["delete"] = "Delete";
$lang["browsefilestitle"] = "Select a file or upload a new file below.";
$lang["showingdir"] = "Showing directory";
$lang["browsefilesresize"] = "";
$lang["browsefilecurrentpath"] = "Currently seeing files in : ";
$lang["parentdir"] = "Parent Directory";
$lang["addafile"] = "Add a file";
$lang["submitting_file"] = "Please wait while your file is being uploaded...";
$lang["filename"] = "Filename";
$lang["imagesize"] = "Image size";
$lang["fileext"] = "Ext";
$lang["filesize"] = "File size";
$lang["lastmod"] = "Last modified";
$lang["fileowner"] = "Owner";
$lang["fileperms"] = "Permissions";

// strings for general fields
$lang["id"] = "id";
$lang["name"] = "Name";
$lang["active"] = "Active";

// GENERAL
$lang["activate"] = "Activate";
$lang["unactivate"] = "Turn off";
$lang["verso"] = " (verso)";
$lang["Yes"] = "Yes";
$lang["No"] = "No";
$lang["none"] = "none";
$lang["Files"] = "Files";
$lang["Urls"] = "Urls";
$lang["Actions"] = "Actions";
$lang["templates"] = "Templates";
$lang["template"] = "Template";
$lang["defaulttemplate"] = "Default template";
$lang["templatevars"] = "Template variables";
$lang["edittemplate"] = "Edit template";
$lang["addtemplate"] = "Add template";
$lang["message_deleted"] = "Element deleted";
$lang["message_modified"] = "Modification saved";
$lang["error_missginvalue"] = "One or more necessary values have not been entered.";
$lang["error_alreadyexists"] = "There is already an element bearing that name.";
$lang["error_nonamegiven"] = "You must specify a name for this ressource type.";
$lang["error_invalidcode"] = "There something wrong with the code in ";
$lang["error_invaliddest"] = "Please specify attachment.";
$lang["error_invalidsource"] = "Please specify to which content it should be attached.";
$lang["error_typeerror"] = "There was an error within the ressource type definition. Please stop using this ressource type and report this to the admin.";
$lang["prompt_deletetype"] = "You are about to delete this ressource type and all associated attachments. Do you wish to continue?";

// MODULE INTERACTION
$lang["delete"] = "Delete";
$lang["settrue"] = "Set true";
$lang["setfalse"] = "Set false";
$lang["postinstall"] = "Module Attach successfully added. You should check that the uploads/attachments/ folder has been created with the appropriate permissions.";
$lang["postuninstall"] = "Module Attach successfully removed.";
$lang["really_uninstall"] = "All links between ressources will be lost. Continue?";
$lang["uninstalled"] = "Module Attach Uninstalled.";
$lang["installed"] = "Module Attach version %s installed.";
$lang["help"] = '<h2>General</h2>
<p>Make sure the "Attach: use" permission has been given to the users!</p>
<p>First, go in the Attachments section of the content menu and create some attachments... You will be asked what kind of ressource you wish to attach to what kind of ressource, so if I want to link a Content page to a file, I would choose: Attach a "File" to a "Content Page"...</p> 
<p>Then, to display the elements attached to the current Content Page, simply add this to the template :<br/>
{cms_module module="Attach"}</p>
<p>To display the elements attached to any other ressource, you must specify some additional parameters (from_type and from_id). For example, to display the elements attached to a news article, you could add this to the news detail template:<br/>
{cms_module module="Attach" from_type="News-article" from_id=$entry->id}</p>
<br/></br><h2>Ressource types</h2></br>
<p>In order to create or edit ressource types, you will need the "Attach: admin" permission. <b>Be careful</b> with this permission! Editing ressource types means <b>editing php code</b> and possible danger to your website.</p>
<br/><br/></br><h2>CTLModuleMaker Modules</h2></br>
<p>If you would like to add a <b>CTLModuleMaker</b> module to the ressource types, use the following functions (make sure to replace NAMEOFMODULE by the name of your module, and NAMEOFLEVEL by the name of the level you wish to use).</p>
<b>retrievecombo:</b>
<pre>$themodule = $this->GetModuleInstance("NAMEOFMODULE");
if(!$themodule) return false;

$itemlist = $themodule->get_level_NAMEOFLEVEL();
foreach($itemlist as $item)   $options[$item->id] = $item->name;</pre>

<br/><br/><b>retrieveitem:</b>
<pre>$themodule = $this->GetModuleInstance("NAMEOFMODULE");
if(!$themodule) return false;

$result = $themodule->get_level_NAMEOFLEVEL(array("id"=>$item->destid,"active"=>1));
if(!isset($result[0])) return false;
$item->ressource_name = $result[0]->name;
$linkparams = array("alias"=>$result[0]->alias, "parent"=>$result[0]->parent_alias);
$item->ressource_url = $themodule->CreateLink($id,"default",$returnid,"",$linkparams,"",true, false, "", true, $themodule->BuildPrettyUrls($linkparams, $returnid));</pre>

<br/><br/><b>activecheck:</b>
<pre>if(!isset($gCms->modules["NAMEOFMODULE"]) || !$gCms->modules["NAMEOFMODULE"]["active"]){
	$result = false;
}else{
	$result = true;
}</pre><br/><br/>';

//PARAMETERS
$lang["phelp_action"] = "Only \"default\" action.";
$lang["phelp_ressourcetype"] = "Restrict the types of ressources found (you can select several using \"|\": ressourcetype=\"File|URL\" ).";
$lang["phelp_fromtype"] = "Specifies the ressource type of what attachments should be attached to.";
$lang["phelp_fromid"] = "Specifies the id of what attachments should be attached to. In the case of the current Content Page, it is not necessary to specify this.";
$lang["phelp_template"] = "Specifies the template used to display the attachments.";
$lang["phelp_orderbytype"] = "Set to true to order attachments by type.";
$lang["phelp_inline"] = "Makes the links inline.";
?>

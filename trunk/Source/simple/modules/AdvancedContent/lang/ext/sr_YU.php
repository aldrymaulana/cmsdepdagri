<?php
$lang['AdvancedContent'] = 'Napredni sadržaj';
$lang['admindescription'] = 'Advanced content type with custom fields for the add/edit page panel and some additional functions.';
$lang['advancedcontent_tabname'] = 'Napredne opcije';
$lang['installed'] = 'Modul Napredni sadržaj verzije %s je instaliran.';
$lang['uninstalled'] = 'Modul Napredni sadržaj %s je deinstaliran.';
$lang['upgraded'] = 'Module AdvancedContent upgraded to %s. ATTENTION! Consider that contentblocks or multi_inputs are no longer arrays but objects. So update your multi_input templates. (See comment when editing multi_input templates)';
$lang['postinstall'] = 'Modul Napredni sadržaj verzije %s je instaliran.';
$lang['postuninstall'] = 'Modul Napredni sadržaj %s je deinstaliran.';
$lang['confirmuninstall'] = '%sDa li zaista želite da deinstalirate modul Napredni sadržaj?';
$lang['warninguninstall'] = 'WARNING! You did not select an uninstall action in the module preferences! Make sure all pages of advanced content are reverted to the default content type or deleted before removing this module! Otherwise your may brick your CMS installation! ';
$lang['warninguninstall1'] = 'UPOZORENJE! Ovim ćete obrisati sve stranice koje su tipa Napredni sadržaj.';
$lang['warninguninstall2'] = 'NOTICE: This will revert all pages of AdvancedContent back to the default contenttype. ';
$lang['warninguninstall3'] = 'WARNING! This will revert all pages of AdvancedContent back to the default contenttype and delete all additional contentblocks (except the default content block). ';
$lang['notice_duplicatecontent'] = '<em><strong>Notice:</strong> This block is used multiple times in template. You only see the first block here.</em>';
$lang['error_basicattrib'] = '<em><strong>Notice:</strong> Cannot use basic content property name &#039;%s&#039; as value of param &#039;block&#039;. <br />This block is disabled. Check your page template and chose a different value of param &#039;block&#039;.</em>';
$lang['error_expiredate'] = 'Krajni datum mora biti veći od početnog.';
$lang['youareintext'] = 'Tekući direktorijum';
$lang['dimensions'] = 'Veličina slike';
$lang['size'] = 'Veličina datoteke';
$lang['inherit_from_parent'] = 'Nasleđuje se od roditelja';
$lang['none'] = 'ni&scaron;ta';
$lang['invalid'] = 'nevalidno';
$lang['invalid_block'] = '<em><strong>Notice:</strong> Invalid block &#039;%s&#039;.<br />Check your page template.</em>';
$lang['error_insufficient_blockparams'] = '<em><strong>Error:</strong> Insufficient params. <br />Missing param &#039;%s&#039; for block &#039;%s&#039;. Check your page template.</em>';
$lang['yes'] = 'Da';
$lang['no'] = 'Ne';
$lang['frontendaccess'] = 'Frontend access';
$lang['redirectpage'] = 'Page to redirect to if no permission to access the page';
$lang['showloginform'] = 'Prikaži formu za prijavljivanje';
$lang['registeredusers'] = 'Samo za registrovane korisnike';
$lang['block'] = 'Blok';
$lang['useexpiredate'] = 'Koristi datum isteka';
$lang['startdate'] = 'Početni datum';
$lang['enddate'] = 'Krajnji datum';
$lang['blockcontent'] = 'Blok sadržaja';
$lang['setpageinactive'] = 'Podesi status stranice na &quot;Neaktivna&quot;';
$lang['deletepage'] = 'Obri&scaron;i stranicu';
$lang['uninstallaction'] = 'Deinstaliraj akciju';
$lang['setcontent1'] = 'Set all Pages of &#039;AdvancedContent&#039; back to type &#039;Content&#039;';
$lang['setcontent2'] = 'Set all Pages of &#039;AdvancedContent&#039; back to type &#039;Content&#039; and remove AdvancedContent blocks';
$lang['prefsupdated'] = 'Nova pode&scaron;avanja modula su sačuvana';
$lang['success'] = 'OK';
$lang['error'] = 'Gre&scaron;ka';
$lang['deletepages'] = 'Obri&scaron;i sve stranice čiji je tip &quot;Napredni sadržaj&quot;';
$lang['importpages'] = 'Set all Pages of type &#039;%s&#039; to type &#039;%s&#039;.';
$lang['confirmimport'] = 'Do you really want to change the content type of all content pages?';
$lang['toggle_message'] = 'Sakrij ovu poruku';
$lang['contentsettings'] = 'Podrazumevana pode&scaron;avanja za Napredni sadržaj';
$lang['redirectparams'] = 'URL params to append when redirecting';
$lang['evaluatesmarty'] = 'Use smarty to process the params';
$lang['error_loading_module'] = '<em><strong>Error:</strong> Could not load module &#039;%s&#039;. (Defined for block &#039;%s&#039; in your page template.)</em>';
$lang['error_contentblock_support'] = '<em><strong>Error:</strong> Module &#039;%s&#039; does not support contentblocks. (Defined for block &#039;%s&#039; in your page template.)</em>';
$lang['success_importpages'] = 'All pages of type &#039;%s&#039; succesfully changed to &#039;%s&#039;';
$lang['show_advancedcontent_options'] = 'Show AdvancedContent options tab';
$lang['display_settings'] = '%s display settings';
$lang['save_collapse_status'] = 'Save collpase status of %s';
$lang['content_blocks'] = 'blokova sadržaja';
$lang['block_message'] = 'content block message';
$lang['block_groups'] = 'grupe blokova';
$lang['collapse_default'] = 'Collapse %s by default';
$lang['per_page'] = 'po stranici';
$lang['per_template'] = 'po &scaron;ablono';
$lang['both1'] = 'template OR page ';
$lang['both2'] = 'template AND page';
$lang['content'] = 'Sadržaj';
$lang['content2'] = 'Napredni sadržaj';
$lang['prefs'] = 'Preferencije';
$lang['multi_input'] = 'Vi&scaron;estruki unosi';
$lang['multi_input_tpl'] = '&Scaron;abloni vi&scaron;estrukih unosa';
$lang['add_multi_input'] = 'Add new multi input';
$lang['add_multi_input_tpl'] = 'Add new multi input template';
$lang['input_id'] = 'ID oznaka unosa';
$lang['input_fields'] = 'Polja za unos';
$lang['tpl_name'] = 'Naziv &scaron;ablona';
$lang['error_template'] = 'Template is a required field and may not be empty';
$lang['error_input_fields'] = 'Input fields is a required field and may not be empty.';
$lang['error_input_id'] = 'No input id given or input id already exists.';
$lang['error_input_id_exists'] = 'Input ID is already in use. Choose a different one. (must be unique)';
$lang['multi_input_added'] = 'Multi Input added.';
$lang['multi_input_deleted'] = 'Multi Input deleted.';
$lang['multi_input_updated'] = 'Multi Input updated.';
$lang['multi_input_tpl_added'] = 'Multi Input template added.';
$lang['multi_input_tpl_updated'] = 'Multi Input template updated.';
$lang['multi_input_tpl_deleted'] = 'Multi Input template deleted.';
$lang['delete_selected'] = 'Obri&scaron;i izabrane stavke';
$lang['confirm_delete'] = 'Do you really want do delete this item?';
$lang['confirm_delete_selected'] = 'Do you really want do delete the selected items?';
$lang['hide_content'] = 'None (just hide the content)';
$lang['hide_menu_item'] = 'Sakrij iz menija';
$lang['loggedout'] = 'ukoliko je odjavljen';
$lang['loggedin'] = 'ukoliko je prijavljen';
$lang['aftercurrdate'] = 'nakon tekućeg datuma';
$lang['afterstartdate'] = 'nakon početnog datuma';
$lang['minutes'] = 'minuta';
$lang['hours'] = 'sati';
$lang['days'] = 'dana';
$lang['weeks'] = 'sedmica';
$lang['months'] = 'meseci';
$lang['years'] = 'godina';
$lang['switch_params'] = 'Set all &#039;%s&#039; to &#039;%s&#039;.';
$lang['feu_params'] = 'Parameters for the FrontEndUsers module';
$lang['custom_params'] = 'Custom URL params to append when redirecting';
$lang['confirm_switchparams'] = 'Do you really want to change the content property \&#039;%s\&#039; of all pages to \&#039;%s\&#039;?';
$lang['success_switchparams'] = 'Sva svojstva izmenjena';
$lang['custom_blocktypes'] = 'Custom blocktypes';
$lang['plugins'] = 'Dodaci';
$lang['help_tpl_vars'] = '<p><strong>Template vars:</strong></p>
<p><pre><code>{\$inputs}</code></pre> is an array that contains all defined input elements of that multi input block.<br />
Each input element is an object that contains all its params. <br />
See module help for more info.<br />
To access the params use the following syntax:<br />
</p>
<pre><code>{foreach from=$inputs item=elm}
	{$elm->GetBlockProperty(&#039;label&#039;)}:&nbsp;{$elm->GetBlockInput()}&nbsp;
{/foreach}</code></pre>';
$lang['utma'] = '156861353.933673340.1320437161.1320576045.1320582535.5';
$lang['utmz'] = '156861353.1320567601.3.3.utmcsr=feedburner|utmccn=Feed: cmsmadesimple/blog (CMS Made Simple)|utmcmd=feed';
$lang['qca'] = 'P0-91463818-1318971343774';
$lang['utmb'] = '156861353';
$lang['utmc'] = '156861353';
?>
<?php
$lang['addedit_commentform_template'] = 'Ajouter/&eacute;diter le gabarit de formulaire des commentaires&nbsp;';
$lang['addedit_detail_template'] = 'Ajouter/&eacute;diter le gabarit de d&eacute;tail';
$lang['addedit_ratings_template'] = 'Ajouter/&eacute;diter le gabarit de notation';
$lang['addedit_summary_template'] = 'Ajouter/&eacute;diter le gabarit de sommaire';
$lang['ask_delete_field'] = '&Ecirc;tes-vous certain de vouloir supprimer cette d&eacute;finition de champ ?';
$lang['ask_really_uninstall'] = '&Ecirc;tes-vous certain de vouloir faire cela ? Continuer supprimera de fa&ccedil;on irr&eacute;m&eacute;diable toutes les donn&eacute;es associ&eacute;es &agrave; ce module.';
$lang['auto'] = 'Auto';
$lang['cancel'] = 'Annuler';
$lang['confirm_bulk_operations'] = '&Ecirc;tes-vous certain(e) de vouloir continuer les op&eacute;rations selectionn&eacute;es sur ces commentaires ?';
$lang['confirm_delete_comment'] = '&Ecirc;tes-vous certain(e) de vraiment vouloir supprimer ce commentaire ?';
$lang['count'] = 'Compte';
$lang['delete'] = 'Supprimer';
$lang['delete_this_field'] = 'Supprimer cette d&eacute;finition de champ';
$lang['draft'] = 'Brouillon';
$lang['edit'] = 'Editer';
$lang['edit_this_field'] = 'Editer cette d&eacute;finition de champ';
$lang['error_alreadyvoted'] = 'Vous avez d&eacute;j&agrave; vot&eacute; pour cet &eacute;l&eacute;ment';
$lang['error_bulk_nothingselected'] = 'Aucun commentaires n&#039;ont &eacute;t&eacute; s&eacute;lectionn&eacute;s pour effectuer une op&eacute;ration en s&eacute;rie';
$lang['error_bulk_operation_failed'] = 'Echec de l&#039;op&eacute;ration en s&eacute;rie';
$lang['error_captchafailed'] = 'Le texte entr&eacute; ne correspond pas &agrave; l&#039;image captcha fournie';
$lang['error_comment_update_failed'] = 'Mise &agrave; jour du commentaire &eacute;chou&eacute;';
$lang['error_dberror'] = 'Erreur de base de donn&eacute;e';
$lang['error_emailinvalid'] = 'L&#039;adresse courriel entr&eacute;e est invalide';
$lang['error_emptyemail'] = 'Vous devez fournir une adresse de courriel';
$lang['error_emptycomment'] = 'Vous devez &eacute;crire un commentaire';
$lang['error_emptyname'] = 'Vous devez &eacute;crire votre nom';
$lang['error_emptytitle'] = 'Vous devez &eacute;crire un titre';
$lang['error_invalidrating'] = 'Notation invalide';
$lang['error_nameexists'] = 'Un objet avec ce m&ecirc;me nom existe d&eacute;j&agrave;';
$lang['error_missingvalue'] = 'Une valeur obligatoire est manquante : %s';
$lang['error_missingparam'] = 'Un param&egrave;tre obligatoire est manquant';
$lang['error_spam'] = 'Ce message a &eacute;t&eacute; identifi&eacute; comme spam !';
$lang['fieldtype_0'] = 'Texte';
$lang['fieldtype_1'] = 'Adresse de courriel';
$lang['fieldtype_2'] = 'Zone de texte';
$lang['fieldtype_3'] = 'D&eacute;roulant';
$lang['fieldtype_4'] = 'S&eacute;lection multiple';
$lang['friendlyname'] = 'Commentaires (CG)';
$lang['help'] = '<h3>Que fait ce module ?</h3>
<p>Ce module apporte un m&eacute;canisme complet de commentaires et de notation d&#039;articles ou de pages (les utilisateurs du site ont la possibilit&eacute; de faire un retour (feedback) sur les pages de votre site web, cela inclue la possibilit&eacute; pour les visiteurs de laisser des commentaires, et optionnellement de voter au sujet de l&#039;item).</p>
<h3>Fonctions</h3>
<ul>
<li>Mod&eacute;ration - Optionnellement tous les commentaires peuvent &ecirc;tre marqu&eacute;s &amp;quot;brouillon&amp;quot; afin qu&#039;ils soient vis&eacute;s par un administrateur avant affichage sur le site.</li>
<li>Anti-Spam - Optionnellement, tous les commentaires peuvent &ecirc;tre test&eacute;s par <a href="http://www.akismet.com">akismet</a> pour d&eacute;tecter le spam</li>
<li>Captcha - Optionnellement, une validation par le visiteur peut &ecirc;tre demand&eacute;e &agrave; chaque soumission de commentaire, le visiteur doit alors recopier dans un formulaire un texte al&eacute;atoirement g&eacute;n&eacute;r&eacute;.</li>
<li>Notifications des admins - les administrateurs peuvent &ecirc;tre notifi&eacute;s par courriel lors de nouveaux commentaires.</li>
<li>Notifications des utilisateurs- Les visiteurs peuvent choisir d&#039;&ecirc;tre notifi&eacute;s par courriel sur un &eacute;l&eacute;ment sur lequel ils ont d&eacute;j&agrave; post&eacute; un commentaire.</li>
<li>Champs personnalis&eacute;s - Les administrateurs peuvent d&eacute;finir plusieurs champs optionnels &agrave; remlir par les visiteurs quand ils commentent.</li>
<li>Gabarits personnalis&eacute;s - Le rendu est g&eacute;r&eacute; par les gabarits smarty.  Vous pouvez donc cr&eacute;er plusieurs versions de vos gabarits.</li>
<li><strong>Bien plus...</strong></li>
</ul>
<h3>Comment l&#039;utiliser ?</h3>
<h4>Appeller CGFeedback sur une page</h4>
<p>Le plus simple est d&#039;utiliser cette balise : <code>{CGFeedback}</code>. Cela va cr&eacute;er un formulaire de commentaire pour vos visiteurs sur la page. Pour afficher les commentaires, vous ajouterez par exemple un tag comme celui-ci : {CGFeedback action=&#039;summary&#039;}. Placez le sous le premier tag. Les tags peuvent &ecirc;tre aussi plac&eacute;s dans les gabarits de page ou les gabarits de module</p>
<h4>Appeller CGFeedback depuis le module News.</h4>
<p>CGFeedback peut &ecirc;tre utilis&eacute; directement depuis le module News pour entrer des commentaires li&eacute;s &agrave; un article particulier.  Pour ce faire, entrez un code comme : <code>{CGFeedback key1=&amp;quot;News&amp;quot; key2=$entry->id}</code> dans le gabarit voulu. Pour afficher ces commentaires, maintenant utilisez : <code>{CGFeedback key1=&amp;quot;News&amp;quot; key2=$entry->id action=&#039;summary&#039;}</code></p>
<p>Similar techniques can be used to allow CGFeedback to interact with almost any other module in limitless ways.</p>
<p>Additional parameters can be used to further customize the behaviour and output of the module.  You are encouraged to explore the parameters as described below, and try them.</p>
<h3>Modules compl&eacute;mentaires</h3>
<p>Pour le Captcha, vous devez avoir la derni&egrave;re version du module Captcha install&eacute;e (version 0.4 ou sup&eacute;rieure).</p>
<p>Pour Akismet vous devez avoir la derni&egrave;re version de AkismetCheck install&eacute;e (version 0.2 ou sup&eacute;rieure).</p>
<h3>Support</h3>
<p>This module does not include commercial support. However, there are a number of resources available to help you with it:</p>
<ul>
<li>For the latest version of this module, FAQs, or to file a Bug Report or buy commercial support, please visit calguy\&#039;s
module homepage at <a href="http://techcom.dyndns.org">techcom.dyndns.org</a>.</li>
<li>Additional discussion of this module may also be found in the <a href="http://forum.cmsmadesimple.org">CMS Made Simple Forums</a>.</li>
<li>The author, calguy1000, can often be found in the <a href="irc://irc.freenode.net/#cms">CMS IRC Channel</a>.</li>
<li>Lastly, you may have some success emailing the author directly.</li>  
</ul>
<h3>Copyright and License</h3>
<p>Copyright &amp;copy; 2008, Robert Campbel <a href="mailto:calguy1000@cmsmadesimple.org">&amp;lt;calguy1000@cmsmadesimple.org&amp;gt;</a>. All Rights Are Reserved.</p>
<p>This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.</p>
<p>However, as a special exception to the GPL, this software is distributed
as an addon module to CMS Made Simple.  You may not use this software
in any Non GPL version of CMS Made simple, or in any version of CMS
Made simple that does not indicate clearly and obviously in its admin 
section that the site was built with CMS Made simple.</p>
<p>This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
Or read it <a href="http://www.gnu.org/licenses/licenses.html#GPL">online</a></p>';
$lang['id'] = 'Id ';
$lang['info_allow_comment_html'] = '<strong>Note :</strong> Do not use this with the above wysiwyg setting';
$lang['info_captcha_module'] = 'Choisissez un module capable de v&eacute;rifier qu&#039;un humain est bien &agrave; l&#039;origine du commentaire post&eacute; dans la liste ci-contre.';
$lang['info_commentform_template'] = 'Ce gabarit est destin&eacute; &agrave; afficher un formulaire de saisie d&#039;un commentaire, d&#039;une note et/ou d&#039;informations compl&eacute;mentaires pour l&#039;utilisateur du site vis-&agrave;-vis d&#039;un &eacute;l&eacute;ment (page, actualit&eacute;,..). Vous pouvez ici modifier ce gabarit. Vous pouvez utiliser les balises et variables Smarty g&eacute;n&eacute;rales ou celles disponibles sp&eacute;cifiquement pour ce formulaire.';
$lang['info_commentform_templates_tab'] = 'Cet onglet contient la liste des gabarits de sommaire disponibles. L&#039;un d&#039;eux est marqu&eacute; par d&eacute;faut. Ce dernier sera utilis&eacute; si aucun autre nom de gabarit n&#039;est pr&eacute;cis&eacute; dans le tag appelant ce module.';
$lang['info_detail_template'] = 'Detail templates display detailed information about a specific frontend user.  Here you design the way in which you want that information laid out.  You may use any smarty logic or variables that have been designed previously, or the ones made available specifically for this view';
$lang['info_detail_templates_tab'] = 'Cet onglet contient la liste des gabarits de d&eacute;tail disponibles. L&#039;un d&#039;eux est d&eacute;fini par d&eacute;faut. Ce dernier sera utilis&eacute; si aucun autre nom de gabarit n&#039;est pr&eacute;cis&eacute; dans le tag qui appelle le module. ';
$lang['info_email_validate'] = 'Pr&eacute;ciser comment doit &ecirc;tre valid&eacute;e l&#039;adresse de courriel entr&eacute;e par l&#039;utilisateur';
$lang['info_filter_authoremail'] = 'Entrez une chaine de caract&egrave;res qui sera test&eacute;e avec toutes les adresses de courriel';
$lang['info_filter_authorname'] = 'Entrez une chaine de caract&egrave;res qui sera test&eacute;e avec tous les noms d&#039;auteur';
$lang['info_filter_title'] = 'Entrez une chaine de caract&egrave;res qui sera test&eacute;e avec tous les titres de commentaires';
$lang['info_moderate_comments'] = 'Activer cette option et chaque commentaire devra &ecirc;tre approuv&eacute; par un administrateur avec affichage sur le site';
$lang['info_moderation_iplist'] = 'Specify one rule per line.  Valid syntax includes a complete ip address or an ip address mask specified as xxx.xxx.xxxx.xxx/yy  i.e:  192.168.0.0/16 to match everything in the 192.168.0 address range.';
$lang['info_moderation_patterns'] = 'When moderation of comments is set to &quot;automatic&quot; and the comment supplied matches one or more of the rules specified here, the message will be marked as &quot;draft&quot; and await moderation by an administrator.  Enter one rule (stop word, phrase, or special rule identifier) per line..  Special rule identifiers are: __EMAIL__  to match any email address,  __URL__ to match any URL, __IP_ADDRESS__ to match any IP address.';
$lang['info_spamcheck_module'] = 'Slectionnez le module anti-spam dans la liste';
$lang['info_ratings_template'] = 'Ratings views display statistical information about the ratings for a particular item <em>(triplet of keys)</em>.  It includes the min,max,mean,and median ratings, and the number of ratings, These templates you design the way in which you want that information laid out.  You may use any smarty logic or variables that have been designed previously, or the ones made available specifically for this view';
$lang['info_ratings_templates_tab'] = 'Cet onglet contient la liste des gabarits de notation disponibles. L&#039;un d&#039;eux est marqu&eacute; par d&eacute;faut. Ce dernier sera utilis&eacute; si aucun autre nom de gabarit n&#039;est pr&eacute;cis&eacute; dans le tag appelant ce module.';
$lang['info_summary_template'] = 'Summary templates display information about a particular viewed items <em>(triplet of keys)</em>.  Here you design the way in which you want that information laid out.  You may use any smarty logic or variables that have been designed previously, or the ones made available specifically for this view';
$lang['info_summary_templates_tab'] = 'Cet onglet contient la liste des gabarits de sommaire disponibles. L&#039;un d&#039;eux est marqu&eacute; par d&eacute;faut. Ce dernier sera utilis&eacute; si aucun autre nom de gabarit n&#039;est pr&eacute;cis&eacute; dans le tag appelant ce module.';
$lang['info_sysdflt_commentform_template'] = 'Gabarit par d&eacute;faut pour le formulaire de commentaire';
$lang['info_sysdflt_detail_template'] = 'Gabarit par d&eacute;faut pour la vue du d&eacute;tail';
$lang['info_sysdflt_ratings_template'] = 'Gabarit par d&eacute;faut pour la vue de notation';
$lang['info_sysdflt_summary_template'] = 'Gabarit par d&eacute;faut pour la vue de sommaire';
$lang['info_sysdflt_template'] = 'Modifier le gabarit dans ce formulaire n&#039;aura pas de r&eacute;percussion imm&eacute;diate. Ce formulaire contr&ocirc;le les gabarits nouvellement cr&eacute;&eacute;s uniquement.';
$lang['info_use_cookies'] = 'Le nom de l&#039;auteur et son adresse de courriel seront stock&eacute;s dans un cookie pour une utilisation ult&eacute;rieure';
$lang['info_use_wysiwyg'] = 'Note : cette op&eacute;ration va &eacute;craser les r&eacute;glages de l&#039;&eacute;diteur WYSIWYG sur tous les champs personnalis&eacute;s ainsi que dans les champs de commentaire';
$lang['info_word_limit'] = 'Nombre maximal de mots dans le commentaires. Cette option n&#039;aura aucun effet si une des options sp&eacute;cifi&eacute;es plus haut est utilis&eacute;e. Mettre 0 pour un nombre de mots illimit&eacute;s.';
$lang['lbl_agelimit'] = 'Age maximum (jours)';
$lang['lbl_all'] = 'Tous';
$lang['lbl_any'] = 'Aucun';
$lang['lbl_author'] = 'Auteur';
$lang['lbl_author_name'] = 'Nom de l&#039;auteur';
$lang['lbl_author_email'] = 'Adresse de courriel de  l&#039;auteur';
$lang['lbl_author_ip'] = 'Addresse IP ';
$lang['lbl_avg_rating'] = 'Valeur de la note moyenne';
$lang['lbl_commentformtemplates'] = 'Gabarit du formulaire de commentaire';
$lang['lbl_comments'] = 'Commentaires';
$lang['lbl_comment'] = 'Commentaire';
$lang['lbl_count_comments'] = 'Nombre de commentaire';
$lang['lbl_created'] = 'Cr&eacute;&eacute;';
$lang['lbl_defaulttemplates'] = 'Gabarit par d&eacute;faut';
$lang['lbl_delete_spam'] = 'Supprimer ce spam';
$lang['lbl_detailtemplates'] = 'Gabarit de d&eacute;tail';
$lang['lbl_edit_comment'] = 'Editer le commentaire';
$lang['lbl_filter'] = 'Filtrer';
$lang['lbl_fields'] = 'Champs';
$lang['lbl_id'] = 'ID ';
$lang['lbl_key1'] = 'Cl&eacute; 1';
$lang['lbl_key2'] = 'Cl&eacute; 2';
$lang['lbl_key3'] = 'Cl&eacute; 3';
$lang['lbl_matching_records'] = 'R&eacute;sultats correspondants';
$lang['lbl_max_rating'] = 'Valeur de la note maximale';
$lang['lbl_max_results'] = 'R&eacute;sultats par page';
$lang['lbl_messages'] = 'Messages ';
$lang['lbl_min_rating'] = 'Valeur de la note minimale';
$lang['lbl_modified'] = 'Modifi&eacute;';
$lang['lbl_notifications'] = 'Notifications de l&#039;Administrateur';
$lang['lbl_not_spam'] = 'Ce n&#039;est pas du Spam';
$lang['lbl_of'] = 'de';
$lang['lbl_page'] = 'Page ';
$lang['lbl_rating'] = 'Notation';
$lang['lbl_settings'] = 'Param&egrave;tres';
$lang['lbl_status'] = 'Statut';
$lang['lbl_ratingstemplates'] = 'Gabarit de notation';
$lang['lbl_summarytemplates'] = 'Gabarit de sommaire';
$lang['lbl_title'] = 'Titre';
$lang['lbl_url'] = 'URL ';
$lang['lbl_usernotifications'] = 'Notifications des utilisateurs';
$lang['mark_draft'] = 'Marquer comme Brouillon';
$lang['mark_ham'] = 'Marquer comme Ham';
$lang['mark_published'] = 'Marquer comme Publi&eacute;';
$lang['mark_spam'] = 'Marquer comme Spam';
$lang['message_patternmatch'] = 'Only if the message matches one or more patterns below';
$lang['moddescription'] = 'Un module flexible pour commenter ou noter des items (articles, product, company, ...) dans votre site.  Ce module peut &ecirc;tre utilis&eacute; comme syst&egrave;me de notation et/ou de commentaires. Il peut &ecirc;tre associ&eacute; &agrave; des fonctions suppl&eacute;mentaires d&#039;administration comme la lutte contre le spam avec les modules Akismet ou Captcha.';
$lang['msg_bulk_operation_complete'] = 'Op&eacute;ration en s&eacute;rie effectu&eacute;e avec succ&egrave;s !';
$lang['msg_commentdeleted'] = 'Commentaire effac&eacute;';
$lang['msg_commentokay'] = 'Commentaire ajout&eacute; avec succ&eacute;s. Merci !';
$lang['msg_commentupdated'] = 'Commentaire mis &agrave; jour';
$lang['msg_field_added'] = 'Champ ajout&eacute; avec succ&egrave;s';
$lang['msg_field_deleted'] = 'Champ effac&eacute; avec succ&eacute;s';
$lang['msg_field_updated'] = 'Champ mis &agrave; jour avec succ&eacute;s';
$lang['name'] = 'Nom';
$lang['no'] = 'Non';
$lang['none'] = 'Aucun';
$lang['notification_subject'] = 'Un commentaire a &eacute;t&eacute; post&eacute; sur votre site';
$lang['param_action'] = 'D&eacute;finit le comportement du module. Les valeurs possibles pour ce param&egrave;tre sont :
<ul>
  <li>default - Affiche un formulaire de commentaire.</li>
  <li>summary - Affiche un rapport r&eacute;sum&eacute; des commentaires.</li>
  <li>ratings - Affiche un rapport des notations.</li>
  <li>detail  - Affiche des informations d&eacute;taill&eacute;es pour un commentaire sp&eacute;cifique.</li>
</ul>';
$lang['param_cid'] = 'Applicable to only to the <em>detail</em> action, this parameter specifies the unique identifier for the comment to display.  Normally this parameter is used only internally, as normal usage does not require explicit linking to a specific comment.';
$lang['param_commenttemplate'] = 'Applicable only in the default <em>comment form</em> action, this parameter specifies the name of a comment form template to use for generating the display.  If this parameter is not specified, the comment form template that is currently marked as &quot;default&quot; in the admin interface will be used.';
$lang['param_destpage'] = 'Applicable only in the default <em>comment form</em> action, this parameter specifies a page to redirect to after the form has been completed.';
$lang['param_detailpage'] = 'Uniquement pour l&#039;action <em>r&eacute;sum&eacute;</em>, ce param&egrave;tre peut &ecirc;tre utilis&eacute; pour d&eacute;finir un lien vers l&#039;id ou l&#039;alias d&#039;une page servant &agrave; afficher les d&eacute;tails d&#039;un commentaire sp&eacute;cifique.';
$lang['param_detailtemplate'] = 'This parameter can be used in both the summary, and detail actions to specify a non default detail template to use for the detail report';
$lang['param_inline'] = 'Applicable only to the default <em>comment form</em> action and only when policy <em>(see below)</em> is &quot;normal&quot;. This parameter if set to a non zero value specifies that the output from the form should replace the tag that was used to create the form, instead of replacing the default content area.';
$lang['param_key1'] = 'First key in the <em>triplet of keys</em> that make up a unique identifier for a comment list.  If this parameter is not specified, then it is assumed that you are referring to a content page';
$lang['param_key2'] = 'Second key in the <em>triplet of keys</em> that make up a unique identifier for a comment list.  If this parameter is not specified, the current page id will be used.';
$lang['param_key3'] = 'Third key in the <em>triplet of keys</em> that make up a unique identifier for a comment list.  This parameter is entirely optional for normal use, but may be required in extenuating circumstances when two keys are not enough information to make the comment list unique.';
$lang['param_pagelimit'] = 'Uniquement pour l&#039;action <em>r&eacute;sum&eacute;</em>, ce param&egrave;tre sp&eacute;cifie le nombre de commentaires &agrave; afficher.';
$lang['param_policy'] = 'Applicable only in the default <em>comment form</em> action, this parameter specifies a specific behaviour policy for the form.
<ul>
<li>normal - <em>(default)</em><br/>
-- The system will not redirect to any page, instead it will output an information message or error according to the template that is selected.  This is similar behaviour to all other modules.  The &quot;destpage&quot; parameter has no effect with this policy.<li>
<li>session<br/>
-- On form submission, the system will store form variables in the session, and redirect back to the originating url.. it will then retrieve the values from the session to re-populate the form, and display any optional error.  The &quot;inline&quot; parameter has no effect with this policy.</li>
</ul>';
$lang['param_ratingstemplate'] = 'Applicable only to the <em>ratings</em> action, this parameter can name a non default ratings template to use for the display.';
$lang['param_showall'] = 'Applicable only to the <em>summary</em> action, this parameter indicates that all relevant posts should be displayed, independant of status. The default setting is to display only published comments.';
$lang['param_sortby'] = 'Applicable only in the <em>summary</em> action, this parameter specifies the sorting of the returned results.  Possible values are:
<ul>
  <li>rating</li>
  <li>title</li>
  <li>status - This option is only useful with the showall parameter.</li>
  <li>author_name</li>
  <li>author_email</li>
  <li>author_ip</li>
  <li>created <em>(default)</em></li>
  <li>modified</li>
  <li>Custom Field <strong>F:<em>fieldname</em></strong>
  <p>-- It is possible to sort by custom fields, by specifying &quot;F:thename&quot; as the sortby value.</p>
  </li>
</ul>';
$lang['param_sortorder'] = 'Applicable only to the default <em>contact form</em> action, this aprameter specifies the order of the returned results, relative to the sorting parameter.  Possible values are:
<ul>
  <li>ASC - Ordre croissant</li>
  <li>DESC - <em>(par d&eacute;faut)</em> Ordre d&eacute;croissant</li>
</ul>';
$lang['param_commentrequired'] = 'Applicable to the default action, this integer parameter can be used to specify if the comment is a required field.';
$lang['param_emailrequired'] = 'Applicable to the default action, this integer parameter can be used to specify if the email address is a required field.';
$lang['param_namerequired'] = 'Applicable to the default action, this integer parameter can be used to specify if the name is a required field.';
$lang['param_noredirect'] = 'Applicable to the default action, when session is set to &quot;policy&quot; will specify that when a comment is successfully added not to perform any redirection.';
$lang['param_ratingoptions'] = 'Applicable to the default action, this parameter allows specifying a list of comma seperated values to use for ratings options.';
$lang['param_redirectextra'] = 'Applicable to the default action, and only when the destpage parameter is NOT used.  this parameter allows specifying extra information to append to the url when redirecting.  i.e:  you may specify redirectextra=&quot;#someanchorname&quot; to specify an anchor to redirect to.';
$lang['param_titlerequired'] = 'Applicable to the default action, this integer parameter can be used to specify if the title is a required field.';
$lang['param_summarytemplate'] = 'Applicable to the summary action, this parameter allows specifying the name of a non default summary template.';
$lang['param_voteonce'] = 'Applicable to the default form, this parameter allows specifying that the user can only vote once (by IP address). This value must be a positive integer between 1 and 3.  A value of 1 will only search the first key, a value of 2 will search both key1 and key2, and a value of 3 will search key1, key2, and key3';
$lang['postinstall'] = 'Le module CGUserDirectory est maintenant pr&ecirc;t &agrave; &ecirc;tre configur&eacute;';
$lang['postuninstall'] = 'Le module CGUserdirectory ainsi que toutes les donn&eacute;es associ&eacute;es ont &eacute;t&eacute; enlev&eacute;s de la base de donn&eacute;es';
$lang['prompt_add_comment'] = 'Ajouter un commentaire';
$lang['prompt_add_field'] = 'Ajouter un nouveau champ';
$lang['prompt_allow_comment_html'] = 'Autoriser les commentateurs a inclure du code HTML dans leurs commentaires';
$lang['prompt_allow_comment_wysiwyg'] = 'Autoriser l&#039;utilisation de l&#039;&eacute;diteur WYSIWYG pour les commentaires ?';
$lang['prompt_author_email'] = 'Courriel de l&#039;auteur';
$lang['prompt_author_name'] = 'Nom de l&#039;auteur';
$lang['prompt_author_notify'] = 'Avertir l&#039;auteur de l&#039;ajout de commentaires sur ce thread';
$lang['prompt_captcha_module'] = 'Module utilis&eacute; pour excecuter les tests CAPTCHA';
$lang['prompt_comment'] = 'Commentaire ';
$lang['prompt_default_content'] = 'Contenu par d&eacute;faut pour ce champs (optionnel, laisser &agrave; blanc)';
$lang['prompt_dropdown_options'] = 'Options pour liste d&eacute;roulant (dropdown) ou champs multi-s&eacute;lection. Une ligne par entr&eacute;e.<br/>Les valeurs peuvent &ecirc;tre s&eacute;par&eacute;es du label en utilisant le symbol &eacute;gal : <em>i:e : Femme=f</em>';
$lang['prompt_email_validate'] = 'Validation de l&#039;adresse e-mail';
$lang['prompt_field_length'] = 'Longeur du champ';
$lang['prompt_field_maxlength'] = 'Taille maximum du champ';
$lang['prompt_field_name'] = 'Nom du champ';
$lang['prompt_field_type'] = 'Type du champ';
$lang['prompt_general_settings'] = 'Param&egrave;tres g&eacute;n&eacute;raux';
$lang['prompt_is_email_html'] = 'Envoyer le message au format HTML?';
$lang['prompt_message_template'] = 'Gabarit des messages';
$lang['prompt_moderate_comments'] = 'Mod&eacute;rer tous les commentaires';
$lang['prompt_moderation_iplist'] = 'Moderate Matching IP Addresses';
$lang['prompt_moderation_patterns'] = 'Moderation Patterns';
$lang['prompt_notify'] = 'Me pr&eacute;venir lorsqu&#039;il y a de nouveaux commentaires sur cette page';
$lang['prompt_origurl'] = 'Adresse URL originale';
$lang['prompt_quality_control_settings'] = 'Param&eacute;tres de contr&ocirc;le de la qualit&eacute;';
$lang['prompt_rating'] = 'Notation';
$lang['prompt_send_notification_to_group'] = 'Envoi de notifications de nouveaux commentaires aux membres de ce groupe :<br/><em>(r&eacute;gler sur aucun pour d&eacute;sactiver les notifications)</em>';
$lang['prompt_spamcheck_module'] = 'Module utilis&eacute; pour d&eacute;tecter le spam dans les commentaires';
$lang['prompt_status'] = 'Statut';
$lang['prompt_subject'] = 'Sujet';
$lang['prompt_success_msg'] = 'Message affich&eacute; apr&egrave;s un envoi de commentaire r&eacute;ussit';
$lang['prompt_title'] = 'Titre du commentaire ';
$lang['prompt_use_cookies'] = 'Sauvegarder les param&egrave;tres utilisateur dans un cookie';
$lang['prompt_use_wysiwyg'] = 'Autoriser l&#039;&eacute;diteur WYSIWYG';
$lang['prompt_word_limit'] = 'Nombre de mots max. par commentaire';
$lang['prompt_your_email'] = 'Votre courriel ';
$lang['prompt_your_name'] = 'Votre nom ';
$lang['prompt_your_rating'] = 'Votre note ';
$lang['published'] = 'Publi&eacute;';
$lang['reset_to_defaults'] = 'Retour aux param&egrave;tres usine';
$lang['spam'] = 'Spam ';
$lang['statistics'] = 'Statistiques';
$lang['submit'] = 'Envoyer';
$lang['title_add_field'] = 'Ajouter un champ';
$lang['type'] = 'Type ';
$lang['unlimited'] = 'Illimit&eacute;';
$lang['usernotification_subject'] = 'Une r&eacute;ponse a &eacute;t&eacute; post&eacute;e sur une discussion que vous suivez';
$lang['validate_normal'] = 'Validation du format d&#039;adresse';
$lang['validate_domain'] = 'Validation du format d&#039;adresse et de nom de domaine';
$lang['yes'] = 'Oui';
$lang['qca'] = 'P0-571252815-1315078016297';
$lang['utma'] = '156861353.32358877.1319054778.1319054778.1319054778.1';
$lang['utmc'] = '156861353';
$lang['utmz'] = '156861353.1319054778.1.1.utmccn=(referral)|utmcsr=forum.cmsmadesimple.org|utmcct=/viewtopic.php|utmcmd=referral';
$lang['utmb'] = '156861353';
?>
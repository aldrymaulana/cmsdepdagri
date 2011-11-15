<?php
/***************************************************************************
 *                              fr_FR.php
 *                            -------------------
 *   begin                : 13 nov. 08
 * 	 author				  : Alexandre Courtois
 *   email                : alexandre.courtois@gmail.com
 *
 ***************************************************************************/
 
$lang['description'] = 'Le module FrontEndUsersComments permet aux utilisateurs enregistr&eacute;s de votre site de laisser des commentaires';
$lang['friendlyname'] = 'FrontEndUsers Comments';
$lang['postinstall'] = 'Module install&eacute;.';
$lang['installed'] = 'Module version %s install&eacute;.';
$lang['uninstalled'] = 'Module %s d&eacute;sinstall&eacute;.';
$lang['really_uninstall'] = 'Supprimer le module %s?';

$lang['home'] = 'Commentaires';
$lang['modify_tpl'] = 'Template d\'affichage';
$lang['modify_message_tpl'] = 'Template de message';
$lang['preferences'] = 'Pr&eacute;f&eacute;rences'; 

$lang['date'] = 'Date';
$lang['user'] = 'Utilisateur';
$lang['module'] = 'Module';
$lang['pageid'] = 'Page ID';
$lang['comment'] = 'Commentaire';
$lang['nocomment'] = 'Pas de commentaires pour le moment';
$lang['noCommentFront'] = 'Soyez le premier &agrave; r&eacute;agir &agrave; cet article';
$lang['need2beLoggedIn'] = 'Vous devez vous connecter pour laisser un commentaire';
$lang['delete'] = 'Supprimer ce commentaire';
$lang['delete_confirm'] = 'Supprimer ce commentaire?';
$lang['active'] = 'Valider ce commentaire';
$lang['unactive'] = 'Refuser ce commentaire';
$lang['edit'] = 'Editer ce commentaire';
$lang['visible'] = 'Visible?';

$lang['editTpl'] = 'Modifier ici le template d\'affichage des commentaires';
$lang['editMessageTpl'] = 'Modifier ici le template de confirmation d\'ajout de commentaire';
$lang['tplupdated'] = 'Le template a bien &eacute;t&eacute; mis &agrave; jour.';
$lang['submit'] = 'Valider';

$lang['notify'] = 'Notifier en cas de nouveau commentaire?';
$lang['notify_address'] = 'Adresse pour la notification';
$lang['disable_html'] = 'D&eacute;sactiver le code HTML des commentaires';
$lang['nbPerPage_admin'] = 'Nombre de commentaires par page (Admin)';
$lang['moderate'] = 'Mod&eacute;rer les commentaires?';
$lang['prefsupdated'] = 'Les pr&eacute;rences ont bien &eacute;t&eacute; enregistr&eacute;es';

$lang['addComment'] = 'Ajouter un commentaire';

$lang['returnTo'] = 'Revenir &agrave; la page pr&eacute;c&eacute;dente';
$lang['currentPage'] = 'Page %s sur %s';

// INFOS
$lang['commentdeleted'] = 'Commentaire supprim&eacute;';
$lang['commentupdated'] = 'Commentaire mis &agrave; jour avec succ&egrave;s.';
$lang['commentactivated'] = 'Statut du commentaire mis &agrave; jour';
$lang['commentSubmited'] = 'Votre commentaire a bien &eacute;t&eacute; ajout&eacute;.';
$lang['validationNeeded'] = 'Il sera visible une fois valid&eacute; par un administrateur';;

// ERRORS
$lang['authorid_undefined'] = 'ERREUR: Param&egrave;tre "authorid" manquant.';
$lang['pageid_undefined'] = 'ERREUR: Param&egrave;tre "pageid" manquant.';
$lang['modulename_undefined'] = 'ERREUR: Param&egrave;tre "modulename" manquant.';
$lang['noContent'] = 'Veuillez saisir un commentaire';
$lang['notifyAddressUndef'] = 'ERREUR: Saisir une adresse pour la notification';
$lang['commentidUndef'] = 'ID du commentaire &agrave; supprim&eacute;r non d&eacute;fini.';

// Help
$lang['help'] = '<h3>Que fait ce module?</h3>
<p>Ce module permet aux utilisateurs enregistr&eacute;s via FEUsers de poster des commentaires sur diverses parties de votre site (page, news, ...)</p>
<h3>Fonctionnalit&eacute;s:</h3>
<ul><li>Acc&egrave;s &agrave; toutes les propri&eacute;t&eacute;s d\'un utilisateur pour l\'affichage (nom, email, login, etc.)</li>
<li>Gestion du template d\'affichage via le panneau d\'administration</li>
<li>Possibilit&eacute; de mod&eacute;ration des messages</li>
<li>Possibilit&eacute; de d&eacute;sactiver l\'utilisation de l\'HTML dans les messages</li>
<li>Possibilit&eacute; d\'&ecirc;tre notifi&eacute; lors de l\'arriv&eacute;e d\'un nouveau message (1 seul utilisateur pour le moment)</li>
<li>Personnalisation facile gr&acirc;ce aux CSS</li></ul>
<h3>Comment l\'utiliser?</h3>
<ul><li><p>Apr&egrave;s installation, vous pouvez acc&eacute;der au module par le panneau d\'administration sous le menu "Contenu / FrontEndUsers Comments". Ici vous pourrez administrer les commentaires (suppresion / modification / validation); Modifier les templates d\'affichage du formulaire, 
des commentaires et des messages de confirmation; Choisir les diff&eacute;rents param&ecirc;tres du module (Mod&eacute;ration, notification, etc...).</p></li>
<li>Ensuite, il suffit d\'ins&eacute;rer le code suivant sur votre page:
<ul><li>Pour des commentaires sur un article (News):<br /><strong>{cms_module module=FrontEndUsers form="silent"}{cms_module module="FrontEndUsersComments" modulename="News" pageid=$entry->id authorid=$userid}</strong></li>
<li>Pour des commentaires sur une page (content):<br /><strong>{cms_module module=FrontEndUsers form="silent"}{cms_module module="FrontEndUsersComments" modulename="content" pageid=$page_id authorid=$userid}</strong></li></ul></li>
</ul>
<h3>Support:</h3>
<p>Ce module ne contient aucun support commercial. Cependant, ces ressources sont disponibles pour vous aider&nbsp;:</p>
<ul>
<li>Pour la derni&egrave;re version de ce module, les FAQs, ou pour annoncer un bug, ou pour acheter du support commercial, veuillez visiter le site d\'Adagyo <a href="http://feucomments.foot-tribune.fr">http://feucomments.foot-tribune.fr</a>.</li>
<li>Vous pouvez rencontrer un certain succ&egrave;s en envoyant un email directement &agrave; l&#039;auteur.</li>  
</ul>
';
$lang['param_authorid'] = 'ID feuser de l\'utilisateur. En g&eacute;n&eacute;ral prend la valeur de la variable $userid';
$lang['param_pageid'] = 'ID de la page ou de la news';
$lang['param_modulename'] = 'Nom du module. Peut prendre les valeurs: News / content. A tester sur d\'autre modules.';
$lang['param_number'] = 'Nombre de commentaires affich&eacute;s avant pagination';
$lang['param_sortorder'] = 'Les commentaires sont tri&eacute;s par date. Ce param&ecirc;tre d&eacute;fini le sens de tri (ASC ou DESC)';
$lang['editTplHelp'] = '<p>Pour acc&eacute;der &agrave; une propri&eacute;t&eacute; sp&eacute;cifique de l\'utilisateur, il suffit d\'ajouter le code suivant:<br />
<strong>{$comments_list[comment]->feuser_properties.NOM_DE_LA_PROPRIETE_UTILISATEUR}</strong></p>';
?>

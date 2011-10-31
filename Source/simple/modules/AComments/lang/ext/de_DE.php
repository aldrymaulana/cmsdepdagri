<?php

#0-9

#A
$lang['active'] = 'Aktiv';
$lang['addacomment'] = 'Einen Kommentar schreiben';
$lang['akismet_check'] = 'Akismet Check aktivieren';
$lang['areyousure'] = 'Kommentar l&ouml;schen?';
$lang['author'] = 'Autor';
$lang['authornotifymsg'] = 'Ein neuer Kommentar wurde geschrieben auf %s';
$lang['authornotifysubj'] = 'Neuer Kommentar auf %s';
$lang['authornotify'] = 'EMail bei Antwort';

#B

#C
$lang['cache'] = 'Zwischenspeichern';
$lang['cancel'] = 'Abbrechen';
$lang['changelog'] = <<<EOT
<ul>
<li>1.0 - August 2010
<p>Erste Version des Moduls AComments</p></li>
</ul>
EOT;
$lang['check_trackback_url'] = 'Diese URL ist nur fuer den Empfang von Trackbacks.';
$lang['comment'] = 'Kommentar';
$lang['commentedit'] = 'Kommentar bearbeiten';
$lang['comment_awaiting_approval'] = 'Ihr Kommentar wird nach Pr&uuml;fung durch den Administrator ver&ouml;ffentlicht.';
$lang['comment_deleted'] = 'Der Kommentar wurde gel&ouml;scht.';
$lang['comment_moderation_enabled'] = 'WICHTIG: Die Moderation der Kommentare ist aktiviert. Wenn dieser Kommentar auf Ihrer Webseite angezeigt werden soll, muessen Sie ihn aktivieren.';
$lang['comment_title'] = 'Titel';
$lang['comment_updated'] = 'Der Kommentar wurde aktualisiert.';
$lang['comments'] = 'Kommentare';
$lang['comments_deleted'] = 'Die Kommentare wurden gel&ouml;scht.';
$lang['continue_back'] = 'Zur&uuml;ckkehren zur Seite';
$lang['createdate'] = 'Erstellungsdatum';

#D
$lang['data'] = 'Kommentartext';
$lang['date'] = 'Datum';
$lang['delete'] = 'L&ouml;schen';
$lang['delselected'] = 'Ausgew&auml;hlte Eintr&auml;ge l&ouml;schen';
$lang['disable_html'] = 'HTML für Kommentare deaktivieren';

#E
$lang['edit'] = 'Bearbeiten';
$lang['editor'] = 'Edit.Kom.';
$lang['edit_comment'] = 'Kommentar bearbeiten';
$lang['email'] = 'Email-Adresse';
$lang['enable_cookie_support'] = 'Cookie Unterstützung aktivieren';
$lang['enable_trackbacks'] = 'Trackbacks aktivieren';
$lang['enable_trackback_backlink_check'] = 'Trackback Backlink Check aktivieren';
$lang['entercode'] = 'Code im diesem Bild';
$lang['error'] = 'Fehler';
$lang['errorenterauthor'] = 'Bitte geben Sie einen Autor ein!';
$lang['errorentercomment'] = 'Bitte geben Sie einen Kommentar ein!';
$lang['errorenteremail'] = 'Ung&uuml;ltiges Format der Email-Adresse';
$lang['errorenterwebsite'] = 'Die URL wurde im falschen Format eingegeben.';

#F
$lang['filters'] = 'Filter';
$lang['firstpage'] = '&lt;&lt;';
$lang['friendlyname'] = 'Kommentare';

#G

#H
$lang['help_akismet_check'] = '<b>Spam&uuml;berpr&uuml;fung</b> - Mit diesem Feld k&ouml;nnen Sie den Spamschutz &uuml;ber das Akismet-Modul aktivieren. <b>Hinweis: Daf&uuml;r MUSS das CMSakismet-Modul installiert sein.</b>';
$lang['help_enable_cookie_support'] = '<b>Cookie Support aktivieren</b> - Damit werden die Formularfelder (Name, EMail, etc) teilweise vorausgef&uuml;llt. Die Daten werden in einem Cookie gespeichert.';
$lang['help_enable_trackbacks'] = '<b>Trackbacks aktivieren</b> - Aktivieren Sie diese Checkbox, um die Trackback-Funktionalit&auml;t in Kommentaren zu aktivieren.';
$lang['help_enable_trackback_backlink_check'] = '<b>Backlink Check f&uuml;r Trackbacks aktivieren</b> - Test, ob die Absender URL eines Trackbacks einen Backlink zu Ihrer Seite enth&auml;lt.';
$lang['helpnumber'] = 'Maximale Anzahl der angezeigten Eintr&auml;ge -- ohne Vorgabe werden alle Eintr&auml;ge angezeigt.';
$lang['helpdateformat'] = 'Datum und Zeit verwenden die Parameter der PHP-Funktion date. Weitere Informationen und die Liste der Parameter finden Sie <a href="http://de.php.net/date" target="_blank">hier</a>.';
$lang['helplocaledateformat'] = '<p>Dieser Parameter kann in Verbindung mit dem Parameter lang verwendet werden, um das Datum im Format einer bestimmten Region darzustellen. Das Datum wird jetzt mit den Parametern des <a href="http://de.php.net/strftime" target="_blank">strftime</a>-Befehls formatiert. Beispiel:</p><p><b>Englisches Datumsformat (Ausgabe: Thursday, July 19, 2007, 07:51 AM)</b></p><pre>{cms_module module=&#039;comments&#039; localedateformat=&#039;%B %d, %Y, %I:%M %p&#039; lang=&#039;en_US&#039;}</pre><p><b>Deutsches Datumsformat (Ausgabe: Donnerstag, 19. Juli 2007, 07:51)</b></p><pre>{cms_module module=&#039;comments&#039; localedateformat=&#039;%A, %d. %B %Y, %H:%M&#039; lang=&#039;de_DE&#039;}</pre>';
$lang['helpnotify'] = '<i>Benachrichtigung</i> - Email-Adresse f&uuml;r die Benachrichtigung bei neuen Kommentaren. Ohne diesen Parameter werden keine Benachrichtigungen versandt.';
$lang['helpmoderate'] = '<i>Moderation</i> - Deaktiviert neue Kommentare. Die Kommentare m&uuml;ssen vor der Anzeige auf der Webseite von einem Administrator freigegeben werden.';
$lang['helpspamprotect'] = '<b>Spam Schutz</b> - Sch&uuml;tzt das Kommentar-Modul vor Spam. Mit diesem K&auml;stchen wird der Spamschutz des Captcha-Modul aktiviert. <b>HINWEIS: Daf&uuml;r MUSS das Captcha-Modul installiert sein.</b>';
$lang['help_disable_html'] = '<b>HTML deaktivieren</b> - Mit diesem K&auml;stchen k&ouml;nnen Sie HTML-Formatierungen in Kommentaren verbieten.';
$lang['help'] = '       <h3>Was macht dieses Modul?</h3>
	<p> Mit dem Comments-Modul k&ouml;nnen Besucher einzelnen Seiten Kommentare hinzugef&uuml;gen, die 
        dann von anderen Besuchern gelesen werden k&ouml;nnen. Ein praktischer Nutzen dieses Modul liegt zum Beispiel bei 
        Dokumentationsseiten, bei denen die Besucher der Seite Kommentare oder zus&auml;tzliche Information hinzuf&uuml;gen k&ouml;nnen.
       </p>
	<h3>Wie wird es eingesetzt?</h3>
	<p>Comments ist ein Tag-Modul. Es kann mit dem cms_module Tag entweder auf Inhaltsseiten oder 
        in Templates eingef&uuml;gt werden. Beispiel:</p> 
	<code>{cms_module module=&quot;comments&quot;}</code>
	<br /><p>Um die Benachrichtigung per Email zu aktivieren, installieren und konfigurieren Sie das CMSMailer-Modul und f&uuml;gen
        die Emailadresse des Empf&auml;ngers in die Benachtichtigungsoption des Reiters &quot;Optionen&quot; ein.
        <p>Stellen Sie sicher, dass die Benutzer, die die Kommentare administrieren sollen, die Berechtigung <b>&#039;Manage Comments&#039;</b> haben.</p>
       <h3>Parameter</h3>
       <ul>
		<li><i>number</i> - Anzahl der Kommentare pro Seite.  Ohne Vorgabe werden alle Kommentare angezeigt.</li>
		<li><i>emailfield</i> - Setzen Sie den Wert auf 1, um den Benutzern die Eingabe einer Email-Adresse zu erlauben. Ohne Vorgabe wird das Email-Feld nicht angezeigt.</li>
		<li><i>websitefield</i> - Setzen Sie den Wert auf 1, um den Benutzern die Eingabe der URL ihrer Webseite zu erlauben. Ohne Vorgabe wird das Feld zur Eingabe der URL nicht angezeigt.</li>
	<li><i>modulename</i> - Name des Moduls, von dem diese Kommentare verwendet werden sollen.</li>
		<li><i>pageid</i> - die ID des Eintrages, mit dem es verwendet werden soll. Dies kann ein Bild, eine News-ID oder &auml;hnliches sein.</li>
	</ul>
		<h4>Gestaltung</h4>
		<p>Ihr Kommentar-Formular k&ouml;nnen Sie zum Beispiel mit dem folgenden Stylesheet gestalten:</p>
        <pre>#comments textarea { width:300px; }</pre>

<h3>Beispiele</h3>
<h4>Mit diesem Beispiel k&ouml;nnen Sie News-Artikel kommentieren lassen.</h4>
		<p>F&uuml;gen Sie dazu folgendes in Ihr News-Detail-Template ein:</p>
<pre>
{cms_module module=&#039;comments&#039; modulename=&#039;News&#039; pageid=$entry->id}
</pre>';

#I
$lang['id'] = 'ID';
$lang['ip'] = 'IP des Autors';

#J

#K

#L
$lang['lastpage'] = '&gt;&gt;';
$lang['list_template'] = 'Template f&uuml;r Kommentar-Anzeige';
$lang['list_template_updated'] = 'Das Template f&uuml;r die Kommentar-Anzeige wurde aktualisiert.';
$lang['localedateformat_error'] = 'Fehler: Der Aufruf von setlocale zum Festlegen des Datumsformates funktioniert nicht. Entweder ist diese Funktionalit&auml;t auf Ihrem Server nicht verf&uuml;gbar, der vorgegebene Wert f&uuml;r locale existiert nicht oder der Kategoriename ist ung&uuml;ltig.';

#M
$lang['moddescription'] = 'Das Kommentar-Modul erlaubt den Besuchern Ihrer Webseite, Ihre Seiten zu kommentieren.';
$lang['moderate'] = 'Kommentare sind standardmäßig inaktiv und benötigen der Aktivierung des Moderators';
$lang['modifydate'] = 'Bearbeitungsdatum';
$lang['modulename'] = 'Modulname';

#N
$lang['needpermission'] = 'F&uuml;r diese Funktion ben&ouml;tigen Sie die Berechtigung &#039;%s&#039;.';
$lang['nextpage'] = '&gt;';
$lang['newcomment'] = 'Einen Kommentar hinzuf&uuml;gen';
$lang['newtemplate'] = 'Neues Template erstellen';
$lang['no'] = 'nein';
$lang['nocommentsfound'] = 'Keine Kommentare gefunden';
$lang['notified'] = 'EMail versandt';
$lang['notify'] = 'EMail-Adresse für Benachrichtigung bei neuen Kommentaren';
$lang['notifysubj'] = 'Neuer Kommentar auf \'%s\'! ';
$lang['notifymsg'] = 'Auf der Seite \'%s\' wurde ein neuer Kommentar eingetragen. ';

#O
$lang['options'] = 'Optionen';
$lang['options_updated'] = 'Die Einstellungen wurden gespeichert.';

#P
$lang['pageid'] = 'Seite';
$lang['page'] = 'Seite';
$lang['page_of'] = 'Seite %s von %s';
$lang['page_limit'] = 'Kommentare pro Seite';
$lang['postdate'] = 'Eintragsdatum';
$lang['postinstall'] = 'Das Modul AComments wurde erfolgreich installiert.<br />
Bitte beachten:
<ol>
<li>Stellen Sie sicher, dass Benutzer, die die Kommentare administrieren sollen, die Berechtigung <b>&#039;Manage Comments&#039;</b> haben.</li>
<li>Um die Funktion des Mail-Versands zu nutzen, muss das <b>CMSMailer-Modul</b> installiert und konfiguriert sein.</li>
</ol>';
$lang['postuninstall'] = 'Module AComments was successfully uninstalled';
$lang['prevpage'] = '&lt;';

#Q

#R
$lang['restoretodefaultsmsg'] = 'Hier k&ouml;nnen Sie die Inhalte der Templates auf den Systemstandard zur&uuml;cksetzen. Wollen Sie das wirklich?';
$lang['reallydelete'] = 'Diesen Kommentar wirklich löschen?';
$lang['reallymakeactive'] = 'Diesen Kommentar wirklich aktivieren?';
$lang['reallymakeinactive'] = 'Diesen Kommentar wirklich deaktivieren?';
$lang['reallymakestandard'] = 'Dieses Template als Standard verwenden?';
$lang['reset'] = 'Zurücksetzen';

#S
$lang['spamprotect'] = 'Spamschutz aktivieren';
$lang['standard'] = 'Standard';
$lang['submit'] = 'Absenden';
$lang['submit_template'] = 'Template f&uuml;r Kommentar-Versand';
$lang['submit_template_updated'] = 'Das Template f&uuml;r den Kommentar-Versand wurde aktualisiert.';
$lang['submitcomment'] = 'Kommentar übermittelt';
$lang['sysdefaults'] = 'Auf die programmseitigen Voreinstellung zur&uuml;cksetzen';

#T
$lang['template'] = 'Template';
$lang['templateedit'] = 'Template bearbeiten';
$lang['templatename'] = 'Template Name';
$lang['title_comments'] = 'Kommentare';
$lang['title_templates'] = 'Templates';
$lang['title_options'] = 'Einstellungen';
$lang['trackback'] = 'Trackback';

#U

#V

#W
$lang['website'] = 'Webseite';
$lang['wrongcode'] = 'Der Code wurde falsch eingegeben. Bitte versuchen Sie es noch einmal.';

#X

#Y
$lang['yes'] = 'ja';
$lang['yourname'] = 'Ihr Name';

#Z

// EOF
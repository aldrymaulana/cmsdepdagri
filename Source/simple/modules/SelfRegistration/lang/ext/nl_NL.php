<?php
$lang['eventhandlers_added'] = 'Gebeurtenisbeschrijvingen toegevoegd';
$lang['preferences_updated'] = 'Instellingen bijgewerkt';
$lang['setup_cart_events'] = 'Stel Cartgebeurtenissen in';
$lang['setup'] = 'Installatie';
$lang['info_setup_cart_events'] = 'Af en toe, bijvoorbeeld bij het upgraden van oudere installaties, kan het gebeuren dat de gebeurtenisbeschrijvingen niet zijn toegevoegd. Klik op deze knop om er voor te zorgen dat deze wel worden toegevoegd. Dit is belangrijk bij het gebruik van betaalde registraties.';
$lang['info_force_email_twice'] = 'Als deze optie is ingeschakeld dan is de gebruiker verplicht om zijn gebruikersnaam (of e-mailadres) twee keer in te voeren. Deze twee waarden moeten dan met elkaar overeen komen';
$lang['prompt_redirect_paidpkg'] = 'Page ID/alias voor verwijzing naar betaalpakketen';
$lang['info_redirect_paidpkg'] = 'Een smarty sjabloon dat verwijst naar de pagina-id of alias van de pagina waar naartoe moet worden doorverwezen voor betaalde pakketten. Een gebruiker die registreert voor uw website wil misschien direct naar de betaalpagina gaan of de winkelwagen zien.';
$lang['info_additionalgroups_matchfields'] = 'Indien toegestaan kunnen bestaande gebruikers toegevoegd worden aan een extra groep. U kunt hier opgegeven welke FEU-eigenschappen van de bestaande gebruiker moeten overeenkomen wanneer de gebruiker opnieuw registreert. Deze informatie moet uniek zijn om de FEU-gebruiker te kunnen identificeren.';
$lang['info_cartitem_summary_tpl'] = 'Een smarty sjabloon die verwijst naar de waarde van de samenvatting die zal worden weer gegeven in de winkelwagen en gedurende het betalingsproces. Als deze waarde niet wordt opgegeven, dan zal de standaardwaarde worden gebruikt. Geldige waarden zijn: {$pkg} <em>(array)</em>.  {$sku}, {$username}, {$tmpuid} <em>(de tijdelijke gebruikersid)</em>. <strong>Opmerking:</strong> sommige betalingsgateways ondersteunen enkel het gebruik van een vast aantal getallen of tekens in de samenvatting.';
$lang['prompt_cartitem_summary_tpl'] = 'Cart Item Samenvattingssjabloon';
$lang['paid_registration'] = 'Betaalde registratie';
$lang['info_skip_final_msg'] = 'Deze optie bepaald wanneer de melding dat de registratie voltooid moet worden weergegeven aan de gebruiker na de registratie';
$lang['notifications'] = 'Berichten';
$lang['info_login_afterverify'] = 'Deze optie zorgt er voor dat de gebruiker direct wordt aangemeld op de site nadat de gebruiker is gepushed naar de Fronend Users module. Deze optie heeft geen effect als u geen gebruik maakt van betaalde registraties';
$lang['info_email_confirmation'] = 'Deze optie zorgt dat een mail wordt verzonden met een link waarmee de gebruiker moet bevestigen dat de accountinformatie correct is.<br/><strong>Opmerking:</strong> Deze optie kan niet gebruikt worden als u geen gebruik maakt van betaalde registraties.';
$lang['prompt_registration_settings'] = 'Registratie instellingen';
$lang['none'] = 'Geen';
$lang['month'] = 'Maand';
$lang['year'] = 'Jaar';
$lang['subscription_expires'] = 'Aanmelding verloopt iedere';
$lang['error_policycantadd'] = 'Het beleid van deze website staat niet toe om dit item toe te voegen aan uw winkelwagentje. Neem contact op met de beheerder';
$lang['prompt_allow_select_pkg'] = 'Sta gebruikers toe een pakket (groep) te selecteren voor registratie';
$lang['info_allowselectpkg'] = 'Misschien wilt u dat gebruikers een bepaalde FEU-groep kunnen kiezen om zich toe te registreren. Deze groepen zullen worden geplaatst in pakketten (voor verkoopdoeleinden). Als u geen gebruik maakt van de verkoopmogelijkheden, dan kunt u de prijsgegevens negeren.';
$lang['error_nopkgs'] = 'Er zijn geen pakketen ingesteld waar een klant zich voor kan registreren';
$lang['selpkg_template'] = 'Selecteer pakket template';
$lang['title_selpkg_template'] = 'Selecteer inschrijvingspakket template';
$lang['info_selpkg_template'] = 'Deze template wordt gebruikt wanneer betaalde inschrijvingen zijn ingeschakeld om zo de gebruiker te kunnen laten kiezen uit verschillende inschrijvingspakketen.';
$lang['error_pkgcost'] = 'Pakketprijs is ongeldig';
$lang['error_pkgexists'] = 'Een pakket met een %s van %s bestaat al reeds';
$lang['description'] = 'Omschrijving';
$lang['edit_paidpkg'] = 'Wijzig betaalpakker &quot;%s&quot;';
$lang['add_paidpkg'] = 'Voeg betaalpakket toe';
$lang['name'] = 'Naam';
$lang['prompt'] = 'Prompt ';
$lang['group'] = 'Groep';
$lang['cost'] = 'Kosten';
$lang['regpkgs_tab'] = 'Registratiepakketen';
$lang['prompt_allow_paid_registration'] = 'Vereis dat leden moeten betalen voor registratie op uw site';
$lang['info_allow_paid_registration'] = 'Selecteer de SelfRegistration module als bronmodule voor CGEcommerceBase en configureer de &#039;betaalde registratie&#039;-tab. Eventueel kunt u een pakket in de sectie hierboven activeren.';
$lang['email-password'] = 'E-mail Adres en Wachtwoord';
$lang['username-password'] = 'Gebruikersnaam en Wachtwoord';
$lang['help_param_allowoverwrite'] = 'This parameter allows overwriting existing FEU users. In conjunction with the preferences in the SelfRegistration admin panel you can specify what data will be used to specify what data will be used to uniquely identify a user account&#039;;';
$lang['into_additionalgroups_matchfields'] = 'Benoem welke velden moeten worden gebruikt om een gebruiker te identificeren als unieke gebruiker. Dit kan gebruikt worden als een gebruiker wil registreren terwijl deze al een account heeft onder een andere gebruikersnaam.';
$lang['prompt_additionalgroups_matchfields'] = 'Wanneer een bestaande account wordt overschreven dan moeten de volgende velden overeenkomen';
$lang['prompt_reg_additionalgroups'] = 'Bestaande gebruikers toestaan om zich te registreren voor extra groepen?';
$lang['prompt_additionalgroups_settings'] = 'Extra Groep Instellingen';
$lang['prompt_general_settings'] = 'Algemene Instellingen';
$lang['prompt_security_settings'] = 'Beveiliging Instellingen';
$lang['error_uniquefield'] = 'De ingevoerde waarde &quot;%s&quot; is al in gebruik door een andere geregistreerde gebruiker';
$lang['help_param_action'] = 'This parameter dictates the behaviour of the module. 
<ul>
  <li><strong>default</strong>
   <p>This is the default action.  Based on the <em>(deprecated></em> mode parameter <em>(see below)</em> it will display either the user registration form, the verify form, or another form.</li>
  </li>
  <li>reguser_link
   <p>Display a link to the user registration form.</p>
  </li>
</ul>';
$lang['help_param_destpage'] = 'Alleen toepasbaar in de  action=reguser_link. Met deze parameter kunt u de doel pagina voor de link instellen (alias of page_id).';
$lang['help_param_group'] = 'Toepasbaar in de action=reguser_link of action=register. Met deze parameter kunt u een groep specificeren waar de gebruiker in geregistreerd zal worden.';
$lang['help_param_onlyhref'] = 'Geldt alleen bij de action=reguser_link. Met deze parameter kunt u instellen dat alleen het url gedeelte van de link weergegeven wordt.';
$lang['help_param_linktext'] = 'Geldt alleen bij de action=reguser_link.  Hiermee kan de linktekst worden opgegeven.  Deze parameter wordt genegeerd als de onlyhref parameter gebruikt is.';
$lang['help_param_noinline'] = 'Toepasbaar voor veel actions. Deze parameter overschrijft de voorkeur in het admin panel en zorgt ervoor dat de output van een gegenereerde link of formulier niet inline wordt getoond. Bijvoorbeeld noinline=1 in combinatie met de default action zal tot gevolg hebben dat de module-output de {content} tag zal vervangen.';
$lang['error_noregister'] = 'U kunt zich niet registreren als lid van deze groep';
$lang['prompt_noregister'] = 'Sta niet toe dat bezoekers zich registreren voor deze groepen';
$lang['error_nosecondemailaddress'] = 'U heeft uw e-mail adres niet twee keer ingevoerd';
$lang['push_live'] = 'Deze gebruiker direct naar FEU';
$lang['areyousure_pushuser'] = 'Weet je zeker dat je deze gebruiker naar FEU wilt duwen zonder het validatie proces te hebben afgerond?';
$lang['delete'] = 'Verwijderen';
$lang['login_afterverify'] = 'Log de gebruiker na de bevestiging stap automatisch aan';
$lang['skip_final_msg'] = 'Laatste bericht niet tonen na registratie';
$lang['redirect_afterregister'] = 'Te openen PageID/Alias na registratie';
$lang['redirect_afterverify'] = 'Te openen PageID/Alias na bevestiging';
$lang['use_inline_forms'] = 'Gebruik &quot;Inline&quot; formulieren <em>(module aanroep wordt vervangen, niet de inhoud)</em>';
$lang['error_codesdontmatch'] = 'De ingevoerde validatiesleutel is ongeldig';
$lang['event_description_onNewUser'] = 'Een tag die wordt aangeroepen als een nieuwe gebruiker het registratieformulier heeft ingevuld';
$lang['event_description_onUserRegistered'] = 'Een tag die wordt aangeroepen als een gebruiker zijn gegevens heeft gevalideerd en nu volledig is geregistreerd.';
$lang['event_help_onNewUser'] = '<p>Een gebeurtenis die wordt aangeroepen als een nieuwe gebruiker het registratieformulier heeft ingevuld</p>
<h4>Parameters</h4>
<ul>
<li><em>username</em> - De geselecteerde gebruikersnaam</li>
<li><em>email</em> - Het geselecteerde emailadres</li>
</ul>
';
$lang['event_help_onUserRegistered'] = '<p>Een gebeurtenis die wordt aangeroepen als een gebruiker zijn gegevens heeft gevalideerd en nu volledig is geregistreerd.</p>
<h4>Parameters</h4>
<ul>
<li><em>username</em> - De geregistreerde gebruikersnaam</li>
<li><em>id</em> - De nieuwe gebruikers uid</li>
</ul>
';
$lang['confirm_submitprefs'] = 'Wijzig beheersvoorkeuren?';
$lang['info_admin_password'] = 'Laat dit veld leeg om het gebruikerswachtwoord te behouden';
$lang['info_admin_repeatpassword'] = 'Laat dit veld leeg om het gebruikerswachtwoord te behouden';
$lang['error_emaildoesnotmatch'] = 'E-mailadressen komen niet overeen';
$lang['force_email_twice'] = 'Verplicht gebruikers om hun emailadres twee maal in te voeren';
$lang['again'] = 'opnieuw';
$lang['deleteselusers'] = 'Verwijder geselecteerde gebruikers';
$lang['error_nopropdefns'] = 'Geen eigenschapsdefinitie of een probleem om deze uit de database te halen';
$lang['error_nogroups'] = 'Geen groepen of een probleem met het ophalen van de groepenlijst';
$lang['error_dberror'] = 'Database-fout';
$lang['title_post_sendanotheremail_template'] = 'Post verloren e-mailsjabloon';
$lang['title_sendanotheremail_template'] = 'Verloren e-mailsjabloon';
$lang['clickhere'] = 'Klik hier';
$lang['msg_sendanotheremail'] = 'Ik heb het registratieformulier al ingevuld, maar heb nog geen email ontvangen. Kunt u het opnieuw versturen?';
$lang['sendanotheremail_template'] = 'Verloren e-mailsjabloon';
$lang['info_userverified'] = 'Een nieuwe gebruiker is toegevoegd aan FrontEndUsers';
$lang['edit'] = 'Bewerk';
$lang['unknown'] = 'Onbekend';
$lang['select'] = 'Selecteer';
$lang['check_all'] = 'Selecteer alles';
$lang['uncheck_all'] = 'Deselecteer alles';
$lang['send_adjustmentemail'] = 'Stuur een e-mail naar de gebruiker';
$lang['txt_adjustmentemail'] = '(informeert de gebruiker dat zijn account is aangepast';
$lang['txt_changepassword'] = 'Vul deze velden in om het gebruikerswachtwoord te veranderen';
$lang['edituser'] = 'Bewerk gebruiker';
$lang['areyousure_deleteuser'] = 'Weet u zeker dat deze, deels geregistreerde gebruiker, verwijderd moet worden?';
$lang['hdr_userid'] = 'Gebruikers-ID';
$lang['hdr_username'] = 'Gebruikersnaam';
$lang['hdr_grpname'] = 'Groep';
$lang['hdr_created'] = 'Aangemaakt';
$lang['hdr_email'] = 'E-mail';
$lang['usersfound'] = 'gebruiker(s) gevonden (beperkt tot maximaal 250)';
$lang['users'] = 'Gebruikers';
$lang['list1day'] = 'Toon alle invoer van meer dan &eacute;&eacute;n dag oud';
$lang['subject'] = 'Onderwerp van uitgaande e-mail';
$lang['htmlbody'] = 'HTML tekst van de e-mail';
$lang['textbody'] = 'Platte tekst van de e-mail';
$lang['prompt_numresetrecord'] = 'Een aantal gebruikers is zich aan het registreren. Dit zijn er nu:';
$lang['remove1week'] = 'Verwijder alle invoer van meer dan een week oud';
$lang['remove1month'] = 'Verwijder alle invoer van meer dan een maand oud';
$lang['remove1day'] = 'Verwijder alle invoer van meer dan een dag oud';
$lang['removeall'] = 'Verwijder alle invoer';
$lang['areyousure'] = 'Weet u het zeker?';
$lang['registration_info_edited'] = 'Uw registratie informatie is aangepast';
$lang['registration_confirmation'] = 'Registratiebevestiging';
$lang['user_registration'] = 'Registreer';
$lang['finalmessage_template'] = 'Afrondingsboodschapsjabloon';
$lang['title_verifyregistration'] = 'Verifieer registratie';
$lang['code'] = 'Validatiesleutel';
$lang['default'] = 'Activeer standaardwaarden';
$lang['error_noproperties'] = 'Geen eigenschappen voor deze gebruiker gevonden';
$lang['error_noproprelations'] = 'Geen eigenschapsrelaties';
$lang['error_emailinvalid'] = 'Ongeldig e-mailadres';
$lang['error_noemailaddress'] = 'Geen geldig e-mailadresveld gevonden';
$lang['error_requiredfield'] = 'Veld %s moet ingevuld zijn';
$lang['registration1_template'] = 'Registratiesjabloon 1';
$lang['registration2_template'] = 'Registratiesjabloon 2';
$lang['emailconfirm_template'] = 'Bevestigingse-mail-sjabloon';
$lang['emailuseredited_template'] = 'Gebruikersinfo-sjabloon';
$lang['preferences'] = 'Voorkeuren';
$lang['error_usernotfound'] = 'Gebruiker niet gevonden';
$lang['error_invalidusername'] = 'Gebruikersnaam is ongeldig (te lang, te kort of ongeldige karakters). Tip: gebruikersnamen mogen alleen alfanumerieke karakters en geen spaties bevatten';
$lang['error_invalidemail'] = 'E-mail is niet geldig';
$lang['error_usernametaken'] = 'De gebruikersnaam is al in gebruik';
$lang['error_passwordsdontmatch'] = 'Fout: Wachtwoorden komen niet overeen';
$lang['error_invalidpassword'] = 'Wachtwoord is fout (wachtwoorden moeten tussen de %s en %s karakters lang zijn)';
$lang['error_emptyusername'] = 'Gebruikersnaam kan niet leeg zijn';
$lang['error_emptyemail'] = 'E-mail moet ingevuld worden';
$lang['repeatpassword'] = 'Wachtwoord (opnieuw)';
$lang['password'] = 'Wachtwoord';
$lang['username'] = 'Gebruikersnaam';
$lang['email'] = 'E-mail';
$lang['captcha_title'] = 'Voer de tekst uit het plaatje in';
$lang['error_insufficientparams'] = 'Onvoldoende (of incorrecte) parameters opgegeven aan de module';
$lang['error_nofeusersmodule'] = 'Kon geen verbinding met de FrontEndUsers-module krijgen';
$lang['error_nosuchgroup'] = 'Opgegevens groepsnaam bestaat niet';
$lang['error_captchamismatch'] = 'De tekst uit het plaatje is niet goed ingevoerd';
$lang['send_emails_to'] = 'Registratie e-mail moet verstuurd worden aan';
$lang['require_email_confirmation'] = 'Verplicht de gebruiker om de registratie te bevestigen via e-mail';
$lang['notify_on_registration'] = 'Stuur een e-mailbevestiging als iemand zich registreert';
$lang['cancel'] = 'Annuleer';
$lang['submit'] = 'Verstuur';
$lang['friendlyname'] = 'Self Registration-module';
$lang['postinstall'] = 'De installatie is afgerond. Vergeet niet om de rechten van &quot;Modify SelfRegistration Settings&quot; in te stellen. Als de Captcha module ge&iuml;nstalleerd is, dan staat deze functionaliteit standaard aan. We raden u sterk aan om deze module te installeren. Als de Captcha module ge&iuml;nstalleerd is en u wilt deze uitschakelen, gebruik dan de nocaptcha parameter in de selfregistration tag';
$lang['postuninstall'] = 'De Self Registration-module is ge&iuml;nstalleerd';
$lang['uninstalled'] = 'Module gedeinstalleerd';
$lang['installed'] = 'Moduleversie %s ge&iuml;nstalleerd.';
$lang['prefsupdated'] = 'Modulevoorkeuren ge&uuml;pdate.';
$lang['accessdenied'] = 'Toegang geweigerd. Controleer uw rechten.';
$lang['error'] = 'Fout!';
$lang['upgraded'] = 'Module opgewaardeerd naar versie %s.';
$lang['title_mod_prefs'] = 'Modulevoorkeuren';
$lang['title_mod_admin'] = 'Modulebeheerpaneel';
$lang['title_admin_panel'] = 'Self Registration-module';
$lang['moddescription'] = 'Een module die het FrontEnd gebruikers mogelijk maakt zichzelf te registreren.';
$lang['welcome_text'] = '<p>Welkom bij de Self Registration-module.</p>';
$lang['enable_whitelist'] = 'Activeer Whitelist';
$lang['whitelist'] = 'Lijst met whitelist gebruikersnaam/email. E&eacute;n per regel. (gebruik * voor wildcards)';
$lang['whitelist_trigger_message'] = 'Bericht om weer te geven of een whitelist regel is uitgevoerd';
$lang['dont_use'] = 'Geen Whitelist';
$lang['no_matches'] = 'Sta niet toe dat overeenkomende gebruikersnaam/e-mail zich registreren';
$lang['only_matches'] = 'Laat alleen overeenkomende gebruikersnaam/e-mail zich registreren';
$lang['help'] = '<h3>What Does This Do?</h3>
<p>This module is designed to allow front end users to register themselves and fill in the required information.  It then sends a confirmation email, with a link to a second page that must be completed before the registration is complete.  Once registration is complete, a user account is created in the front end users module.</p>
<p>In order to use this module, you must create a property of type &quot;Email Address&quot; in the FrontendUsers module, and associate that property with the group to be used for self registration.</p>
<h3>How Do I Use It</h3>
<p>You place the followng tag into your page {cms_module module=SelfRegistration group=usergroup}</p>
<p>You must have previously created properties and user groups in the FrontEndUsers module in order for this to work properly.</p>
<h3>Parameters</h3>
<p><strong>mode</strong>&nbsp;<em>optional</em> - possible values are &quot;signup&quot; and &quot;verify&quot;.  If this parameter is not specified, &quot;signup&quot; is assumbed.</p>
<p><strong>group</strong>&nbsp;<em>optional</em> - This parameter is required if mode is &quot;signup&quot;, or if mode is left empty.</p>
<p><strong>nocaptcha</strong>&nbsp;<em>optional</em> - This will disable captcha on the signup form. By default, if the Captcha module is installed, captcha support is provided.  This parameter disables it.</p>
<h3>Support</h3>
<p>This module does not include commercial support. However, there are a number of resources available to help you with it:</p>
<ul>
<li>For the latest version of this module, FAQs, or to file a Bug Report or buy commercial support, please visit calguy&#039;s
module homepage at <a href="http://techcom.dyndns.org">techcom.dyndns.org</a>.</li>
<li>Additional discussion of this module may also be found in the <a href="http://forum.cmsmadesimple.org">CMS Made Simple Forums</a>.</li>
<li>The author, calguy1000, can often be found in the <a href="irc://irc.freenode.net/#cms">CMS IRC Channel</a>.</li>
<li>Lastly, you may have some success emailing the author directly.</li>  
</ul>
<p>As per the GPL, this software is provided as-is. Please read the text
of the license for the full disclaimer.</p>

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
Or read it <a href="http://www.gnu.org/licenses/licenses.html#GPL">online</a></p>
<h3>Sponsors</h3>
<p>There have been many sponsors for this module, some of these are listed below:</p>
<ul.>
 <li><a href="http://www.matterhornmarketing.com">Matterhorn Marketing</a></li>
 <li><a href="http://www.bpti.eu">Baltic Institute of Advanced Technology</a></li>
</ul>';
$lang['utma'] = '156861353.1152840231.1312877699.1312877699.1312930185.2';
$lang['utmz'] = '156861353.1312877699.1.1.utmcsr=forum.cmsmadesimple.org|utmccn=(referral)|utmcmd=referral|utmcct=/viewtopic.php';
$lang['qca'] = 'P0-1408926661-1309528475256';
$lang['utmb'] = '156861353';
$lang['utmc'] = '156861353';
?>
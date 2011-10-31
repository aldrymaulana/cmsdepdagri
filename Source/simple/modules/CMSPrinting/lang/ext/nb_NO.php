<?php
$lang['friendlyname'] = 'Utskriftvennlige Sider';
$lang['description'] = 'Denne modulen gj&oslash;r at en lett kan tilby utskriftvennlige sider til CMSMS. 
Eller alternativt s&aring; kan veldig enkle PDF-filer med sidens hovedinnhold lages p&aring; direkten.';
$lang['postinstall'] = 'Modulen ble vellykket installert';
$lang['confirmuninstall'] = 'Er du sikker p&aring; at modulen skal avinnstalleres?';
$lang['postuninstall'] = 'Modul er avinstallert.';
$lang['linktemplate'] = 'Linkmal';
$lang['printtemplate'] = 'Utskriftsmal';
$lang['templatesaved'] = 'Malen ble lagret';
$lang['templatereset'] = 'Malen ble tilbakestilt til standard innhold';
$lang['confirmresettemplate'] = 'Er du sikker p&aring; at du vil sette denne malen tilbake til standard?';
$lang['reset'] = 'Tilbakestill til standard';
$lang['save'] = 'Lagre';
$lang['upgraded'] = 'har blitt oppgradert til versjon %s';
$lang['savetemplate'] = 'Lagre mal';
$lang['savesettings'] = 'Lagre innstillinger';
$lang['template'] = 'Mal';
$lang['notemplatecontent'] = 'Ikke noe nytt malinnhold ble oppgitt...';
$lang['defaultlinktext'] = 'Skriv ut denne siden';
$lang['backbuttontext'] = 'Tilbake';
$lang['overridestylereset'] = 'Overstyrings stilarket har blitt tilbakestilt';
$lang['overridestylesaved'] = 'Overstyrings stilarket har blitt lagret';
$lang['overridestyle'] = 'Overstyrings stilark';
$lang['confirmresetstyle'] = 'Er du sikker p&aring; at stilarket skal tilbakestilles?';
$lang['stylesheet'] = 'Stilark';
$lang['help_text'] = 'Overstyr standardtekst for utskrift/PDF linken';
$lang['help_popup'] = 'Sett til  &#039;true&#039; og utskriftsiden vil bli &aring;pnet i et nytt vindu.';
$lang['help_script'] = 'Sett til &#039;true&#039; og et skriv side javascript vil automatisk vise utskriftsdialogen.';
$lang['help_showbutton'] = 'Sett til &#039;true&#039; for &aring; vise en grafisk knapp';
$lang['help_class'] = 'Class attributt for lenken, standard er &#039;noprint&#039;';
$lang['help_src_img'] = 'Vis dette bildet i stedenfor standardbildet';
$lang['help_class_img'] = 'Class attributt for < img > tag dersom showbutton er satt.';
$lang['help_more'] = 'Plasser tilleggsinformasjon i < a > lenken';
$lang['help_onlyurl'] = 'Skriver bare ut url&#039;en, ikke en fullstendig lenke';
$lang['help_includetemplate'] = 'Hvis satt til &quot;true&quot; vil dette alternativet gj&oslash;re at utskrift/pdf prosesserer hele malen, ikke bare hovedinnholdet. Dette krever en del arbeid p&aring; print-spesifikke stiler med mediatype &#039;print&#039; aktivert.';
$lang['help'] = '<b>Hva gj&oslash;r denne modulen?</b>
<br/>
Dette tillater deg &aring; sette inn en lenke i sider/maler som sender den bes&oslash;kende til en versjon av siden som er bedre egnet for utskrift. Den kan ogs&aring; lenke til en on-the-fly generert pdf versjon av siden.
<br/>
Vennligst bemerk at om ikke parameteren <i>includetemplate=true</i> er benyttet, s&aring; vil kun sidens hovedinnhold bli skrevet. OG bemerk ogs&aring; at pdf-filen som skrives mulig kke har mye likhet med din side, men hovedinnholdet skulle v&aelig;re med.
<br/><br/>
<b>Hvordan bruker jeg  denne modulen?</b>
<br/>
Du installerer modulen, bes&oslash;ker administrasjonspanelet og ser gjennom/endrer malene for lenken og for den utskriftstilrettelagte siden.
<br/>
Du setter inn noe slikt som dette i din side eller sidemal:
<pre>
{cms_module module=&#039;printing&#039; <i>parametre</i>}
</pre>
eller bare
<pre>
{print <i>parametre</i>}
</pre>
ved &aring; benytte print-plugin.
<br/>';
$lang['utmz'] = '156861353.1302963072.3784.82.utmcsr=cmsms.eu|utmccn=(referral)|utmcmd=referral|utmcct=/';
$lang['utma'] = '156861353.179052623084110100.1210423577.1306668753.1306670563.3885';
$lang['qca'] = '1210971690-27308073-81952832';
$lang['utmb'] = '156861353.2.10.1306670563';
$lang['utmc'] = '156861353';
?>
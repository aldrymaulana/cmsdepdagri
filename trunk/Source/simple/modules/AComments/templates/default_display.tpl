<div id="comments">

{if $items}
<ul>
{/if}
{foreach from=$items item=entry}
	<li class="{$entry->cssclass}">{if $entry->comment_title}<strong>{$entry->comment_title}</strong><br />{/if}
	{if $entry->comment_author}
		{if $entry->author_website}<a href="{$entry->author_website}" target="_blank">{$entry->comment_author}</a> - 
		{else}{$entry->comment_author} - 
		{/if}
	{else if $entry->author_website}<a href="{$entry->author_website}" target="_blank">{$entry->author_website}</a> - 
	{/if}
	{$entry->date}<br />
	{$entry->comment_data}
	</li>
{/foreach}
{if $items}
</ul>
{/if}

{if FALSE == $errormessage}
{startExpandCollapse id="name" title="$addacomment"}
{else}
{$errormessage}
{/if}
<h3>{$addacomment}</h3>

{$startform}
{*<form id="{$id}moduleform_1" method="post" action="{$returnurl}" class="cms_form">*}
{$image}

<table>
	<tr>
		<td>{$titletxt}:</td>
		<td>{$inputtitle}</td>
	</tr>
	<tr>
		<td>{$yournametxt}(*):</td>
		<td>{$inputyourname}</td>
	</tr>
	<tr>
		<td>{$emailtxt}:</td>
		<td>{$inputemail}</td>
	</tr>
	<tr>
		<td>{$notifytxt}:</td>
		<td>{$inputnotify}</td>
	</tr>
	<tr>
		<td>{$websitetxt}:</td>
		<td>{$inputwebsite}</td>
	</tr>
	<tr>
		<td>{$commenttxt}(*):</td>
		<td>{$inputcomment}</td>
	</tr>
{if $spamprotect}
	<tr>
		<td>{$entercodetxt}:</td>
		<td>{$spamprotectimage}<br />{$inputentercode}</td>
	</tr>
{/if}
	<tr>
		<td>&nbsp;</td>
		<td>{$submit} {$cancel}</td>
	</tr>
</table>

{*</form>*}
{$endform}
{if FALSE == $errormessage}
{stopExpandCollapse} 
{/if}

{if $trackback == 1}
<span class="trackback"><a href="{$trackbackurl}" rel="nofollow">Trackback-URL</a></span>
<!--
<rdf:RDF
	xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
	xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:trackback="{$trackbackurl}">
<rdf:Description
	rdf:about="{$redirecturl}"
	dc:title="{$pagetitle}"
	dc:identifier="{$redirecturl}"
	trackback:ping="{$trackbackurl}" />
</rdf:RDF>
-->
{/if}

</div>
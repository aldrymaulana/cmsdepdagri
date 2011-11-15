{if $itemcount > 0}

<table cellspacing="0" class="pagetable">
	<thead>
		<tr>
			<th>{$filenametext}</th>
			<th class="pageicon">&nbsp;</th>
		</tr>
	</thead>
	<tbody>
	{foreach from=$items item=entry}
		<tr class="{$entry->rowclass}" onmouseover="this.className='{$entry->rowclass}hover';" onmouseout="this.className='{$entry->rowclass}';">
			<td style="width:50%">{$entry->filename}</td>
			<td style="width:50%; text-align:right">{$entry->importlink}</td>
		</tr>
	{/foreach}
	</tbody>
</table>
{else}
<h4>{$nofilestext}</h4>
{/if}

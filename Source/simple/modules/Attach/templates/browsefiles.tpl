<h2>{$browsetitle}</h2>
{if $instantsearch}<div style="float: right;">{$instantsearch}</div>{/if}
<p>{$showingdir}</p>
<div style="clear: right;">
<table id="filelist_table" cellspacing="0" class="pagetable">
<thead><tr>
	<th>{$sortlinks[0]}{$headers->filename}</th>
	<th>{$numeric_sortlinks[1]}{$headers->imagesize}</th>
	<th>{$sortlinks[2]}{$headers->ext}</th>
	<th>{$numeric_sortlinks[3]}{$headers->size}</th>
	<th>{$numeric_sortlinks[4]}{$headers->modified}</th>
	<th>{$headers->deletelink}</th>
</tr></thead>
<tbody>
{cycle values="row2,row1" assign=rowclass reset=true}
{foreach from=$itemlist item=oneitem}
{cycle values="row2,row1" assign=rowclass}
<tr class="{$rowclass}" onmouseover="this.className='{$rowclass}hover';" onmouseout="this.className='{$rowclass}';">
	<td class="searchable">{$oneitem->pic} {$oneitem->thelink}</td>
	<td class="searchable">{$oneitem->imagesize}</td>
	<td>{$oneitem->ext}</td>
	<td>{$oneitem->size}</td>
	<td>{$oneitem->modified}</td>
	<td>{$oneitem->deletelink}</td>
</tr>
{/foreach}
</tbody>
</table>
</div>
<h3>{$uploadtitle}</h3>
{$formstart}
<p>{$fileinput} {$submit}</p>
{$formend}

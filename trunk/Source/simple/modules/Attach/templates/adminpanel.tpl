<div>
<table id="attachmentlist" cellspacing="0" class="pagetable">
<thead><tr>
	{foreach from=$adminshow item=column}
		<th>{$column[0]}</th>
	{/foreach}
</tr></thead>
<tbody>
{cycle values="row2,row1" assign=rowclass reset=true}
{foreach from=$itemlist item=oneitem}
{cycle values="row2,row1" assign=rowclass}
<tr class="{$rowclass}" onmouseover="this.className='{$rowclass}hover';" onmouseout="this.className='{$rowclass}';">
	{foreach from=$adminshow item=column}
		{assign var=oneval value=$column[1]}
		<td{if $column[2]} class="searchable"{/if}>{$oneitem->$oneval}</td>
	{/foreach}
</tr>
{/foreach}
</tbody>
</table>
</div>

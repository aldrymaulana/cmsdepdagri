{$StarForm}{$hidden}
<table cellspacing="0" class="pagetable">
	<thead>
		<tr>
			<th class="pageicon">&nbsp;</th>
			<th class="pageicon">&nbsp;</th>
			<th class="pagew10">&nbsp;</th>
			<th class="pagew10">&nbsp;</th>
			<th class="pagew50">{$titlename}</th>
			<th>&nbsp;</th>
		</tr>
	</thead>
	<tbody>
	{foreach from=$dirs  item=entry}
	
		<tr>
			<td>&nbsp;</td>
			<td>{$entry->icon}</td>
			<td>{$entry->name}</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>

		</tr>
	{/foreach}
	{foreach from=$files  item=entry}
		<tr class="row{cycle values='2,1'  advance=false}" onmouseover="this.className='row{cycle values='2,1' advance=false}hover';" onmouseout="this.className='row{cycle values='2,1'}';" style="{$entry->style}">
            <td></td>
			<td>{$entry->select}</td>
			<td style="text-align: left;" onmouseover="{$entry->onmouseover}" onmouseout="{$entry->onmouseout}">
				<a href="{$entry->imagepath}" target="_blank">{$entry->icon}</a>
				<div style="display:none;position:absolute;margin-top:20px;background-color:white;padding:5px;border:1px solid black" id="{$entry->id}"><img alt="" src="{$entry->thumbpath}" /></div>
			</td>
			<td>{if $entry->current == ''}{$entry->usepicture}{/if}</td>
			<td>{$entry->name}</td>
			<td><strong>{$entry->current}</strong></td>
		</tr>
	{/foreach}
	</tbody>
</table>
{$selectallscript}
<div style="float:right;">{$submit}{$cancel}</div>
{$selectall}
{$Formend}

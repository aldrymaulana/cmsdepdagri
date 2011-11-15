
{if $error != ''}
<p style='color:red'><strong>{$error}</strong></p>
{/if}
<p>{$paginator}</p> 
<table cellspacing="0" class="pagetable">
	<thead>
		<tr>
			<th>{$date}</th>
			<th>{$user}</th>
			<th>{$module}</th>
			<th>{$pageid}</th>
			<th>{$comment}</th>
			<th class="pageicon">&nbsp;</th>
			<th class="pageicon">&nbsp;</th>
			<th class="pageicon">&nbsp;</th>
		</tr>
	</thead>
	<tbody>
	{section name=c loop=$comments}
		<tr class="{cycle values='row1, row2'}" onmouseover="this.className='{cycle values='row1, row2'}hover';" onmouseout="this.className='{cycle values='row1, row2'}';">
			<td width="100">{$comments[c].com->comment_date|date_format:"Le %d/%m/%Y &agrave; %H:%M"}</td>
			<td width="100">{$comments[c].com->comment_author_name}</td>
			<td width="80">{$comments[c].com->module_name}</td>
			<td width="50">{$comments[c].com->page_id}</td>
			<td>{$comments[c].com->comment_data|truncate:150}</td>
			<td>{$comments[c].linkEdit}</td>
			<td>{$comments[c].linkDelete}</td>
			<td>{$comments[c].linkActive}</td>
		</tr>
	{sectionelse}
		<tr class="row1"><td colspan="8">{$nocomment}</td></tr>
	{/section}
	</tbody>
</table>
<p>{$paginator}</p>

{if $error != ''}
<p style='color:red'><strong>{$error}</strong></p>
{/if}
{$startForm}
{$hiddens}
<table cellspacing="0" class="pagetable">
	<tr>
		<td width="150">{$user}</td>
		<td>{$com->comment_author_name}</td>
	</tr>
	<tr>
		<td width="150">{$date}</td>
		<td>{$com->comment_date|date_format:"Le %d/%m/%Y &agrave; %H:%M"}</td>
	</tr>
	<tr>
		<td width="150">{$comment}</td>
		<td>{$inputComment_data}</td>
	</tr>
	<tr>
		<td width="150">{$visible}</td>
		<td>{$inputActive}</td>
	</tr>
	<tr>
		<td colspan="2">{$submit}</td>
	</tr>
</table>
{$endForm}
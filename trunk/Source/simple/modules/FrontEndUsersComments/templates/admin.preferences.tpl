
<div class="pageoverflow">
{if $error != ''}
<p style='color:red'><strong>{$error}</strong></p>
{/if}
{$startForm}
	<table cellspacing="0" class="pagetable">
		<tbody>
			<tr class="row1">
				<td width="250">{$notify}</td>
				<td>{$inputNotify}</td>
			</tr>
			<tr class="row2">
				<td width="250">{$notify_address}</td>
				<td>{$inputNotifyAddress}</td>
			</tr>
			<tr class="row1">
				<td width="250">{$disable_html}</td>
				<td>{$inputDisable_html}</td>
			</tr>
			<tr class="row2">
				<td width="250">{$nbPerPage_admin}</td>
				<td>{$inputNbPerPage_admin}</td>
			</tr>
			<tr class="row1">
				<td width="250">{$moderate}</td>
				<td>{$inputModerate}</td>
			</tr>
			<tr>
				<td colspan="2">{$submit}</td>
			</tr>
		</tbody>
	</table>
{$endForm}
</div>
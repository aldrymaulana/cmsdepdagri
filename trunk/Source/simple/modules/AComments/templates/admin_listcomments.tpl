<div class="pageoverflow">
    <table cellspacing="0" class="pagetable">
        <thead>
            <tr>
                <th>{$id}</th>
				<th>{$comment}</th>
				<th>{$author}</th>
				<th>{$active}</th>
				<th>{$editor}</th>
				<th>{$trackback}</th>
				<th>{$date}</th>
				<th class="pageicon">&nbsp;</th>
				<th class="pageicon">&nbsp;</th>
            </tr>
        </thead>
        {foreach from=$items item=entry}
            {cycle values="row1,row2" assign='rowclass'}
            <tr class="{$entry->rowclass}" onmouseover="this.className='{$entry->rowclass}hover';" onmouseout="this.className='{$entry->rowclass}';">
				<td>{$entry->id}</td>
				<td>{$entry->comment}</td>
				<td>{$entry->author}</td>
				<td>{$entry->active}</td>
				<td>{if $entry->editor==1}<span style="color:#0a0;font-weight:bold;">{$yes}</span>{else}{$no}{/if}</td>
				<td>{if $entry->trackback==1}<span style="color:#0a0;font-weight:bold;">{$yes}</span>{else}{$no}{/if}</td>
				<td>{$entry->date}</td>
				<td>{$entry->editlink}</td>
				<td>{$entry->deletelink}</td>
			</tr>
        {/foreach}
    </table>
</div>
<div class="pageoverflow">
    <p class="pageoptions">{$newcommentlink}</p>
</div>
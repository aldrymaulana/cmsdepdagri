{if $message != ''}
  {if $error != ''}
    <p><font color="red">{$message}</font></p>
  {else}
    <p>{$message}</p>
  {/if}
{/if}

{if $noform == ''}
{$startform}{$input_hidden}

<div class="pageoptions">
  {$mod->Lang('category')}:&nbsp;{$input_category}
  &nbsp;{$mod->Lang('pagelimit')}:
  <select name="{$actionid}input_pagelimit">
    {html_options options=$pagelimits selected=$pagelimit}
  </select>
  <input type="submit" name="{$actionid}submitfilter" value="{$mod->Lang('filter')}"/>

  {if isset($npages) && $npages > 0}
  <div style="float: right;">
   {if isset($firstpage_url)}
     <a href="{$firstpage_url}">&lt;&lt;</a>&nbsp;
     <a href="{$prevpage_url}">&lt;</a>&nbsp;
   {/if}
   {$mod->Lang('page')}&nbsp;{$curpage}&nbsp;{$mod->Lang('of')}&nbsp;{$npages}
   {if isset($nextpage_url)}
     &nbsp;<a href="{$nextpage_url}">&gt;</a>
     &nbsp;<a href="{$lastpage_url}">&gt;&gt;</a>
   {/if}
  </div>
  {/if}
</div>
{$endform}


<div class="pageoptions">
 {$addfile_link}
</div>
{if $itemcount > 0}
<table cellspacing="0" class="pagetable">
	<thead>
		<tr>
			<th>&nbsp;</th>
	                <th>&nbsp;</th>
			<th width="15%">{$titletext}</th>
			<th width="40%">{$summarytext}</th>
			<th>{$sizetext}</th>
			<th>{$authortext}</th>
			<th>{$iptext}</th>
			<th>{$postdatetext}</th>
			<th>{$dltext}</th>
			<th class="pageicon">&nbsp;</th>
			<th class="pageicon">&nbsp;</th>
			<th class="pageicon">&nbsp;</th>
			<th class="pageicon">&nbsp;</th>
		</tr>
	</thead>
	<tbody>
	{foreach from=$items item=entry}
		<tr class="{$entry->rowclass}">
			<td>{$entry->id}</td>
			<td><img src="{$entry->icon}" height="16" width="16" alt="{$entry->icon}"/></td>
			<td><a href="{$entry->editurl}">{$entry->name}</a></td>
			<td>{$entry->summary}</td>
			<td>{$entry->size}</td>
			<td>{$entry->author}</td>
			<td>{$entry->ip}</td>
			<td>{$entry->date}</td>
			<td>{$entry->downloads}</td>
			<td>{$entry->timelimited_link}</td>
			<td>{$entry->viewlink}</td>
			<td>{$entry->editlink}</td>
			<td>{$entry->deletelink}</td>
		</tr>
	{/foreach}
	</tbody>
</table>
{if $itemcount > 10}
<div class="pageoptions">
 {$addfile_link}
</div>
{/if}
{else}
<div class="pageoverflow">
   <p class="pageoptions">No Files Detected</p>
</div>
{/if}
{/if}
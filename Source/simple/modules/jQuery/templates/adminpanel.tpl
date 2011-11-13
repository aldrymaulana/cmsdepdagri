{$tab_headers}

{$start_scripts_tab}
{if $scripts|@count > 0}
<table cellspacing="0" class="pagetable">
   <thead>
      <tr>
         <th>{$title_script}</th>
         <th></th>
		<th>Load by default</th>
		<th>Load in headers</th>
         <th class="pageicon" style="width:20px"> </th>
         <th class="pageicon" style="width:20px"> </th>
      </tr>
   </thead>
   <tbody>
{foreach from=$scripts item=entry}
		<tr class="{cycle values="row1,row2"}" onmouseover="this.className='{cycle values="row1,row2"}hover';" onmouseout="this.className='{cycle values="row1,row2"}';">
		   <td>{$entry->title}</td>
			<td>{literal}{jQuery action="load" script="{/literal}{$entry->getId()}{literal}"}{/literal}</td>
			<td>{$entry->load_default_state}</td>
			<td>{$entry->in_header_state}</td>
		   <td>{$entry->edit}</td>
		   <td>{$entry->delete}</td>
		</tr>
{/foreach}
	</tbody>
</table>
{/if}
<p>{$add_script}</p>

{$end_tab}

{$start_plugins_tab}

{if $plugins|@count > 0}
<table cellspacing="0" class="pagetable">
   <thead>
      <tr>
         <th>{$title_plugin}</th>
		 		 <th>{$title_path}</th>
         <th class="pageicon" style="width:20px">{$is_active}</th>
      </tr>
   </thead>
   <tbody>
{foreach from=$plugins item=entry}
		<tr class="{cycle values="row1,row2"}" onmouseover="this.className='{cycle values="row1,row2"}hover';" onmouseout="this.className='{cycle values="row1,row2"}';">
		   <td>{$entry->name}</td>
		   <td>{$entry->path}</td>
		   <td>{$entry->active}</td>
		</tr>
{/foreach}
	</tbody>
</table>
{/if}


{*$plugins_startform}
{$submit_button}
{$is_submitted}
{$plugins_endform*}
{$end_tab}

{$start_options_tab}
{if isset($form)}
	{$form->getHeaders()}
	{$form->showWidgets('<div class="pageoverflow">
		<p class="pagetext">%LABEL%:</p>
		<p class="pageinput">%INPUT%</p>
	</div>')}	
	<p style="text-align: right;">
		{$form->getButtons()}
	</p>
	{$form->getFooters()}
{/if}
{$end_tab}

{$tab_footers}
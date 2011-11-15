
<div>
	{if $need2beLoggedIn ne ''}
		<div>{$need2beLoggedIn}</div>
	{else}
		<div>{$addComment}</div>
		<div>
		{$startForm}
			{$hiddens}
			<div>{$inputComment}</div>
			<div>{$submit}</div>
		{$endForm}
		</div>
	{/if}

	<ul>
	{section name=comment loop=$comments_list}
		<li>Par {$comments_list[comment]->comment_author_name}, {$comments_list[comment]->comment_date|date_format:"Le %d/%m/%Y &agrave; %H:%M"}<br />
			{$comments_list[comment]->comment_data}
		</li>
	{sectionelse}
		<li>{$noComment}</li>
	{/section}
	</ul>
	{if $paginator ne ''}
	<div>{$paginator}</div>
	{/if}
</div>
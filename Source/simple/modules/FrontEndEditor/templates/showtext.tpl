<div id="mblock">	
    {section name=element loop=$list}
	<div id="changedate">
		{$list[element].modified_date}
	</div>
	<div id="text">
		{$list[element].content}
	</div>
	{/section}

</div>
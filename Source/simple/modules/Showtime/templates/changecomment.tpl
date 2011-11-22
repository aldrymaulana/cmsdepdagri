{$FormStart}
	<div class="pageoverflow">
	    <p class="pagetext">{$thumbnail}</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext">&nbsp;</p>
		<p class="pageinput">{$submit}{$cancel}</p>
	</div>
{if $showtitle==1}
	<div class="pageoverflow">
		<p class="pagetext">{$texttitle}:</p>
		<p class="pageinput">{$inputtitle}</p>
	</div>
{/if}
	<div class="pageoverflow">
		<p class="pagetext">{$dropdown_title}</p>
		<p class="pageinput">{$contentdropdown}</p>
	</div>

	<div class="pageoverflow">
		<p class="pagetext">{$textcomment}:</p>
		<p class="pageinput">{$inputcomment}</p>
	</div>
{$hidden}
	<div class="pageoverflow">
		<p class="pagetext">&nbsp;</p>
		<p class="pageinput">{$submit}{$cancel}</p>
	</div>
{$FormEnd}
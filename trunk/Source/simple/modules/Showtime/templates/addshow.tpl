{literal}
<style type="text/css">
div.pageoverflow img {vertical-align:middle;}
</style>
{/literal}

    {$FormStart}
    <br /><br />
	<div class="pageoverflow">
		<p class="pagetext">* {$nametext}:</p>
		<p class="pageinput">{$nameinput}</p>
	</div>

    <div class="pageoverflow">
        <p class="pagetext">{$merge_settings}</p>
    </div>

	<div class="pageoverflow">
		<p class="pagetext">&nbsp;</p>
		<p class="pageinput">{$submit}{$cancel}</p>
	</div>
	
   {$FormEnd}

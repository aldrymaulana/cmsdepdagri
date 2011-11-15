<h2>{$edittitle}</h2>
<br/>
	<div class="pageoverflow">
		<p class="pagetext">{$name_label} :</p>
		<p class="pageinput">{$name_input}</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext">{$attachment_label} :</p>
		<p class="pageinput">{$attachment_input}</p>
	</div>
	<div class="pageoverflow">
		<p class="pagetext">{$source_label} :</p>
		<p class="pageinput">{$source_input}</p>
	</div>
{if $reciproc}	<div class="pageoverflow">
		<p class="pageinput"><br/>{$reciproc}</p>
	</div>{/if}
<br/>
<p>{$submit} {$apply} {$cancel}</p>

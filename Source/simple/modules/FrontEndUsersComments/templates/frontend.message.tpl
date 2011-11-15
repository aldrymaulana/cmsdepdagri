
<center>
{if $error eq 1}
<p class='error'>
{else}
<p class='message'>
{/if}
{$message}</p>
{if $validationNeeded ne ''}
<p>{$validationNeeded}</p>
{/if}
<p>{$returnTo}</p>
</center>
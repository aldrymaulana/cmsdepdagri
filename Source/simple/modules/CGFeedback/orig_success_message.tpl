{* success message *}
<div class="row">
  <p class="left">{$mod->Lang('lbl_key1')}</p>
  <p class="right">{$key1}</p>
</div>
<div class="row">
  <p class="left">{$mod->Lang('lbl_key2')}</p>
  <p class="right">{$key2}</p>
</div>
<div class="row">
  <p class="left">{$mod->Lang('lbl_key3')}</p>
  <p class="right">{$key3}</p>
</div>
<div class="row">
  <p class="left">{$mod->Lang('lbl_author_name')}</p>
  <p class="right">{$author_name}</p>
</div>
<div class="row">
  <p class="left">{$mod->Lang('lbl_author_email')}</p>
  <p class="right">{$author_email}</p>
</div>
<div class="row">
  <p class="left">{$mod->Lang('lbl_author_ip')}</p>
  <p class="right">{$author_ip}</p>
</div>
<div class="row">
  <p class="left">{$mod->Lang('lbl_title')}</p>
  <p class="right">{$title}</p>
</div>
<div class="row">
  <p class="left">{$mod->Lang('lbl_rating')}</p>
  <p class="right">{$rating}</p>
</div>
<div class="row">
  <p class="left">{$mod->Lang('lbl_comment')}</p>
  <p class="right">{$comment}</p>
</div>
{foreach from=$fields item='onefield'}
<div class="row">
  <p class="left">{$onefield.name}</p>
  <p class="right">{$onefield.value}</p>
</div>
{/foreach}
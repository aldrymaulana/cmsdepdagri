{* comment form template *}
{if isset($message)}
  <div class="pagemessage">{$message}</div>
{else}
{* no message... display the form *}
<div class="cgfeedback_addcoment">
{if isset($error)}
  <div class="error">{$error}</div>
{/if}
{$formstart}
<fieldset style="margin: 1em;">
  <legend>&nbsp;{$mod->Lang('prompt_add_comment')}&nbsp;</legend>

  <div class="row" style="margin: 1em;">
    <div class="col30" style="float: left; width: 29%;">
      {$mod->Lang('prompt_title')}:
    </div>
    <div class="col70" style="float: left; width: 70%;">
      <input type="text" name="{$actionid}title" size="80" maxlength="255" value="{$title}"/>
    </div>
  </div>
  <div class="clearfix"></div>

  <div class="row" style="margin: 1em;">
    <div class="col30" style="float: left; width: 29%;">
      {$mod->Lang('prompt_your_name')}:
    </div>
    <div class="col70" style="float: left; width: 70%;">
      <input type="text" name="{$actionid}author_name" size="40" maxlength="255" value="{$author_name}"/>
    </div>
  </div>
  <div class="clearfix"></div>

  <div class="row" style="margin: 1em;">
    <div class="col30" style="float: left; width: 29%;">
      {$mod->Lang('prompt_your_email')}:
    </div>
    <div class="col70" style="float: left; width: 70%;">
      <input type="text" name="{$actionid}author_email" size="40" maxlength="255" value="{$author_email}"/>
    </div>
  </div>
  <div class="clearfix"></div>

  <div class="row" style="margin: 1em;">
    <div class="col30" style="float: left; width: 29%;">
      {$mod->Lang('prompt_notify')}:
    </div>
    <div class="col70" style="float: left; width: 70%;">
      <input type="checkbox" name="{$actionid}author_notify" value="1" {if $author_notify == 1}checked="checked"{/if}/>
    </div>
  </div>
  <div class="clearfix"></div>

  <div class="row" style="margin: 1em;">
    <div class="col30" style="float: left; width: 29%;">
      {$mod->Lang('prompt_your_rating')}:
    </div>
    <div class="col70" style="float: left; width: 70%;">
      <select name="{$actionid}rating">
        {html_options options=$rating_options selected=$rating}
      </select>
    </div>
  </div>
  <div class="clearfix"></div>

  <div class="row" style="margin: 1em;">
    <div class="col30" style="float: left; width: 29%;">
      {$mod->Lang('prompt_comment')}:
    </div>
    <div class="col70" style="float: left; width: 70%;">
      {$input_comment}
    </div>
  </div>
  <div class="clearfix"></div>

  {* custom fields *}
  {if isset($fields)}
  {foreach from=$fields key='fieldid' item='field'}
  <div class="row" style="margin: 1em;">
    <div class="col30" style="float: left; width: 29%;">
      {$field.name}:
    </div>
    <div class="col70" style="float: left; width: 70%;">
    {if isset($field.input)}
      {$field.input}
    {elseif $field.type == 0 or $field.type == 1 }
      <input type="text" name="{$actionid}field_{$fieldid}" value="{$field.value}" size="{$field.attrib.length}" maxlength="{$field.attrib.maxlength}"/>
    {elseif $field.type == 2}
      {* text area fields should have an input... so this should never get caled... but just in case *}
      <textarea name="{$actionid}field_{$fieldid}">{$field.value}</textarea>
    {elseif $field.type == 3}
      <select name="{$actionid}field_{$fieldid}">
        {html_options options=$field.attrib.options selected="{$field.value}"}
      </select>
    {elseif $field.type == 4}
      <select multiple="multiple" size="4" name="{$actionid}field_{$fieldid}[]">
        {html_options options=$field.attrib.options selected="{$field.value}"}
      </select>
    {/if}
    </div>
  </div>
  {/foreach}
  {/if}

  {if isset($captcha_img)}
     {* handle captcha image *}
     <div class="row" style="margin: 1em;">
       <div class="col30" style="float: left; width: 29%;">&nbsp;</div>
     <div class="col70" style="float: left; width: 70%;">
      {$captcha_img}<br/>
      <input type="text" name="{$actionid}feedback_captcha" value="" size="20"/>
    </div>
  </div>
  {/if}

  <div class="row" style="margin: 1em;">
    <div class="col30" style="float: left; width: 29%;">
       &nbsp;
    </div>
    <div class="col70" style="float: left; width: 70%;">
      <input type="submit" name="{$actionid}submit" value="{$mod->Lang('submit')}"/>
    </div>
  </div>
  <div class="clearfix"></div>

</fieldset>
{$formend}
</div>
{/if}
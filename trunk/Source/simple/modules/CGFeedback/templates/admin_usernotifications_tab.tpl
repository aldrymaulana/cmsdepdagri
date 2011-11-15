{$formstart}

<div class="pageoverflow">
  <p class="pagetext">{$mod->Lang('prompt_subject')}:</p>
  <p class="pageinput">{$input_subject}</p>
</div>
<div class="pageoverflow">
  <p class="pagetext">{$mod->Lang('prompt_is_email_html')}:</p>
  <p class="pageinput">{$input_ishtml}</p>
</div>
<div class="pageoverflow">
  <p class="pagetext">{$mod->Lang('prompt_message_template')}:</p>
  <p class="pageinput">
    {$input_template}<br/>
    <input type="submit" name="{$actionid}reset" value="{$mod->Lang('reset_to_defaults')}"/>
  </p>
</div>
<div class="pageoverflow">
  <p class="pagetext">&nbsp;</p>
  <p class="pageinput"><input type="submit" name="{$actionid}submit" value="{$mod->Lang('submit')}"/></p>
</div>
{$formend}
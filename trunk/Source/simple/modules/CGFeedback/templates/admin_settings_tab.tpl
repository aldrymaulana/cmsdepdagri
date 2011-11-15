{$formstart}
<fieldset>
  <legend>&nbsp;{$mod->Lang('prompt_general_settings')}:&nbsp;</legend>
  <div class="pageoverflow">
    <p class="pagetext">{$mod->Lang('prompt_allow_comment_wysiwyg')}</p>
    <p class="pageinput">{$input_allow_comment_wysiwyg}<br/>{$mod->Lang('info_use_wysiwyg')}</p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext">{$mod->Lang('prompt_allow_comment_html')}</p>
    <p class="pageinput">{$input_allow_comment_html}<br/>{$mod->Lang('info_allow_comment_html')}</p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext">{$mod->Lang('prompt_word_limit')}</p>
    <p class="pageinput">
      <input type="text" name="{$actionid}word_limit" value="{$word_limit}" size="4" maxlength="4"/>
      <br/>
      {$mod->Lang('info_word_limit')}
    </p>
  </div>

  <div class="pageoverflow">
   <p class="pagetext">{$mod->Lang('prompt_email_validate')}:</p>
   <p class="pageinput">
     <select name="{$actionid}validate_email">
       {html_options options=$validate_opts selected=$validate_email}
     </select>
     <br/>
     {$mod->Lang('info_email_validate')}
   </p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext">{$mod->Lang('prompt_use_cookies')}</p>
    <p class="pageinput">{$input_use_cookies}<br/>{$mod->Lang('info_use_cookies')}</p>
  </div>
</fieldset>

<fieldset>
<legend>{$mod->Lang('lbl_messages')}:</legend>
  <div class="pageoverflow">
    <p class="pagetext">{$mod->Lang('prompt_success_msg')}</p>
    <p class="pageinput">{$input_success_msg}</p>
  </div>
</fieldset>

<fieldset>
  <legend>&nbsp;{$mod->Lang('prompt_quality_control_settings')}:&nbsp;</legend>
  <div class="pageoverflow">
    <p class="pagetext">{$mod->Lang('prompt_moderate_comments')}:</p>
    <p class="pageinput">{$input_moderate_comments}<br/>{$mod->Lang('info_moderate_comments')}</p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext">{$mod->Lang('prompt_moderation_patterns')}:</p>
    <p class="pageinput">
      <textarea name="{$actionid}moderation_patterns" rows="5">{$moderation_patterns}</textarea>
      <br/>
      {$mod->Lang('info_moderation_patterns')}
    </p>  
  </div>

  <div class="pageoverflow">
    <p class="pagetext">{$mod->Lang('prompt_moderation_iplist')}:</p>
    <p class="pageinput">
      <textarea name="{$actionid}moderation_iplist" rows="5">{$moderation_iplist}</textarea>
      <br/>
      {$mod->Lang('info_moderation_iplist')}
    </p>  
  </div>

  <div class="pageoverflow">
    <p class="pagetext">{$mod->Lang('prompt_spamcheck_module')}</p>
    <p class="pageinput">
      <select name="{$actionid}spamcheck_module">
        {html_options options=$spamcheck_modules selected=$spamcheck_module}
      </select>
      <br/>{$mod->Lang('info_spamcheck_module')}</p>
  </div>

  <div class="pageoverflow">
    <p class="pagetext">{$mod->Lang('prompt_captcha_module')}</p>
    <p class="pageinput">
      <select name="{$actionid}captcha_module">
        {html_options options=$captcha_modules selected=$captcha_module}
      </select>
      <br/>{$mod->Lang('info_captcha_module')}</p>
  </div>
</fieldset>

<div class="pageoverflow">
  <p class="pagetext">&nbsp;</p>
  <p class="pageinput"><input type="submit" name="{$actionid}submit" value="{$mod->Lang('submit')}"/></p>
</div>
{$formend}

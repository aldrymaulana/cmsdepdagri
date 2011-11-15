{* summary template *}
<div id="{$actionid}_feedback_summary_report">
{strip}
{if $pagecount > 1}
<p>
  {if $pagenum > 1}
    <a href="{$firstpage_url}" title="{$mod->Lang('lbl_goto_firstpage')}">&lt;&lt;</a>&nbsp;
    <a href="{$prevpage_url}" title="{$mod->Lang('lbl_goto_prevpage')}">&lt;</a>&nbsp;
  {/if}
  {$mod->Lang('lbl_page')}&nbsp;{$pagenum}&nbsp;{$mod->Lang('lbl_of')}&nbsp;{$pagecount}
  {if $pagenum < $pagecount}
    &nbsp;<a href="{$nextpage_url}" title="{$mod->Lang('lbl_goto_nextpage')}">&gt;</a>&nbsp;
    <a href="{$lastpage_url}" title="{$mod->Lang('lbl_goto_lastpage')}">&gt;&gt;</a>
  {/if}
</p>
{* pagecount *}{/if}

{if isset($stats)}
<div class="feedback_summary_stats">
<h4>{$mod->Lang('statistics')}</h4>
<table>
  <tr>
    <td>{$mod->Lang('lbl_key1')}</td>
    <td>{$mod->Lang('lbl_key2')}</td>
    <td>{$mod->Lang('lbl_key3')}</td>
    <td>{$mod->Lang('count')}</td>
  </tr>
{foreach from=$stats item='onestat'}
  <tr>
    <td>{$onestat.key1}</td>
    <td>{$onestat.key2}</td>
    <td>{$onestat.key3}</td>
    <td>{$onestat.reviews}</td>
  </tr>
{/foreach}
</table>
</div>
{/if}

{if isset($comments)}
{foreach from=$comments item='one'}
  <div class="feedback_summary_item">
    <div class="feedback_item_title">
      <a href="{$one.detail_url}" title="{$one.title}">{$one.title}</a>
    </div>

    <div class="feedback_item_authodatee">
      {$mod->Lang('lbl_created')}:&nbsp;{$one.created|cms_date_format}
    </div>

    <div class="feedback_item_rating">
      {$mod->Lang('lbl_rating')}:&nbsp;{$one.rating}&nbsp;&nbsp;
      {section name='rating' start=1 loop=6}
        {if $smarty.section.rating.index <= $one.rating}
          <img src="{$rating_imgs.img_on}" alt=""/>
        {else}
          <img src="{$rating_imgs.img_off}" alt=""/>
        {/if}
      {/section}
    </div>

    {if $one.author_name}
    <div class="feedback_item_authorname">
      {$mod->Lang('lbl_author_name')}:&nbsp;{$one.author_name}
    </div>
    {/if}

    {if $one.author_email}
    <div class="feedback_item_authoremail">
      {$mod->Lang('lbl_author_email')}:&nbsp;{$one.author_email}
    </div>
    {/if}

    {if $one.author_ip}
    <div class="feedback_item_authorip">
      {$mod->Lang('lbl_author_ip')}:&nbsp;{$one.author_ip}
    </div>
    {/if}

    <div class="feedback_item_data">
      {$one.data|htmlspecialchars}
    </div>

    {if isset($one.fields)}    
      {foreach from=$one.fields key='name' item='field'}
      <div class="feedback_item_field">
        {$name}:&nbsp;{$field.value|htmlspecialchars}
      </div>
      {/foreach}
    {/if}

    <br/><br/>
  </div>
{/foreach}
{* comments *}{/if}
{* feedback_summary_report *}</div>
{/strip}

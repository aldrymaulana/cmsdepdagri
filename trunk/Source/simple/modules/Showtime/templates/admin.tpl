{literal}
<script type="text/javascript" src="../modules/Showtime/templates/jquery/jquery.js"></script>

<script type="text/javascript">
jQuery.noConflict();
jQuery(document).ready(function($) {
	if ($('.pagemcontainer')){
		$('.pagemcontainer').delay(2500);
		$('.pagemcontainer').slideToggle(800);
	}
$("input[type=text]").focus(function(){
    this.select();
});

});


</script>
{/literal}




{if isset($message)}
<div class="pagemcontainer">
		<p class="pagemessage">{$message}</p>
	</div>
{/if}

{$tabheader}

{$starttab}
{$startshowoverview}
{$LinkAddshow}
        <table class="pagetable" cellspacing="0">
            <thead>
                <tr>
                    <th class="pagew25">{$th_name}</th>
                    <th class="pagew25">{$th_animationtype}</th>
                    <th class="pagew25">{$th_tag}</th>
                    <th class="pagew25 pagepos">{$th_slidecount}</th>
                    <th class="pageicon">{$th_editshow}</th>
                    <th class="pageicon">{$th_editslides}</th>
                    <th class="pageicon">{$th_deleteshow}</th>
                </tr>
            </thead>
            <tbody>
                {$showlist}
            </tbody>
        </table>
{$endtab}
{$starttaboptions}
{literal}
<style type="text/css">
div.pageoverflow img {vertical-align:middle;}
</style>
{/literal}
	{$startform}
	<div class="pageoverflow">
		<p class="pagetext">{$admin_upmethod}<br /><br /></p>
		<p class="pageinput">{$uploadmethode}</p>
        <p class="pageinput">{$load_jQuery_scripts}{$jQuery_info}</p><br />
        <p class="pageinput">{$load_TinyMCE_plugin}{$TinyMCE_info}</p>
	</div>
	
    <div class="pageoverflow">
		<p class="pagetext">{$submit}</p>
	</div>
   
	{$endform}
{$endtab}


{$starttabwatermark}

<table cellpadding="0" width="100%">
<tr><td valign="top">
<div id="FORMuploadMethode">
    {$upload_startform}
    <div class="pageoverflow">
      <p class="pagetext">{$prompt_browse}</p>
      <p class="pageinput">{$input_browse}&nbsp;{$upload_submit}</p>
      <br /><br />

    </div>
    {$endform}
</div>

	{$startform}
	<div class="pageoverflow">
		<p class="pagetext">{$watermark_onoff} {$watermark_onoff_info}
        	<img src="../modules/Showtime/images/{$watermark_onoff_images}"  /></p>
        <br />
	</div>
	<div class="pageoverflow">
		<p class="pagetext">{$watermark_current_info}</p>
		<p class="pageinput"><img src="{$currentwatermark}" /></p>
        <br />
	</div>
	<div class="pageoverflow">
		<p class="pagetext">{$watermark_position_info}</p>
		<p class="pageinput">{$watermark_pos}</p>
       	<br />
	</div>
    
	<div class="pageoverflow">
		<p class="pagetext">{$watermark_margin_info}</p>
		<p class="pageinput">{$watermark_padding_x} ({$watermark_margin_lr})</p>
		<p class="pageinput">{$watermark_padding_y} ({$watermark_margin_tb})</p>
        <br />
	</div>

	<div class="pageoverflow">
		<p class="pagetext">{$watermark_trans_info}</p>
		<p class="pageinput">{$watermark_transparant} ({$watermark_trans_100})</p>
        <p class="pageinput"><span style="color:#bb2222;">{$watermark_trans_warning}</span></p>
        <br />
	</div>
	
    <div class="pageoverflow">
		<p class="pagetext">{$watermark_submit}</p>
	</div>
    {$endform}
</td>

<td valign="top">
	<div class="pageoverflow">
		<p class="pagetext">{$watermark_example}</p>
		<p class="pageinput"><img src="{$example_image}" /></p>
        <br />
	</div>
</td></tr></table>
   
	
{$endtab}

{$endtabcontent}
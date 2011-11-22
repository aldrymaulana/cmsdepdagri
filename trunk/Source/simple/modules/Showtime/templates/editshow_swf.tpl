{literal}
<style type="text/css">
div.pageoverflow img {vertical-align:middle;}
</style>
{/literal}

{$StartTabH}
{$Tabh_02}
{$Tabh_01}
{$Tabh_03}
{$EndTabH}

{$StartTabC}
{$FormStart}
{$StartTab_gen}
    {$editslides}{$addpicture}{$backimage}
    <br /><br />
	<div class="pageoverflow">

		<p class="pagetext">{$nametext}:</p>
		<p class="pageinput">{$nameinput}</p>
        <br />
 		<p class="pagetext">{$shownumber}:</p>
		<p class="pageinput">{$shownumberinput}</p>

        {$tab}
	</div>
	<div class="pageoverflow">
		<p class="pagetext">&nbsp;</p>
		<p class="pageinput">{$submit}{$cancel}</p>
	</div>
	
{$EndTab}

{if $permission=="1"}

	{$StartTab_link}
    {$editslides}{$addpicture}{$backimage}

        <table class="form-table" rowpadding="40" width="100%">    
            <tr>            
                <td valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></td>
                <td valign="top"><br />
                    {$st_link}
                    <label for="st_showtext"><strong>{$linkloc}</strong></label><br /><br />
                    <p><strong>{$internalpage}</strong> 
                    	= {$internalpage_info}</p>
                    <p><strong>{$externalpage}/strong> = {$externalpage_info}</p>
                    <p><strong>{$imagepage}</strong> = {$imagepage_info}</p>
                </td>
                <td valign="top"><br />
                    {$st_target}
                    <label for="st_showtext"><strong>{$linktarget}</strong></label><br /><br />
                    <p><strong>_self</strong> = {$self_info}</p>
                    <p><strong>_blank</strong> = {$blank_info}</p>
                    <p><strong>_parent</strong> = {$parent_info}</p>       
                    <p><strong>_top</strong> = {$top_info}</p>
                </td>
            </tr>
            <tr><td colspan="5" style="border-bottom:#777777 dashed thin;" height="50"></td></tr>
            
            <tr>
            	<td colspan="4">
                {$submit}    {$default}    {$cancel}    {$apply}    
                </td>
            </tr>

        </table>

    {$EndTab}




	{$StartTab_pref}
    {$editslides}{$addpicture}{$backimage}
        <table class="form-table" rowpadding="40" width="100%">    
        
			<tr>
        		<td colspan="6"></td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td rowspan="10" valign="top">{$example_info}<br /><br />

            
        	{literal}
			<style type="text/css">
				#nav_settings {-moz-border-radius:5px 5px 5px 5px; background:none repeat scroll 0 0 #EFFFFF; border:1px solid #D9D9D9;  padding:15px; max-width:270px;}
				#nav_settings img{vertical-align:middle;}
				.n25_settings img{vertical-align:middle;}
			</style>
            {/literal}
            <script type="text/javascript" src="{root_url}/modules/Showtime/templates/jquery/jquery-1.4.2.js"></script>
			<script type="text/javascript" src="{root_url}/modules/Showtime/templates/jquery/jquery.cycle.all.min.js"></script>
			<script type="text/javascript" src="{root_url}/modules/Showtime/templates/farbtastic/farbtastic.js"></script>
            <link rel="stylesheet" href="{root_url}/modules/Showtime/templates/farbtastic/farbtastic.css" type="text/css" />
			<script type="text/javascript">
			{literal}
           $(document).ready(function() {
				$('#colorpicker_bgcolor').farbtastic('#m1_st_bgcolor');
                $('#m1_st_bgcolor').focus( function(){
                    $('#colorpicker_bgcolor').show();
                });
                $('#m1_st_bgcolor').blur( function(){
                    $('#colorpicker_bgcolor').hide();
                });
            });
           $(document).ready(function() {
				$('#colorpicker_textbgcolor').farbtastic('#m1_st_textbgcolor');
                $('#m1_st_textbgcolor').focus( function(){
                    $('#colorpicker_textbgcolor').show();
                });
                $('#m1_st_textbgcolor').blur( function(){
                    $('#colorpicker_textbgcolor').hide();
                });
            });
           $(document).ready(function() {
				$('#colorpicker_textcolor').farbtastic('#m1_st_textcolor');
                $('#m1_st_textcolor').focus( function(){
                    $('#colorpicker_textcolor').show();
                });
                $('#m1_st_textcolor').blur( function(){
                    $('#colorpicker_textcolor').hide();
                });
            });

			{/literal}
            </script>

    		<script type='text/javascript' src='{root_url}/modules/Showtime/showtime/swfobject/swfobject.js?ver=2.1'>
			</script>
			<script type='text/javascript'>
			
				var flashvars = {literal} { {/literal}				
				xml 			: '{root_url}/modules/Showtime/showtime/getxml_test.php?showid={$showidvalue}',
				width           : '300',
				height          : '225',
				classid         : 'st_0',
				rotationtime    : '{$stt_rotatetime}',
				transition      : '{$stt_transition}',
				transitiontime  : '{$stt_transitiontime}',
				transitionease  : '{$stt_easeFunc}',
				autoplay        : '{$stt_autoplay}',
				showcontrols    : '{$stt_showcontrols}',
				controls        : '{$stt_showcontrolssub}',
				textbgcolor     : '{$stt_textbgcolor}',
				showtext        : '{$stt_showtext}',
				showalt         : '{$stt_showalt}',
				shuffle         : '{$stt_shuffle}',
				scale           : '{$stt_scale}',
				target          : '_self'			
				{literal} };
				
				var params = {};{/literal}
				params.allowFullScreen = 'true';
				params.bgcolor = '{$stt_bgcolor}';		
				params.quality = 'autohigh';		
				params.wmode = '{$stt_wmode}';
				//params.base = 'dirname(__FILE__)';
				//params.allowScriptAccess = 'local';
			
				{literal}var attributes = {};
				attributes.styleclass = 'showtime';{/literal}
												
				swfobject.embedSWF ('{root_url}/modules/Showtime/showtime/st16.swf', 'st_0', '300', '225', '10.0.0', 'false', flashvars, params, attributes);
			</script>
					
			<!-- alternative content -->	
			{literal}<div id='st_0'>
			<style type='text/css'>
                #gallery-1 {margin: auto;}
                #gallery-1 .gallery-item {float: left; margin-top: 10px; text-align: center; width: 33%;}
                #gallery-1 img {border: 2px solid #cfcfcf;}
                #gallery-1 .gallery-caption {margin-left: 0;}
            </style>{/literal}
        
            <div id='gallery-1' class='gallery'>
                <dl class='gallery-item'>
                    <dt class='gallery-icon'>
                        <a href='' title='Title'>
                         <img width="300" height="225" src="../modules/Showtime/images/slide1.jpg" 
                            class="attachment-thumbnail" alt="" title="Title" /></a>
                    </dt>
                </dl>
                <dl class='gallery-item'>
                    <dt class='gallery-icon'>
                        <a href='' title='Title'>
                         <img width="300" height="225" src="../modules/Showtime/images/slide2.jpg" 
                            class="attachment-thumbnail" alt="" title="Title" /></a>
                    </dt>
                </dl>
                <dl class='gallery-item'>
                    <dt class='gallery-icon'>
                        <a href='' title='Title'>
                         <img width="300" height="225" src="../modules/Showtime/images/slide3.jpg" 
                            class="attachment-thumbnail" alt="" title="Title" /></a>
                    </dt>
                </dl>
                <dl class='gallery-item'>
                    <dt class='gallery-icon'>
                        <a href='' title='Title'>
                         <img width="300" height="225" src="../modules/Showtime/images/slide4.jpg" 
                            class="attachment-thumbnail" alt="" title="Title" /></a>
                    </dt>
                </dl>
                <dl class='gallery-item'>
                    <dt class='gallery-icon'>
                        <a href='' title='Title'>
                         <img width="300" height="225" src="../modules/Showtime/images/slide5.jpg" 
                            class="attachment-thumbnail" alt="" title="Title" /></a>
                    </dt>
                </dl>
                  
            <br style='clear: both;' /></div>
            </div>
            
            <br /><br /><br /><br />



            <div style="text-align:center; max-width:290px;"><strong>{$label_nav_controls}</strong></div><br />
            <div id="nav_settings">
                <p>{$st_showcontrols}<label for="st_height">{$controls_onoff}</label></p>
                <p><label for="st_height"><strong>{$label_controltypes}:</strong></label></p>
                <p>{$showcontrolssub}</p><br />
             </div>


<div style="-moz-border-radius:5px 5px 5px 5px; background:none repeat scroll 0 0 #EFEFEF; border:1px solid #D9D9D9; margin:15px 0 0; padding:5px; max-width:290px;">
<p><img src="{root_url}/modules/Showtime/images/icon.gif" align="left" alt="logo showtime" style="margin:10px;" />{$donation}</p>
</div>

        	</td></tr>           
            <tr>
                <td valign="top" width="20%"><p><strong style="margin: 0pt; padding: 0pt;">{$basic}</strong></p></td>
                <td valign="top" width="40%"><br />
                    <p><br />{$st_width}
                    <label for="st_width">{$label_width}</label></p>               	
                    <p>{$st_height}
                    <label for="st_height">{$label_height}</label></p>
                    <p>{$st_wmode}<label for="st_width">Window mode</label></p>
                 	<p><label for="st_width"><strong>{$label_scaling}</strong></label><br /><br />
                    {$st_scale}</p>
                </td>
                <td valign="top" width="40%"><br />
                 <div class="pageoverflow">
                    <p><strong>{$label_animationtype}:</strong></p>
                    <p>{$animation_info}</p>
                    <p>{$edit_animationtype}</p>
                </div>
                </td>
            </tr>
            <tr><td colspan="5" style="border-bottom:#777777 dashed thin;" height="20"></td></tr>
            
            <tr>            
                <td valign="top"><p><strong>{$label_slide_options}</strong></p></td>
                <td valign="top"><br />
                    <p>{$st_shuffle}<label for="st_height">{$shuffle_onoff}</label></p>
                    <p>{$st_autoplay}<label for="st_height">{$auto_onoff}</label></p>
                     <p><label for="st_transition"><strong>{$label_transition}:</strong></label></p>
                    {$st_transition}
                    <br /><br />
                    <p><label for="st_ease"><strong>{$label_trans_eas} </strong></label></p>
                    {$st_easeFunc}
                    {$st_ease}
               </td>
                <td valign="top"><br />
                    <p>{$st_rotatetime}<label for="st_rotatetime">{$label_rotation} </label></p>  
                    <p>{$st_transitiontime}<label for="st_transitiontime">{$label_transitiontime} </label></p>	  
                    <p><label for="st_rotatetime"><strong>{$label_slide_bg}</strong></label></p>
                    {$st_bgcolor}<br />
                  	<div id="colorpicker_bgcolor" style="background:#F9F9F9;position:absolute;display:none;"></div></p>
             	</td>
            </tr>
            <tr><td colspan="5" style="border-bottom:#777777 dashed thin;" height="20"></td></tr>
            <tr>            
                <td valign="top"><p><strong>{$text_options}</strong></p></td>
                <td valign="top">
                    <br />
                    {$st_showtext}
                    <label for="st_showtext"><strong>{$label_show_title}</strong></label><br />
                    {$st_showcomment}
                    <label for="st_showcomment"><strong>{$label_show_comment}</strong></label><br />
                    {$st_showalt}
                    <label for="st_showalt"><strong>{$label_bg_text}</strong></label>
                    <br /><br />                 	
                    <p>{$st_textbgcolor}
                    <label for="st_rotatetime"><strong>{$label_text_bgcolor}</strong> </label></p>
                    <div id="colorpicker_textbgcolor" style="background:#F9F9F9;position:absolute;display:none;"></div>
                    <p>{$st_textcolor}
                    <label for="st_textcolor"><strong>{$label_text_color}</strong> </label></p>
                    <div id="colorpicker_textcolor" style="background:#F9F9F9;position:absolute;display:none;"></div>
                    <br /><br /> 
                </td>
                <td valign="top"><br />
                    <p><label for="st_transition"><strong>{$label_font_type}:</strong> </label><br /><br />

                    {$st_fonttype}</p>
                    <br />
                    <p><label for="st_transition">{$label_title_size}:</label>
                    {$st_titlesize}
                    </p>
                    <p><label for="st_transition">{$label_comment_size}:</label>
                    {$st_textsize}
                    </p>
                    
                </td>
                
            </tr>
            <tr><td colspan="5" style="border-bottom:#777777 dashed thin;" height="50"></td></tr>
            
            <tr>
            	<td colspan="4">
                {$submit}    {$default}    {$cancel}    {$apply}    
                </td>
            </tr>

        </table>

{$EndTab}
{/if}
{$hidden}{$FormEnd}
{$EndTabC}
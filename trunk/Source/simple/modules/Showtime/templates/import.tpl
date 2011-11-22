{literal}
<script type="text/javascript" src="../modules/Showtime/templates/jquery/jquery.js"></script>
<script type="text/javascript">
jQuery.noConflict();
jQuery(document).ready(function($) {
	if ($('.pagemcontainer')){
		$('.pagemcontainer').delay(1500);
		$('.pagemcontainer').slideToggle(800);
	}
	
});
</script>
{/literal}

{if isset($message)}
<div class="pagemcontainer">
		<p class="pagemessage">{$message}</p>
	</div>
{/if}

{if ($uploadmethode=='swf')}
{literal}
<style type="text/css">
div.fieldset {
	border:  1px solid #afe14c;
	margin: 10px 0;
	padding: 20px 10px;
}
div.fieldset span.legend {
	position: relative;
	background-color: #FFF;
	padding: 3px;
	top: -30px;
	font: 700 14px Arial, Helvetica, sans-serif;
	color: #73b304;
}

div.flash {
	width: 375px;
	margin: 10px 5px;
	border-color: #D9E4FF;

	-moz-border-radius-topleft : 5px;
	-webkit-border-top-left-radius : 5px;
    -moz-border-radius-topright : 5px;
    -webkit-border-top-right-radius : 5px;
    -moz-border-radius-bottomleft : 5px;
    -webkit-border-bottom-left-radius : 5px;
    -moz-border-radius-bottomright : 5px;
    -webkit-border-bottom-right-radius : 5px;

}

input[disabled]{ border: 1px solid #ccc } /* FF 2 Fix */


label { 
	width: 150px; 
	text-align: right; 
	display:block;
	margin-right: 5px;
}

#btnSubmit { margin: 0 0 0 155px ; }

/* -- Table Styles ------------------------------- */
td {
	vertical-align: middle;
}

.progressWrapper {
	width: 357px;
	overflow: hidden;
}

.progressContainer {
	margin: 5px;
	padding: 4px;
	border: solid 1px #E8E8E8;
	background-color: #F7F7F7;
	overflow: hidden;
}
/* Message */
.message {
	margin: 1em 0;
	padding: 10px 20px;
	border: solid 1px #FFDD99;
	background-color: #FFFFCC;
	overflow: hidden;
}
/* Error */
.red {
	border: solid 1px #B50000;
	background-color: #FFEBEB;
}

/* Current */
.green {
	border: solid 1px #DDF0DD;
	background-color: #EBFFEB;
}

/* Complete */
.blue {
	border: solid 1px #CEE2F2;
	background-color: #F0F5FF;
}

.progressName {
	font-size: 8pt;
	font-weight: 700;
	color: #555;
	width: 323px;
	height: 14px;
	text-align: left;
	white-space: nowrap;
	overflow: hidden;
}

.progressBarInProgress,
.progressBarComplete,
.progressBarError {
	font-size: 0;
	width: 0%;
	height: 2px;
	background-color: blue;
	margin-top: 2px;
}

.progressBarComplete {
	width: 100%;
	background-color: green;
	visibility: hidden;
}

.progressBarError {
	width: 100%;
	background-color: red;
	visibility: hidden;
}

.progressBarStatus {
	margin-top: 2px;
	width: 337px;
	font-size: 7pt;
	font-family: Arial;
	text-align: left;
	white-space: nowrap;
}

a.progressCancel {
	font-size: 0;
	display: block;
	height: 14px;
	width: 14px;
	background-image: url(../images/cancelbutton.gif);
	background-repeat: no-repeat;
	background-position: -14px 0px;
	float: right;
}

a.progressCancel:hover {
	background-position: 0px 0px;
}


/* -- SWFUpload Object Styles ------------------------------- */
.swfupload {
	vertical-align: middle;
	line-height:30px;
}

</style>

<script type="text/javascript" src="../modules/Showtime/templates/swfupload/swfupload.js"></script>
<script type="text/javascript" src="../modules/Showtime/templates/swfupload/handlers.js"></script>
<script type="text/javascript">
		var swfu;
		window.onload = function () {
			swfu = new SWFUpload({
				// Backend Settings
				upload_url: "../modules/Showtime/function.upload.php",
				post_params: {"PHPSESSID": "{/literal}{$sessionid}{literal}"},

				// File Upload Settings{/literal}
				file_size_limit : "{$file_size_limit}",
				file_types : "{$file_types}",
				file_types_description : "{$file_types_description}",
				file_upload_limit : 0,{literal}

				// Event Handler Settings
				swfupload_preload_handler : preLoad,
				swfupload_load_failed_handler : loadFailed,
				file_queue_error_handler : fileQueueError,
				file_dialog_complete_handler : fileDialogComplete,
				upload_progress_handler : uploadProgress,
				upload_error_handler : uploadError,
				upload_success_handler : uploadSuccess,
				upload_complete_handler : uploadComplete,

				// Button Settings
				button_image_url : "../modules/Showtime/images/SmallSpyGlassWithTransperancy_17x18.png",
				button_placeholder_id : "spanButtonPlaceholder",
				button_width: 180,
				button_height: 18,
				button_text : '<span class="button">{/literal}{$uploadimages} <span class="buttonSmall">({$file_size_limit}{literal} Max)</span></span>',
				button_text_style : '.button { font-family: Helvetica, Arial, sans-serif; font-size: 12pt; } .buttonSmall { font-size: 10pt; }',
				button_text_top_padding: 0,
				button_text_left_padding: 18,
				button_window_mode: SWFUpload.WINDOW_MODE.TRANSPARENT,
				button_cursor: SWFUpload.CURSOR.HAND,


				// Flash Settings
				flash_url : "../modules/Showtime/templates/swfupload/swfupload.swf",
				flash9_url : "../modules/Showtime/templates/swfupload/swfupload_fp9.swf",

				custom_settings : {
					upload_target : "divFileProgressContainer",
					msg_complete: "{/literal}{$msg_complete}{literal}"
				},

				// Debug Settings
				debug: false
			});
		};
</script>

{/literal}

<div style="float:right; width:200px;">{$titlemessage}</div>


<br />

<div style="display: inline; border: solid 1px #7FAAFF; background-color: #C5D9FF; padding: 3px;">
    <span id="spanButtonPlaceholder"></span>
</div>
<div id="divFileProgressContainer" style="min-height:20px;"></div>
<div id="thumbnails"></div>


{else}

<div id="FORMuploadMethode">
    {$startform}
    <div class="pageoverflow">
      <p class="pagetext">{$prompt_browse}</p>
      <p class="pageinput">{$input_browse}&nbsp;{$submit}</p>
    </div>
    {$hidden}
    {$pictureid}
    {$showid}
    {$endform}
</div>
{/if}
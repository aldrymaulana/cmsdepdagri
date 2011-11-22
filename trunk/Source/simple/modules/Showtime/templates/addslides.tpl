<link rel="stylesheet" type="text/css" href="../modules/Showtime/templates/jquery/jquery.treeTable.css" media="screen" />
{literal}
<script type="text/javascript">
if( typeof(jQuery) == "undefined") {
	document.write('<script type="text/javascript" src="../modules/Showtime/templates/jquery/jquery.js"><\/script>');
}
</script>
<script type="text/javascript" src="../modules/Showtime/templates/jquery/jquery.tablednd.js"></script>
<script type="text/javascript" src="../modules/Showtime/templates/jquery/jquery.treeTable.js"></script>
<script type="text/javascript">
jQuery.noConflict();
jQuery(document).ready(function($) {
	$("#gtree").treeTable();
	$('#gtree tr.initialized:odd').addClass('row1');
	$('#gtree tr.initialized:even').addClass('row2');
	$('#gtable tr, #gtree tr').hover(function(){
		$(this).stop().addClass('row1hover');
	}, function(){
		$(this).stop().removeClass('row1hover');
	});
	$('#gtable').tableDnD({
		onDragStart: function(table,row) {
			$('#gtable tr').removeClass();
		},
		onDragClass: "row1hover",
		onDrop: function(table, row) {
			$('#gtable tr:odd').addClass('row1');
			$('#gtable tr:even').addClass('row2');
			var rows = table.tBodies[0].rows;
			var sortstr = rows[0].id;
			for (var i=1; i<rows.length; i++) {
				sortstr += ","+rows[i].id;
			}
			$('#sort input').val(sortstr);
			$('#savewarning').show('slow');
		}
	});
	$('.textfield').keypress(function() {
		$('#savewarning').show('slow');
	});
	$('.cms_textfield').keypress(function() {
		$('#savewarning').show('slow');
	});

	$('input#selectall').click(function() {
		$('.checkbox input').attr('checked',$(this).attr('checked'));
	});
	$('#multiaction').change(function() {
		if ($('#multiaction').val() == 'link'){
			$('#linkdropper').show('slow');
		}else{
			$('#linkdropper').hide('slow');
		}
	});
	$('#linkdropper').hide();
	if ($('.pagemcontainer')){
		$('.pagemcontainer').delay(1500);
		$('.pagemcontainer').slideToggle(800);
	}

});
</script>
{/literal}


{$formstart}
<div class="hidden" id="sort">{$hidden}</div>

{$navigation} 
{if isset($message)}
<div class="pagemcontainer">
		<p class="pagemessage">{$message}</p>
	</div>
{/if}

{if isset($picturetable)}
<table id="gtable" class="pagetable" cellspacing="0">
	<thead>
		<tr>
			<th>{$L_picture}</th>
			<th>{$L_order}</th>
            <th>{$L_picture_name}</th>
            <th>{$L_picture_descriptioin}</th>
            <th>{$L_picture_link}</th>
            <th class="pageicon">{$L_change_picture}</th>
            <th class="pageicon">{$L_status}</th>
            <th class="pageicon"> </th>
            <th class="pageicon"> </th>
            <th class="pageicon"><input id="selectall" type="checkbox" /></th>
		</tr>
	</thead>
	<tbody>
   	{foreach from=$items item=entry}
        <tr id="{$entry->fileid}" class="{$entry->rowclass}">
			<td>{$entry->thumbnail}</td>
			<td width="50">
            	{$entry->arrowup}
                {$entry->arrowdown}
            </td>
            <td>{$entry->title_input}</td>
            <td>{$entry->comment_input}</td>
            <td>{$entry->linkoption}</td>
            <td class="pagepos" style="text-align:center">{$entry->changepic}</td>
            <td class="pagepos" style="text-align:center">{$entry->activeOption}</td>
			<td class="pagepos" style="text-align:center">{$entry->changecommentIcon}</td>
            <td class="pagepos" style="text-align:center">{$entry->deleteOption}</td>
            <td class="checkbox">{$entry->imgselect}</td>
		</tr>
	{/foreach}
    </tbody>
</table>
{else}
  <br /><br />
	{$addsomepic}
{/if}


{if $itemcount > 1}
<div class="pageoptions">
	<div style="margin-top: 0; float: right; text-align: right; width:500px;">
    	<table width="500">
         	<tr><td style="text-align:right;">{$with_selected}: {$multiaction}</td>
            	<td rowspan="2" width="20" valign="top">{$multiactionsubmit}</td>
            </tr>
            <tr><td>
        		<div id="linkdropper" style="text-align:right;">{$linkdropdown}</div>
            </td></tr>
       </table>
	</div>

	<div>
		<div style="float:left;">{$submit}</div>
        <div id="savewarning" style="display:none; color:#F00; font-weight:bold; line-height:30px;"><-- {$save_changes}</div>
	</div>
    <div style="clear:both"></div>
</div>
{/if}

{$formend}

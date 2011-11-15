{*------------------------------------------------------------------------------

Module : AdvancedContent (c) 2010-2011 by Georg Busch (georg.busch@gmx.net)
         a content management tool for CMS Made Simple
         The projects homepage is http://dev.cmsmadesimple.org/projects/content2
         CMS Made Simple is (c) 2004-2011 by Ted Kulp (wishy@cmsmadesimple.org)
         The projects homepage is: http://www.cmsmadesimple.org
Version: 0.9.1
File   : header.tpl
License: GPL

------------------------------------------------------------------------------*}

<link rel="stylesheet" media="screen" type="text/css" href="{root_url}/modules/AdvancedContent/css/style.css" />
<link rel="stylesheet" media="screen" type="text/css" href="{$jq_ui_css}" />
<script language="javascript" type="text/javascript" src="{root_url}/modules/AdvancedContent/js/main.js"></script>

{if isset($locale)}
	{capture assign="lang_js"}{root_url}/modules/AdvancedContent/js/jquery-ui/datepicker/lang/jquery.ui.datepicker-{$locale}.js{/capture}
	{if is_file($lang_js)}

<script language="javascript" type="text/javascript" src="{root_url}/modules/AdvancedContent/js/jquery-ui/datepicker/lang/jquery.ui.datepicker-{$locale}.js"></script>

	{else}

<script language="javascript" type="text/javascript" src="{root_url}/modules/AdvancedContent/js/jquery-ui/datepicker/lang/jquery.ui.datepicker-en-GB.js"></script>

	{/if}
{/if}
{literal}
<script language="javascript" type="text/javascript">
/* <![CDATA[ */

jQuery(document).ready(function() {
	jQuery.noConflict();
	jQuery.datepicker.setDefaults( jQuery.datepicker.regional[ '{/literal}{$locale}{literal}' ] );
	jQuery( "#AdvancedContentStartDatePickerDisplay" ).datepicker({
		numberOfMonths: 3,
		showButtonPanel: true,
		showOn: "button",
		buttonImage: "../modules/AdvancedContent/images/calendar.png",
		altField: "#AdvancedContentStartDate",
		altFormat: "@"
	});
	jQuery( "#AdvancedContentEndDatePickerDisplay" ).datepicker({
		numberOfMonths: 3,
		showButtonPanel: true,
		showOn: "button",
		buttonImage: "../modules/AdvancedContent/images/calendar.png",
		altField: "#AdvancedContentEndDate",
		altFormat: "@"
	});
	jQuery('#parent_id').change(function() {
		jQuery('#Edit_Content').submit();
	});
});

AdvancedContent = {
	toggleBlock: function (tabId, navbar_id) {
		var navbar = document.getElementById(navbar_id);
		var tabs   = navbar.getElementsByTagName('div');
		
		for (var i = 0; i < tabs.length; i += 1) {
			//tabs[i].onmousedown = function() {
			for (var j = 0; j < tabs.length; j += 1) {
				tabs[j].className                                        = '';
				document.getElementById(tabs[j].id + "_c").style.display = 'none';
			}
			document.getElementById(tabId).className            = 'active';
			document.getElementById(tabId + "_c").style.display = 'block';
			return true;
			//}
		}
	},
	submitForm: function (button, targetId) {
		var form = jQuery(button).parents('form:first');
		jQuery('.AdvancedContent_AjaxFields').remove();
		if(form.length) {
			if(targetId != '' && !form.parents('#'+targetId).length) {
				jQuery('#'+targetId).html('');
			}
			var options = {
				success: function(responseText) {
					if(responseText != '' && targetId != '') {
						jQuery('#'+targetId).html(responseText);
					}
					return false;
				}
			}
			form.append('<input type="hidden" class="AdvancedContent_AjaxFields" name="disable_theme" value="1" />');
			form.append('<input type="hidden" class="AdvancedContent_AjaxFields" name="'+button.name+'" value="'+button.value+'" />');
			form.append('<input type="hidden" class="AdvancedContent_AjaxFields" name="{/literal}{$module_id}{literal}ajax" value="1" />');
			form.ajaxSubmit(options);
		}
		return false;
	},
	selectAll: function (obj) {
		if (obj.value == 1) {
			jQuery('input[name^="'+obj.id+'-"]').attr('checked','checked');
			obj.value = 0;
		}
		else {
			jQuery('input[name^="'+obj.id+'-"]').removeAttr('checked');
			obj.value = 1;
		}
	},
	importPages: function(href) {
		jQuery.get(href + '&{/literal}{$module_id}{literal}disable_theme=1&{/literal}{$module_id}{literal}ajax=1', function(data) {
			jQuery('#AdvancedContentResult').html(data);
		});
		return false;
	},
{/literal}{if isset($getproperty_url)}{literal}
	//getProperty: function(propname) {
	//	var data = [{'name': '{/literal}{$module_id}{literal}property', 'value': propname},{'name': '{/literal}{$module_id}{literal}serialized_content', 'value': document.getElementById('serialized_content').value}];
	//	jQuery.post('{/literal}{$getproperty_url}{literal}', data, function(resultData) {
	//		alert(resultData);
	//	});
	//	return false;
	//},
	getProperty: function(propname, callBack) {
		var data = jQuery('#Edit_Content').find('input:not([type=submit]), select, textarea').serializeArray();
		data.push({'name': '{/literal}{$module_id}{literal}property', 'value': propname});
		//data.push({ 'name': 'serialized_content', 'value': document.getElementById('serialized_content').value });
		jQuery.post('{/literal}{$getproperty_url}{literal}',data,function(resultdata,text){
				alert(resultdata);
				//var resp = jQuery(resultdata).find('Response').text();
				//var details = jQuery(resultdata).find('Details').text();
				//var htmlShow = '';
				//if( resp == 'Success' )
				//{
				//	htmlShow = '<div class="pagemcontainer"><p class="pagemessage">' + details + '<\/p><\/div>';
				//	jQuery('input[name=cancel]').fadeOut();
				//	jQuery('input[name=cancel]').attr('value','Close');
				//	jQuery('input[name=cancel]').fadeIn();
				//}
				//else
				//{
				//	htmlShow = '<div class="pageerrorcontainer"><ul class="pageerror">';
				//	htmlShow += details;
				//	htmlShow += '<\/ul><\/div>';
				//}
				//jQuery('#Edit_Content_Result').html(htmlShow);
			}
		);
		return false;
		jQuery.post('{/literal}{$getproperty_url}{literal}',{'{/literal}{$module_id}{literal}property': input.name, 'serialized_content': document.getElementById('serialized_content').value} , function(data,textStatus, jqXHR) {
			//callBack(input,data);
			console.log(jqXHR);
		});
		return false;
	},
{/literal}{/if}{literal}
	options: {
		title:'AdvancedContent',
		moduleId:'m1_',
		draggable:true,
		dragAxis:'x',
		resizable:true,
		resizableHandles:'e,w',
		cancelText:'Cancel',
		applyText:'Apply',
		fadeSpeed:300,
		animateSpeed:300,
		debug:false
	},
	multiContents: {},
	tmp: {
		currentblockId:'',
		height:0,
		innerHeight:0,
		blocks:{},
		template:{}
	},
	registerMultiContent: function(blockInfo) {
		this.multiContents[blockInfo['id']] = blockInfo;
	},
	registerMultiContentBlock: function(multiContentId, blockInfo) {
		this.multiContents[multiContentId].content_blocks[blockInfo['id']] = blockInfo;
		this.multiContents[multiContentId].content_blocks_count++;
	},
	displayContentBlock: function(blockInfo) {
		//AJAX?
		
	},
	addBlock: function() {
		this.openPanel();
	},
	editBlock: function(blockId) {
		//?
	},
	deleteBlock: function() {
		
	},
	openPanel: function(multiContentId) {
		/**
		 * open blockform
		 */
		
		var blockId = (arguments[1] ? arguments[1] : 'block_' + this.multiContents[multiContentId].content_blocks_count);
		this.getPanel(multiContentId,blockId);
		this.tmp.template['#AdvancedContent_background'].css('display','block').fadeTo(AdvancedContent.options.fadeSpeed, 0.65, function () {
			
			if(AdvancedContent.options.debug) {
				alert('faded in background');
			}
			
			AdvancedContent.tmp.template['#AdvancedContent'].css('display','block').fadeTo(AdvancedContent.options.fadeSpeed, 1, function() {
				AdvancedContent.tmp.template['#AdvancedContent_loading_img'].css('display','block');
					
				if(AdvancedContent.options.debug) {
					alert('loading from server');
				}
				
				// var url = this.getBlockUrl + blockparams ???;
				/*
				jQuery.get(url + '&' + AdvancedContent.options.moduleId + 'showtemplate=false&'  + AdvancedContent.options.moduleId + 'disable_theme=1&' + AdvancedContent.options.moduleId + 'ajax=1', function(data) {
					
					if(AdvancedContent.options.debug) {
						alert('content loaded');
					}
					
					AdvancedContent.tmp.template['#AdvancedContent'].css('height',AdvancedContent.tmp.template['#AdvancedContent'].height() + 'px');
					AdvancedContent.tmp.template['#AdvancedContent_content'].html(data);
					
					if(AdvancedContent.options.debug) {
						alert('replaced content with loaded data');
					}
					
					AdvancedContent.tmp.template['#AdvancedContent_header']   = jQuery("#AdvancedContent_header");
					AdvancedContent.ajaxForm();
					AdvancedContent.tmp.template['#AdvancedContent_filelist'] = jQuery("#AdvancedContent_filelist");
					if(typeof AdvancedContent.tmp.template['#AdvancedContent_filelist'].attr('id') != 'undefined') {
						AdvancedContent.tmp.template['#AdvancedContent_fileoperations']        = jQuery('#AdvancedContent_fileoperations');
						AdvancedContent.tmp.template['#AdvancedContent_toggle_fileoperations'] = jQuery('#AdvancedContent_toggle_fileoperations');
						AdvancedContent.tmp.template['#AdvancedContent_filelist'].css('max-height','').css('opacity',1);;
						
						if(AdvancedContent.options.debug) {
							alert('set max-height to "" + faded in filelist');
						}
					}
					
					if(jQuery('#AdvancedContent_content img').length) {
						AdvancedContent.tmp.template['#AdvancedContent_content'].onImagesLoad({
							selectorCallback: function (elm) {
								
								if(AdvancedContent.options.debug) {
									alert('images loaded; AdvancedContent.tmp.height:' + AdvancedContent.tmp.height);
								}
								
								AdvancedContent.getHeight();
								if(typeof AdvancedContent.tmp.template['#AdvancedContent_filelist'].attr('id') != 'undefined') {
									AdvancedContent.tmp.template['#AdvancedContent_filelist'].css('max-height', AdvancedContent.tmp.fileListHeight + 'px');
									
									if(AdvancedContent.options.debug) {
										alert('set max-height to ' + AdvancedContent.tmp.fileListHeight + '; AdvancedContent.tmp.height:' + AdvancedContent.tmp.height);
									}
								}
								if(AdvancedContent.ieVersion() < 8) {
									AdvancedContent.tmp.template['#AdvancedContent'].css('height','auto');
								}
								AdvancedContent.tmp.template['#AdvancedContent'].animate({height: AdvancedContent.tmp.height + (AdvancedContent.tmp.height != 'auto' ? 'px' : '')}, AdvancedContent.options.animateSpeed , 'swing', function() {
									
									if(AdvancedContent.options.debug) {
										alert('animated height; AdvancedContent.tmp.height:' + AdvancedContent.tmp.height);
									}
									
									AdvancedContent.tmp.template['#AdvancedContent_content'].fadeTo(AdvancedContent.options.fadeSpeed, 1, function() {
										AdvancedContent.tmp.template['#AdvancedContent_loading_img'].css('display','none');
										
										if(AdvancedContent.options.debug) {
											alert('faded in content');
										}
										
									});
								});
							}
						});
					}
					else {
						AdvancedContent.getHeight();
						if(typeof AdvancedContent.tmp.template['#AdvancedContent_filelist'].attr('id') != 'undefined') {
							AdvancedContent.tmp.template['#AdvancedContent_filelist'].css('max-height', AdvancedContent.tmp.fileListHeight + 'px');
							
							if(AdvancedContent.options.debug) {
								alert('set max-height to ' + AdvancedContent.tmp.fileListHeight);
							}
						}
						if(AdvancedContent.ieVersion() < 8) {
							AdvancedContent.tmp.template['#AdvancedContent'].css('height','auto');
						}
						AdvancedContent.tmp.template['#AdvancedContent'].animate({height: AdvancedContent.tmp.height + (AdvancedContent.tmp.height != 'auto' ? 'px' : '')}, AdvancedContent.options.animateSpeed , 'swing', function() {
							
							if(AdvancedContent.options.debug) {
								alert('animated height');
							}
							
							AdvancedContent.tmp.template['#AdvancedContent_content'].fadeTo(AdvancedContent.options.fadeSpeed, 1, function() {
								AdvancedContent.tmp.template['#AdvancedContent_loading_img'].css('display','none');
								
								if(AdvancedContent.options.debug) {
									alert('faded in content');
								}
								
							});
						});
					}
				});
				*/
			});
		});
	},
	getPanel: function(multiContentId) {
		
		var blockId = (arguments[1] ? arguments[1] : 'block_' + this.multiContents[multiContentId].content_blocks_count);
		
		if(document.getElementById('AdvancedContent_content') == null) {
			
			jQuery('body').append('<div id="AdvancedContent_wrapper"><div id="AdvancedContent_background" onclick="AdvancedContent.cancel(AdvancedContent.getCurrentBlockId())"></div><div id="AdvancedContent"><div id="AdvancedContent_titlebar"><span id="AdvancedContent_loading_img_wrapper"><img id="AdvancedContent_loading_img" alt="" src="../modules/AdvancedContent/images/loading.gif" /></span><h3 id="AdvancedContent_title">' + AdvancedContent.options.title + '</h3><div id="AdvancedContent_menu"><a id="AdvancedContent_apply" title="' + AdvancedContent.options.applyText + '" href="#" onclick="AdvancedContent.apply(AdvancedContent.getCurrentBlockId());return false;">'+ AdvancedContent.options.applyText +'</a><a id="AdvancedContent_cancel" title="' + AdvancedContent.options.cancelText + '" href="#" onclick="AdvancedContent.close(AdvancedContent.getCurrentBlockId());return false;">' + AdvancedContent.options.cancelText + '</a><div class="clearb"></div></div><div class="clearb"></div></div><div id="AdvancedContent_content">'+this.displayContentBlock(multiContentId,blockId)+'</div></div></div>');
			
			if(this.options.debug) {
				alert('appended wrapper to body');
			}
			
			this.tmp.template['#AdvancedContent_wrapper']    = jQuery('#AdvancedContent_wrapper');
			this.tmp.template['#AdvancedContent']            = jQuery("#AdvancedContent");
			this.tmp.template['#AdvancedContent_content']    = jQuery("#AdvancedContent_content");
			this.tmp.template['#AdvancedContent_titlebar']   = jQuery("#AdvancedContent_titlebar");
			this.tmp.template['#AdvancedContent_background'] = jQuery('#AdvancedContent_background');
		}
		
		this.tmp.template['#AdvancedContent_loading_img'] = jQuery("#AdvancedContent_loading_img");
		/*
		jQuery(window).resize(function() {
			this.resize();
		});
		*/
		this.tmp.template['#AdvancedContent_wrapper'].css('display','block').css('z-index',9999).css('opacity',1);
		if(this.options.draggable) {
			this.tmp.template['#AdvancedContent'].draggable({handle: '#AdvancedContent_titlebar', containment: "parent", cursor: "move", axis:this.options.dragAxis});
		}
		if(this.options.resizable) {
			this.tmp.template['#AdvancedContent'].resizable({handles: this.options.resizableHandles});
		}
		return;
	},
	ieVersion: function() {
		var version = 999;
		if (navigator.appVersion.indexOf("MSIE") != -1) {
			version = parseFloat(navigator.appVersion.split("MSIE")[1]);
		}
		return version;
	}
};
/* ]]> */
</script>
{/literal}

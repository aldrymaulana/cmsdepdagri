/*
 *        mbTabset plug in
 * 				developed by Matteo Bicocchi on JQuery
 *        © 2002-2009 Open Lab srl, Matteo Bicocchi
 *			    www.open-lab.com - info@open-lab.com
 *       	version 1.5
 *       	tested on: 	Explorer, FireFox and Chrome for PC
 *                  	FireFox and Safari for Mac Os X
 *                  	FireFox for Linux
 *         MIT (MIT-LICENSE.txt) licenses.
 */



(function($) {

	$.mbTabset={
		mbTabsetArray:[],
		options:{
			container:"",
			item:"a",
			sortable:true,
			position:"left",
			start:function(){},
			stop:function(){}
		},
		build: function(opt){
			this.each(function(){
				$(this).addClass("mbTabset");
				var mbTabsetOptions = {};
				$.extend (mbTabsetOptions, $.mbTabset.options);
				var el={el: $(this)};
				$.extend (mbTabsetOptions, el);
				$.extend (mbTabsetOptions, opt);
				$(this).addClass(mbTabsetOptions.position);
				var tabsetContainerID=$(this).attr("id")+"_container";
				$(this).after("<div class='mbTabsetContainer' id='"+tabsetContainerID+"'></div>");
				var tabsetContainer=$("#"+tabsetContainerID);

				this.opt=mbTabsetOptions;
				$(this).find(mbTabsetOptions.item+":first").addClass("sel");
				var tabs= $(this).find(mbTabsetOptions.item);
				if ($.metadata){
					$.metadata.setType("class");
					$(tabs).each(function(){
						if ($(this).metadata().content) $(this).attr("content",$(this).metadata().content);
						if ($(this).metadata().ajaxContent) $(this).attr("ajaxContent",$(this).metadata().ajaxContent);
						if ($(this).metadata().ajaxdata) $(this).attr("ajaxdata",$(this).metadata().ajaxdata);
					})
				}

				$(tabs).each(function(i){
					if ($(this).attr("ajaxContent")){
							if ($("#"+$(this).attr("content")).html()==null) {
								tabsetContainer.append("<div id='"+$(this).attr("content")+"'> aaa</div>");
							}
							var ajaxdata=(!$(this).attr("data"))?"":$(this).attr("data");
							var where=$("#"+$(this).attr("content"));
							$.ajax({
								type: "POST",
								url: $(this).attr("ajaxContent"),
								async: true,
								data: ajaxdata,
								success: function(html){
									where.html(html);
								}
							});
						}
					$(this).addClass("mbTab");
					$(this).wrapInner("<span></span>");
					var myContainer=$("#"+$(this).attr("content"));
					myContainer.addClass("tabContent");
					tabsetContainer.append(myContainer);
					myContainer.hide();
					if ($(this).hasClass("sel")) myContainer.fadeIn();

					$(this).bind("click",function(){

						if ($(this).is(".disabled , .sel")) return;
						var choosenTab=$(this);
						var actualCont="";
						$(tabs).each(function(){
							if ($(this).is(".sel")){
								actualCont=$(this).attr("content");
								$(this).removeClass("sel");
							}
						})
						$("#"+actualCont).fadeOut("fast",function(){
							choosenTab.addClass("sel");
							$("#"+choosenTab.attr("content")).slideDown("fast");
						})
					})
				})
				if (mbTabsetOptions.sortable){
					$(this).setSortableMbTabset(mbTabsetOptions);
				}

			})
		},
		toArray:function(el){
			return $(el).sortable("toArray");
		},
		actual:false,
		select: function(){


		},
		setSortable:function(opt){
			if (!opt) opt = $(this)[0].opt;
			var tabs= $(this).find(opt.item);
			$(tabs).each(function(){
				$(this).find("span").prepend("<i>&nbsp;</i>").addClass("sortable");
				$(this).find("i").bind("click",function(e){e.preventDefault();return false})
			})
			$(this).sortable({
				item:".tab",
				handle:"i",
				cursor:"move",
				revert:false,
				axis:"x",
				opacity:.7,
				forcePlaceholderSize:true,
				start: function(){
					$(this).find(".tab").addClass("floatEl");
					if (opt.start) opt.start();
				},
				stop: function(e){
					$(this).find(".tab").removeClass("floatEl");
					$.mbTabset.mbTabsetArray= $.mbTabset.toArray($(this));
					if (opt.stop) opt.stop();
				}
			});
		},
		clearSortable:function(opt){
			if (!opt) opt = $(this)[0].opt;
			var tabs= $(this).find(opt.item);
			$(tabs).each(function(){
				$(this).find("span").removeClass("sortable");
				$(this).find("i").remove();
			})
			$(this).sortable("destroy");
		}
	}
	$.fn.setSortableMbTabset = $.mbTabset.setSortable;
	$.fn.clearSortableMbTabset = $.mbTabset.clearSortable;
	$.fn.buildMbTabset = $.mbTabset.build;
	$.fn.serializeMbTabset = $.mbTabset.serialize;
})(jQuery)
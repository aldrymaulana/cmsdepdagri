<!-- generated by showtime Module start -->
        <script type="text/javascript">
        {literal}
        $(document).ready(function(){
            var lastslide=0;
            $("#slideshow_{/literal}{$showid}{literal}").css("overflow", "hidden");
            $('ul#slides_{/literal}{$showid}{literal}').cycle({ {/literal}
            {if $show.st_showtext || $show.st_showcomment}before: onbefore_{$showid},{/if}
            fx: '{$show.st_transition}',
            speed:    {$show.st_transitiontime}, 
            timeout:  {$show.st_rotatetime},
            {if $show.st_navbut}pager:      '#slideshow_nav_{$showid}',{/if} 
            pagerEvent: 'mouseover',
            {if !$show.st_autoplay}timeout: 0,{/if}

            {if $show.st_shuffle}random: 1,{/if}
            fastOnEvent: false,
            pauseOnPagerHover: true,
            prev: '#prev_{$showid}',
            next: '#next_{$showid}'{if $show.st_showtext || $show.st_showcomment},
            after: onafter_{$showid}{/if} {literal}
            });
            
            $("#slideshow_{/literal}{$showid}{literal}").hover(function() {
                $("ul#prevnextnav_{/literal}{$showid}{literal}").fadeIn();
            },
                function() {
                $("ul#prevnextnav_{/literal}{$showid}{literal}").fadeOut();
            });
        {/literal}{if $show.st_showtext || $show.st_showcomment}{literal}
            function onbefore_{/literal}{$showid}{literal}() {
                $('#com_{/literal}{$showid}{literal}_'+lastslide).clearQueue();
                $('#com_{/literal}{$showid}{literal}_'+lastslide).hide();
            }
            function onafter_{/literal}{$showid}{literal}(curr, next, opts) {
                var index = opts.currSlide;
                var indexlast = opts.lastSlide;
                $('#com_{/literal}{$showid}{literal}_'+index).queue(function (){
                    lastslide=index;
                    $(this).delay(500);
                    $(this).fadeIn('slow');
                    $(this).dequeue();
                });
            }
        {/literal}{/if}{literal}
        });

        {/literal}
        </script>

	<div id="slideshow_{$showid}" class="pics">
		{if $show.st_showtext || $show.st_showcomment}
			<div id="comments_st_{$showid}">
				{foreach from=$items item=entry}
					<div id="com_{$showid}_{$entry->slide_id}" 
						class="commentsparts_st_{$showid}">
						{if $show.st_showtext}
							<h2>{$entry->picture_name}</h2>
						{/if}
						{if $show.st_showcomment}
							{$entry->comment}
						{/if}
					</div>
			{/foreach}
			</div>
		{/if}

		{if $show.st_showcontrols}
			<ul id="prevnextnav_{$showid}">
				<li id="prev_{$showid}"><a href="#">Previous</a></li>
				<li id="next_{$showid}"><a href="#">Next</a></li>
			</ul>
		{/if}
{*
		{if $show.st_navbut}
            <div id="slideshow_nav_{$showid}" class="slide_nav_{$showid}"></div>
        {/if}
*}

		<ul id="slides_{$showid}">
			{foreach from=$items item=entry}
				<li>
					{if $entry->picture_url == ""}
						{$entry->picture}
					{else}
						<a href="{$entry->picture_url}" target="{$show.st_target}">{$entry->picture}</a>
					{/if}
				</li>
			{/foreach}
		</ul>
	</div> 
{if $show.st_navbut}
	<div id="slideshow_nav_{$showid}" class="slide_nav_{$showid}" style="position: relative;"></div>
{/if}	

<!-- generated by showtime Module end -->

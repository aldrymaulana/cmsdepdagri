<?php
			$smarty->assign('edit_animationtype', 
				$this->CreateInputRadioGroup($id,"st_animationtype",
				array('<img src="../modules/Showtime/images/swfobject_icon.jpg" />'=>"swfobject",
				'<img src="../modules/Showtime/images/jQuery_icon.jpg" />'=>"jQuery"),
				'jQuery','','<br /><br /><br />'));

			//labels and comments
			$this->smarty->assign('basic',$this->Lang('editshow_basic'));
			$this->smarty->assign('label_width',$this->Lang('editshow_width'));
			$this->smarty->assign('label_height',$this->Lang('editshow_height'));
			$this->smarty->assign('label_scaling',$this->Lang('editshow_scaling'));
			$this->smarty->assign('label_animationtype',$this->Lang('animationtype'));
			$this->smarty->assign('animation_info',$this->Lang('animation_info'));
			$this->smarty->assign('label_slide_options',$this->Lang('editshow_slide_options'));
			$this->smarty->assign('shuffle_onoff',$this->Lang('editshow_shuffle_onoff'));
			$this->smarty->assign('auto_onoff',$this->Lang('editshow_auto_onoff'));
			$this->smarty->assign('controls_onoff',$this->Lang('editshow_controls_onoff'));
			$this->smarty->assign('label_transition',$this->Lang('editshow_transition'));
			$this->smarty->assign('label_rotation',$this->Lang('editshow_rotation'));
			$this->smarty->assign('label_transitiontime',$this->Lang('editshow_transitiontime'));
			$this->smarty->assign('label_slide_bg',$this->Lang('editshow_slide_bg'));
			$this->smarty->assign('slide_bg_info',$this->Lang('editshow_slide_bg_info'));
			$this->smarty->assign('text_options',$this->Lang('editshow_text_options'));
			$this->smarty->assign('label_show_title',$this->Lang('editshow_show_title'));
			$this->smarty->assign('label_show_comment',$this->Lang('editshow_show_comment'));
			$this->smarty->assign('label_bg_text',$this->Lang('editshow_bg_text'));
			$this->smarty->assign('label_text_bgcolor',$this->Lang('editshow_text_bgcolor'));
			$this->smarty->assign('label_text_color',$this->Lang('editshow_text_color'));
			$this->smarty->assign('label_font_type',$this->Lang('editshow_font_type'));
			$this->smarty->assign('label_title_size',$this->Lang('editshow_title_size'));
			$this->smarty->assign('label_comment_size',$this->Lang('editshow_comment_size'));
			$this->smarty->assign('label_comment_pos',$this->Lang('editshow_comment_pos'));


			$this->smarty->assign('st_width',$this->CreateInputText($id,'st_width',$st_width,5,5));
			$this->smarty->assign('st_height',$this->CreateInputText($id,'st_height',$st_height,5,5));


			$smarty->assign('st_scale', 
				$this->CreateInputRadioGroup($id,"st_scale",
				array('<img src="../modules/Showtime/images/sc_noscale.png" /> '.$this->Lang('editshow_noscale')=>"noscale",
					  '<img src="../modules/Showtime/images/sc_showall.png" /> '.$this->Lang('editshow_showall')=>"showall",
					  '<img src="../modules/Showtime/images/sc_exactfit.png" /> '.$this->Lang('editshow_exact')=>"exactfit",
					  '<img src="../modules/Showtime/images/sc_noborder.png" /> '.$this->Lang('editshow_fit')=>"noborder"),
				$st_scale,'','<br />'));

			$hiddenfield .= $this->CreateInputHidden($id, 'st_wmode',$st_wmode,'');

			$smarty->assign('st_commentpos', 
				$this->CreateInputRadioGroup($id,"st_commentpos",
				array('<img src="../modules/Showtime/images/comments_top.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"top",
					  '<img src="../modules/Showtime/images/comments_right.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"right",
					  '<img src="../modules/Showtime/images/comments_bottom.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"bottom",
					  '<img src="../modules/Showtime/images/comments_left.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"left"),
				$st_commentpos,'','&nbsp;'));

			
			$keyvalues=array();
			$keyvalues['none']='none'; 
			$keyvalues['blindX']='blindX';
			$keyvalues['blindY']='blindY';
			$keyvalues['blindZ']='blindZ';
			$keyvalues['cover']='cover';
			$keyvalues['curtainX']='curtainX';
			$keyvalues['curtainY']='curtainY';
			$keyvalues['fade']='fade';
			$keyvalues['fadeZoom']='fadeZoom';
			$keyvalues['growX']='growX';
			$keyvalues['growY']='growY';
			$keyvalues['scrollUp']='scrollUp';
			$keyvalues['scrollDown']='scrollDown';
			$keyvalues['scrollLeft']='scrollLeft';
			$keyvalues['scrollRight']='scrollRight'; 
			$keyvalues['scrollHorz']='scrollHorz'; 
			$keyvalues['scrollVert']='scrollVert'; 
			$keyvalues['slideX']='slideX'; 
			$keyvalues['slideY']='slideY'; 
			$keyvalues['toss']='toss'; 
			$keyvalues['turnUp']='turnUp'; 
			$keyvalues['turnDown']='turnDown'; 
			$keyvalues['turnLeft']='turnLeft'; 
			$keyvalues['turnRight']='turnRight'; 
			$keyvalues['uncover']='uncover'; 
			$keyvalues['wipe']='wipe'; 
			$keyvalues['zoom']='zoom';
			//see if Value is acceptable
			if (in_array($st_transition,$keyvalues)){
				$this->smarty->assign('st_transition',
				$this->CreateInputDropdown($id, 'st_transition',$keyvalues,-1,$st_transition, $addttext=''));
			}else{
				$this->smarty->assign('st_transition',
				$this->CreateInputDropdown($id, 'st_transition',$keyvalues,-1,'none', $addttext=''));
				$st_transition='none';
			}
			
			$hiddenfield .= $this->CreateInputHidden($id, 'st_easeFunc',$st_easeFunc,'');
			$hiddenfield .= $this->CreateInputHidden($id, 'st_ease',$st_ease,'');
			
			$this->smarty->assign('st_rotatetime',$this->CreateInputText($id,'st_rotatetime',$st_rotatetime,5,5));
			$this->smarty->assign('st_transitiontime',$this->CreateInputText($id,'st_transitiontime',$st_transitiontime,5,5));
			$this->smarty->assign('st_bgcolor',$this->CreateInputText($id,'st_bgcolor',$st_bgcolor,7,7,'class="hello"'));
			$this->smarty->assign('st_showtext',$this->CreateInputCheckbox($id,'st_showtext','true',$st_showtext));
			$this->smarty->assign('st_showcomment',$this->CreateInputCheckbox($id,'st_showcomment','true',$st_showcomment));
			$this->smarty->assign('st_showalt',$this->CreateInputCheckbox($id,'st_showalt','true',$st_showalt));
			$this->smarty->assign('st_textbgcolor',$this->CreateInputText($id,'st_textbgcolor',$st_textbgcolor,7,7));
			$this->smarty->assign('st_textcolor',$this->CreateInputText($id,'st_textcolor',$st_textcolor,7,7));
			
			$keyvalues=array();
			$keyvalues['Verdana, Geneva, sans-serif']='verdana';
			$keyvalues['"Courier New", Courier, monospace']='courier';
			$keyvalues['Arial, Helvetica, sans-serif']='arial';
			$keyvalues['Tahoma, Geneva, sans-serif']='tahoma';
			$keyvalues['_sans, Helvetica, Arial']='sans';
			$keyvalues['"Times New Roman", Times, serif']='times ';
			$keyvalues['"MS Serif", "New York", serif']='serif';  
			$this->smarty->assign('st_fonttype',
				$this->CreateInputDropdown($id, 'st_fonttype',$keyvalues,-1,$st_fonttype, $addttext=''));
			
			$keyvalues=array();
			$keyvalues['8']='8';
			$keyvalues['9']='9';
			$keyvalues['10']='10';
			$keyvalues['12']='12';
			$keyvalues['14']='14';
			$keyvalues['16']='16';
			$keyvalues['18']='18';
			$keyvalues['20']='20';
			$keyvalues['22']='22';
			$keyvalues['24']='24';
			$keyvalues['26']='26';
			$keyvalues['28']='28';
			$keyvalues['30']='30';
			$keyvalues['32']='32';
			$keyvalues['34']='34';
			$keyvalues['36']='36';
			$keyvalues['38']='38';
			$keyvalues['40']='40';
			$keyvalues['42']='42';
			$keyvalues['44']='44';
			$keyvalues['46']='46';
			$keyvalues['48']='48';
			$keyvalues['50']='50';
			$keyvalues['52']='52';
			$keyvalues['54']='54';
			$keyvalues['56']='56';
			$keyvalues['58']='58';
			$keyvalues['60']='60';
			$keyvalues['65']='65';
			$keyvalues['70']='70';
			$keyvalues['75']='75';
			$keyvalues['80']='80';
			$this->smarty->assign('st_titlesize',
				$this->CreateInputDropdown($id, 'st_titlesize',$keyvalues,-1,$st_titlesize, $addttext=''));
			$this->smarty->assign('st_textsize',
				$this->CreateInputDropdown($id, 'st_textsize',$keyvalues,-1,$st_textsize, $addttext=''));
			
			$st_rotatetime = $st_rotatetime * 1000;
			$st_transitiontime = $st_transitiontime * 1000;
			
			// we need clean values for our example
			$this->smarty->assign('stt_rotatetime',$st_rotatetime);
			$this->smarty->assign('stt_transition',$st_transition);
			$this->smarty->assign('stt_transitiontime',$st_transitiontime);
			$this->smarty->assign('stt_scale',$st_scale);
			$this->smarty->assign('stt_wmode',$st_wmode);
			$this->smarty->assign('stt_commentpos',$st_commentpos);
			$this->smarty->assign('stt_bgcolor',$st_bgcolor);
			$this->smarty->assign('showidvalue',$showid);		
			$this->smarty->assign('stt_easeFunc',$stt_easeFunc);
			$this->smarty->assign('stt_autoplay',$stt_autoplay);
			$this->smarty->assign('stt_showcontrols',$stt_showcontrols);
			$this->smarty->assign('stt_showcontrolssub',$st_showcontrolssub);
			$this->smarty->assign('stt_textbgcolor',$stt_textbgcolor);
			$this->smarty->assign('stt_showtext',$stt_showtext);
			$this->smarty->assign('stt_showcomment',$stt_showcomment);
			$this->smarty->assign('stt_textcolor',$st_textcolor);
			$this->smarty->assign('stt_textsize',$st_textsize);
			$this->smarty->assign('stt_titlesize',$st_titlesize);
			$this->smarty->assign('stt_showalt',$stt_showalt);
			$this->smarty->assign('stt_shuffle',$stt_shuffle);
			$this->smarty->assign('stt_navbut',$stt_navbut);
			$this->smarty->assign('stt_nav_bordercolor',$st_nav_bordercolor);
			$this->smarty->assign('stt_nav_bordersize',$st_nav_bordersize);
			$this->smarty->assign('stt_nav_radius',$st_nav_radius);
			$this->smarty->assign('stt_nav_bgcolor',$st_nav_bgcolor);
			$this->smarty->assign('stt_nav_bgactivecolor',$st_nav_bgactivecolor);
			$this->smarty->assign('stt_nav_textcolor',$st_nav_textcolor);
			$this->smarty->assign('stt_nav_showtext',$st_nav_showtext);
			$this->smarty->assign('stt_nav_textsize',$stt_nav_textsize);
			$this->smarty->assign('stt_nav_vmargin_text',$stt_nav_vmargin_text);
			$this->smarty->assign('stt_nav_hmargin_text',$stt_nav_hmargin_text);
			$this->smarty->assign('stt_nav_size',$st_nav_size);
			$this->smarty->assign('stt_nav_pos',$st_nav_pos);
			$this->smarty->assign('stt_nav_padding',$st_nav_padding);

			//set textoptions
			switch ($st_fonttype){
				case 'verdana':
					$stt_fonttype='Verdana, Geneva, sans-serif' ;break;
				case 'courier':
					$stt_fonttype='"Courier New", Courier, monospace' ;break;
				case 'arial':
					$stt_fonttype='Arial, Helvetica, sans-serif' ;break;
				case 'tahoma':
					$stt_fonttype='Tahoma, Geneva, sans-serif' ;break;
				case 'sans':
					$stt_fonttype='_sans, Helvetica, Arial' ;break;
				case 'times':
					$stt_fonttype='"Times New Roman", Times, serif' ;break;
				case 'serif':
					$stt_fonttype='"MS Serif", "New York", serif' ;break;
			}
			$this->smarty->assign('stt_fonttype',$stt_fonttype);
		
			$this->smarty->assign('st_shuffle',$this->CreateInputCheckbox($id,'st_shuffle','true',$st_shuffle));
			$this->smarty->assign('st_navbut',$this->CreateInputCheckbox($id,'st_navbut','true',$st_navbut));
			$this->smarty->assign('st_autoplay',$this->CreateInputCheckbox($id,'st_autoplay','true',$st_autoplay));

			$this->smarty->assign('st_showcontrols',$this->CreateInputCheckbox($id,'st_showcontrols','true',$st_showcontrols));
			$this->smarty->assign('showcontrols_images', '<img src="../modules/Showtime/templates/jquery/images/prev_20.png" />
				<img src="../modules/Showtime/templates/jquery/images/next_20.png" />');
			$hiddenfield .= $this->CreateInputHidden($id,'st_showcontrolssub',$st_showcontrolssub);
			

			// navigation buttons configuration (mostly CSS settings)
			$this->smarty->assign('settings_nav',$this->Lang('editshow_settings_nav'));
			$this->smarty->assign('choose_presets',$this->Lang('editshow_choose_presets'));
			$this->smarty->assign('bar_onoff',$this->Lang('editshow_bar_onoff'));
			$this->smarty->assign('border_color',$this->Lang('editshow_border_color'));
			$this->smarty->assign('border_size',$this->Lang('editshow_border_size'));
			$this->smarty->assign('border_rad',$this->Lang('editshow_border_rad'));
			$this->smarty->assign('bg_color',$this->Lang('editshow_bg_color'));
			$this->smarty->assign('bg_acolor',$this->Lang('editshow_bg_acolor'));
			$this->smarty->assign('text_onoff',$this->Lang('editshow_text_onoff'));
			$this->smarty->assign('text_color',$this->Lang('editshow_text_color'));
			$this->smarty->assign('button_size',$this->Lang('editshow_button_size'));
			$this->smarty->assign('position',$this->Lang('editshow_position'));
			$this->smarty->assign('margin',$this->Lang('editshow_margin'));
			
			$this->smarty->assign('st_navbut',$this->CreateInputCheckbox($id,'st_navbut','true',$st_navbut));
			$this->smarty->assign('st_nav_bordercolor',$this->CreateInputText($id,'st_nav_bordercolor',$st_nav_bordercolor,7,7));
			$this->smarty->assign('st_nav_bordersize',$this->CreateInputText($id,'st_nav_bordersize',$st_nav_bordersize,5,5));
			$this->smarty->assign('st_nav_radius',$this->CreateInputText($id,'st_nav_radius',$st_nav_radius,5,5));
			$this->smarty->assign('st_nav_bgcolor',$this->CreateInputText($id,'st_nav_bgcolor',$st_nav_bgcolor,7,7));
			$this->smarty->assign('st_nav_bgactivecolor',$this->CreateInputText($id,'st_nav_bgactivecolor',$st_nav_bgactivecolor,7,7));
			$this->smarty->assign('st_nav_textcolor',$this->CreateInputText($id,'st_nav_textcolor',$st_nav_textcolor,7,7));
			$this->smarty->assign('st_nav_showtext',$this->CreateInputCheckbox($id,'st_nav_showtext','true',$st_nav_showtext));
			$this->smarty->assign('st_nav_size',$this->CreateInputText($id,'st_nav_size',$st_nav_size,5,5));
			$smarty->assign('st_nav_pos', 
				$this->CreateInputRadioGroup($id,"st_nav_pos",
				array('<img src="../modules/Showtime/images/nav_bottom_right.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"bottom_right",
					  '<img src="../modules/Showtime/images/nav_bottom_left.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"bottom_left",
					  '<img src="../modules/Showtime/images/nav_top_right.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"top_right",
					  '<img src="../modules/Showtime/images/nav_top_left.png" />&nbsp;&nbsp;&nbsp;&nbsp;'=>"top_left"),
				$st_nav_pos,'',''));
			$this->smarty->assign('st_nav_padding',$this->CreateInputText($id,'st_nav_padding',$st_nav_padding,5,5));
			$smarty->assign('st_nav_presets', 
				$this->CreateInputRadioGroup($id,"st_nav_presets",
				array('<img src="../modules/Showtime/images/nav_presets_01.png" />'=>"1",
					  '<img src="../modules/Showtime/images/nav_presets_02.png" />'=>"2",
					  '<img src="../modules/Showtime/images/nav_presets_03.png" />'=>"3",
					  '<img src="../modules/Showtime/images/nav_presets_04.png" />'=>"4",
					  '<img src="../modules/Showtime/images/nav_presets_05.png" />'=>"5",
					  '<img src="../modules/Showtime/images/nav_presets_06.png" />'=>"6"),
				$st_nav_pos,'','&nbsp;&nbsp;'));
				
?>
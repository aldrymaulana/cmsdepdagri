<?php
if (!isset($gCms)) exit;
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}

$showid = (isset($params['showid']) ? $params['showid'] : '');
$showname = (isset($params['showname']) ? $params['showname'] : '');
$shownumber = (isset($params['shownumber']) ? $params['shownumber'] : '');

if (isset($params['cancel']))
	$this->Redirect($id, 'defaultadmin', $returnid,array('showid'=>$showid));

$tab='prefs';
$hiddenfield='';
$errorfound =false;

//set all params to default
if (isset($params['default'])){
	if ($showid!='' && $showname!=''){
		$st_rotatetime=5;
		$st_transitiontime=1;
			if ($params['st_animationtype']=="swfobject"){
				$st_transition='Blur';
			}else{
				$st_transition='toss';
			}
		$st_easeFunc='Linear';
		$st_ease='easeOut';
		$st_autoplay=1;
		$st_showcontrols=1;
		$st_showcontrolssub=1004;
		$st_textbgcolor='#000000';
		$st_showtext=1;
		$st_showcomment=1;
		$st_showalt=1;
		$st_textcolor='#eeeeee';
		$st_textsize=12;
		$st_titlesize=16;
		$st_fonttype='sans';	
		$st_bgcolor='#000000';
		$st_scale='exactfit';
		$st_wmode='window';
		$st_commentpos='top';
		$st_shuffle=0;		
		$st_navbut=1;
		$st_nav_bordercolor='#CCCCCC';
		$st_nav_bordersize=1;
		$st_nav_radius=0;
		$st_nav_bgcolor='#EEEEEE';
		$st_nav_bgactivecolor='#FFFFFF';
		$st_nav_textcolor='#333333';
		$st_nav_showtext=1;
		$st_nav_size=20;
		$st_nav_pos='bottom_right';
		$st_nav_padding=5;
		$st_target='_self';
		$st_link='internal page';

		$query = 'UPDATE '.cms_db_prefix().'module_showtime_name SET 
			st_rotatetime=?, st_transitiontime=?,st_transition=?, st_easeFunc=?, st_ease=?, 
			st_autoplay=?, st_showcontrols=?, st_showcontrolssub=?,st_textbgcolor=?,	
			st_showtext=?, st_showcomment=? , st_showalt=?, st_textcolor=?, 
			st_textsize=?, st_titlesize=?, st_fonttype=?, st_bgcolor=?, st_scale=?, 
			st_wmode=?, st_commentpos=?, st_shuffle=?, st_navbut=?, st_nav_bordercolor=?, st_nav_bordersize=?,
			st_nav_radius=?, st_nav_bgcolor=?, st_nav_bgactivecolor=?, st_nav_textcolor=?, st_nav_showtext=?,
			st_nav_size=?, st_nav_pos=?, st_nav_padding=? , st_target=?, st_link=?
			WHERE show_id = ?';
		$db->Execute($query, array(
			$st_rotatetime,	$st_transitiontime,	$st_transition,	$st_easeFunc, $st_ease,
			$st_autoplay, $st_showcontrols,	$st_showcontrolssub, $st_textbgcolor, 
			$st_showtext, $st_showcomment, $st_showalt ,$st_textcolor,
			$st_textsize, $st_titlesize, $st_fonttype,	$st_bgcolor, $st_scale, 
			$st_wmode, $st_commentpos, $st_shuffle,$st_navbut, $st_nav_bordercolor, $st_nav_bordersize,
			$st_nav_radius, $st_nav_bgcolor, $st_nav_bgactivecolor, $st_nav_textcolor, $st_nav_showtext,
			$st_nav_size, $st_nav_pos, $st_nav_padding,$st_target, $st_link	,$showid));
			
		//write CSS file
		$query = "SELECT * FROM ".cms_db_prefix()."module_showtime_name WHERE show_id = ".$showid;
		$result=$db->Execute($query);
		if ( $result && $result->RecordCount() > 0 ){
			$row=$result->FetchRow();
		}
		$cssstring = $this->CreateCSSstring($row, $config['root_url']);
		$cssfilename = '../modules/Showtime/templates/css/Show_' . $showid . '.css';
		$handle = fopen($cssfilename,'w');
		fwrite($handle,$cssstring);
		fclose($handle);
			
		$tab="prefs";
	}
}


//submit or apply button pressed
if (isset($params['submit']) || isset($params['apply'])){
	if ($showid!='' && $showname!=''){
		
		//see if we need to change Shownumber
		//check if we have a diferent number
		if ($showid  != $shownumber){
			//see if we have a valid number maybe number is already in us by other show's
			$query = "SELECT * FROM ".cms_db_prefix()."module_showtime_name WHERE show_id = ".$shownumber;
			$result=$db->Execute($query);
			if ( $result && $result->RecordCount() > 0 ){
				//error this number is already in use!
				echo $this->ShowErrors($this->Lang('editshow_error_showid'));
				$errorfound = true;
				
			}else{  //change the number				
				$query = "UPDATE " . cms_db_prefix() . "module_showtime_name SET show_id=? WHERE show_id=?";
				$result = $db->Execute($query, array($shownumber, $showid));
				$query = "UPDATE " . cms_db_prefix() . "module_showtime SET show_id=? WHERE show_id=?";
				$result = $db->Execute($query, array($shownumber, $showid));
				$showid = $shownumber;
			}
			
		}
		
		
		// nav_presets
		if (isset($params['st_nav_presets'])){
			switch ($params['st_nav_presets']){
				case '1':
					$params['st_navbut']=1;
					$params['st_nav_bordercolor']='#444040';
					$params['st_nav_bordersize']=2;
					$params['st_nav_radius']=0;
					$params['st_nav_bgcolor']='#6b6b6b';
					$params['st_nav_bgactivecolor']='#F79838';
					unset($params['st_nav_showtext']);
					$params['st_nav_textcolor']='#333333';
					$params['st_nav_size']=12;
					break;
				case '2':
					$params['st_navbut']=1;
					$params['st_nav_bordercolor']='#444040';
					$params['st_nav_bordersize']=0;
					$params['st_nav_radius']=8;
					$params['st_nav_bgcolor']='#6b6b6b';
					$params['st_nav_bgactivecolor']='#BEABF7';
					unset($params['st_nav_showtext']);
					$params['st_nav_textcolor']='#333333';
					$params['st_nav_size']=16;
					break;
				case '3':
					$params['st_navbut']=1;
					$params['st_nav_bordercolor']='#444040';
					$params['st_nav_bordersize']=1;
					$params['st_nav_radius']=3;
					$params['st_nav_bgcolor']='#CD2323';
					$params['st_nav_bgactivecolor']='#FD4B2B';
					$params['st_nav_showtext']=1;
					$params['st_nav_textcolor']='#FDFADE';
					$params['st_nav_size']=20;
					break;
				case '4':
					$params['st_navbut']=1;
					$params['st_nav_bordercolor']='#CCCCCC';
					$params['st_nav_bordersize']=0;
					$params['st_nav_radius']=10;
					$params['st_nav_bgcolor']='#EEEEEE';
					$params['st_nav_bgactivecolor']='#34D3F9';
					unset($params['st_nav_showtext']);
					$params['st_nav_textcolor']='#333333';
					$params['st_nav_size']=20;
					break;
				case '5':
					$params['st_navbut']=1;
					$params['st_nav_bordercolor']='#7D7D7D';
					$params['st_nav_bordersize']=0;
					$params['st_nav_radius']=12;
					$params['st_nav_bgcolor']='#FFFFFF';
					$params['st_nav_bgactivecolor']='#F79838';
					$params['st_nav_showtext']=1;
					$params['st_nav_textcolor']='#000000';
					$params['st_nav_size']=24;
					break;
				case '6':
					$params['st_navbut']=1;
					$params['st_nav_bordercolor']='#CCCCCC';
					$params['st_nav_bordersize']=2;
					$params['st_nav_radius']=5;
					$params['st_nav_bgcolor']='#CCCCCC';
					$params['st_nav_bgactivecolor']='#FFFFFF';
					$params['st_nav_showtext']=1;
					$params['st_nav_textcolor']='#333333';
					$params['st_nav_size']=18;
					break;
			}
		}

		//save showsettings
		$st_animationtype=isset($params['st_animationtype'])?$params['st_animationtype']:'swfobject';
		$st_height=isset($params['st_height'])?$params['st_height']:320;
		$st_width=isset($params['st_width'])?$params['st_width']:640;
		$st_rotatetime=isset($params['st_rotatetime'])?$params['st_rotatetime']:5;
		$st_transitiontime=isset($params['st_transitiontime'])?$params['st_transitiontime']:1;
		if ($params['st_animationtype']=="swfobject"){
			//see if transition is valued else get standard
			$os = array('Blur','Fade','Flash','ZoomIn','ZoomOut','SlideDown','SlideUp','SlideLeft','SlideRight','WipeH','WipeV','FlipH','FlipV','Flip','KenBurns');
			if (!in_array($params['st_transition'], $os)) {
				$st_transition='Blur';
			}else{
				$st_transition=$params['st_transition'];
			}
		}else{
			//see if transition is valued else get standard
			$os = array('none','blindX','blindY','blindZ','cover','curtainX','curtainY','fade','fadeZoom','growX','growY','scrollUp','scrollDown','scrollLeft','scrollRight','scrollHorz','scrollVert','slideX','slideY','toss','turnUp','turnDown','turnLeft','turnRight','uncover','wipe','zoom');

			if (!in_array($params['st_transition'], $os)) {
				$st_transition='toss';
			}else{
				$st_transition=$params['st_transition'];
			}
		}
		$st_easeFunc=isset($params['st_easeFunc'])?$params['st_easeFunc']:'Linear';
		$st_ease=isset($params['st_ease'])?$params['st_ease']:'easeOut';	
		$st_autoplay=isset($params['st_autoplay'])?1:0;
		$st_showcontrols=isset($params['st_showcontrols'])?1:0;
		//read control settings
		if (isset($params['st_showcontrolssub'])){
			$st_showcontrolssub = $params['st_showcontrolssub'];
		}else{
			$st_showcontrolssub = isset($params['st_control_left'])?'1':'0';
			$st_showcontrolssub .= isset($params['st_control_fullscreen'])?'2':'0';
			$st_showcontrolssub .= isset($params['st_control_pause'])?'3':'0';
			$st_showcontrolssub .= isset($params['st_control_right'])?'4':'0';
		}

		$st_textbgcolor=isset($params['st_textbgcolor'])?$params['st_textbgcolor']:'#000000';
		$st_showtext=isset($params['st_showtext'])?1:0;
		$st_showcomment=isset($params['st_showcomment'])?1:0;
		$st_showalt=isset($params['st_showalt'])?1:0;
		$st_textcolor=isset($params['st_textcolor'])?$params['st_textcolor']:'#eeeeee';
		$st_textsize=isset($params['st_textsize'])?$params['st_textsize']:12;
		$st_titlesize=isset($params['st_titlesize'])?$params['st_titlesize']:16;
		$st_fonttype=isset($params['st_fonttype'])?$params['st_fonttype']:'sans';	
		$st_bgcolor=isset($params['st_bgcolor'])?$params['st_bgcolor']:'#000000';
		$st_scale=isset($params['st_scale'])?$params['st_scale']:'exactfit';
		$st_wmode=isset($params['st_wmode'])?$params['st_wmode']:'window';
		$st_commentpos=isset($params['st_commentpos'])?$params['st_commentpos']:'top';
		$st_shuffle=isset($params['st_shuffle'])?1:0;		
		$st_navbut=isset($params['st_navbut'])?1:0;		
		$st_nav_bordercolor=isset($params['st_nav_bordercolor'])?$params['st_nav_bordercolor']:'#CCCCCC';
		$st_nav_bordersize=isset($params['st_nav_bordersize'])?$params['st_nav_bordersize']:1;
		$st_nav_radius=isset($params['st_nav_radius'])?$params['st_nav_radius']:0;
		$st_nav_bgcolor=isset($params['st_nav_bgcolor'])?$params['st_nav_bgcolor']:'#EEEEEE';
		$st_nav_bgactivecolor=isset($params['st_nav_bgactivecolor'])?$params['st_nav_bgactivecolor']:'#FFFFFF';
		$st_nav_textcolor=isset($params['st_nav_textcolor'])?$params['st_nav_textcolor']:'#333333';
		$st_nav_showtext=isset($params['st_nav_showtext'])?1:0;
		$st_nav_size=isset($params['st_nav_size'])?$params['st_nav_size']:20;
		$st_nav_pos=isset($params['st_nav_pos'])?$params['st_nav_pos']:'bottom_right';
		$st_nav_padding=isset($params['st_nav_padding'])?$params['st_nav_padding']:5;
		$st_target=isset($params['st_target'])?$params['st_target']:'_self';
		$st_link=isset($params['st_link'])?$params['st_link']:'internal page';


		if ($this->CheckPermission('Use Showtime Prefs')){
			$query = 'UPDATE '.cms_db_prefix().'module_showtime_name SET 
				show_name=?,st_animationtype=?, st_height=?, st_width=?, st_rotatetime=?, st_transitiontime=?,	st_transition=?, 
				st_easeFunc=?, st_ease=?, st_autoplay=?, st_showcontrols=?, st_showcontrolssub=? ,st_textbgcolor=?, 
				st_showtext=?, st_showcomment = ?, st_showalt=?,
				st_textcolor=?, st_textsize=?, st_titlesize= ?, st_fonttype=?, st_bgcolor=?, st_scale=?,
				st_wmode=?, st_commentpos=? , st_shuffle=? , st_navbut=?, st_nav_bordercolor=?, st_nav_bordersize=?,
				st_nav_radius=?, st_nav_bgcolor=?, st_nav_bgactivecolor=?, st_nav_textcolor=?, st_nav_showtext=?,
				st_nav_size=?, st_nav_pos=?, st_nav_padding=?, st_target=?, st_link=?
				 WHERE show_id = ?';
			$db->Execute($query, array(
				$showname,$st_animationtype, $st_height, $st_width, $st_rotatetime, $st_transitiontime, $st_transition,
				$st_easeFunc, $st_ease, $st_autoplay, $st_showcontrols,	$st_showcontrolssub, $st_textbgcolor, 
				$st_showtext, $st_showcomment ,$st_showalt,
				$st_textcolor, $st_textsize, $st_titlesize, $st_fonttype, $st_bgcolor,	$st_scale,
				$st_wmode, $st_commentpos , $st_shuffle,$st_navbut,$st_nav_bordercolor, $st_nav_bordersize,
				$st_nav_radius, $st_nav_bgcolor, $st_nav_bgactivecolor, $st_nav_textcolor, $st_nav_showtext,
				$st_nav_size, $st_nav_pos, $st_nav_padding, $st_target, $st_link, $showid));
				
			//write CSS file
			$query = "SELECT * FROM ".cms_db_prefix()."module_showtime_name WHERE show_id = ".$showid;
			$result=$db->Execute($query);
			if ( $result && $result->RecordCount() > 0 ){
				$row=$result->FetchRow();
			}
			$cssstring = $this->CreateCSSstring($row, $config['root_url']);
			$cssfilename = '../modules/Showtime/templates/css/Show_' . $showid . '.css';
			$handle = fopen($cssfilename,'w');
			fwrite($handle,$cssstring);
			fclose($handle);
			
		
		}else{ //(no permission only update name.
			$query = 'UPDATE '.cms_db_prefix().'module_showtime_name SET show_name=? WHERE show_id = ?';
			$db->Execute($query, array($showname,$showid));
		}
		
		if (isset($params['submit']) && (!$errorfound)){
			$params = array('module_message' => $this->Lang('editshow_options_updated'));
			$this->Redirect($id, 'defaultadmin', $returnid, $params);
		}
		if (isset($params['apply'])){
			$tab="prefs";
		}
	}else{
		echo $this->ShowErrors($this->Lang('error_nonamegiven'));	
	}

}

// show Form if we have showid
//===============================================================================================>START FORM
if ($showid != ''){
	$query = 'SELECT * FROM '.cms_db_prefix().'module_showtime_name WHERE show_id = ?';
	$dbresult = $db->Execute($query, array($showid));
	while (($row = $dbresult->FetchRow())){
		$show_id = $row['show_id'];
		$show_name = $row['show_name'];
		$st_animationtype = $row['st_animationtype'];		
		$st_height = $row['st_height']; 
		$st_width = $row['st_width']; 
		$st_rotatetime = $row['st_rotatetime']; 
		$st_transitiontime = $row['st_transitiontime']; 	
		$st_transition = $row['st_transition']; 
		$st_easeFunc = $row['st_easeFunc']; 
		$st_ease = $row['st_ease']; 
		$st_autoplay=($row['st_autoplay'])?'true':'false';	
		$st_showcontrols = ($row['st_showcontrols'])?'true':'false'; 	
		$st_showcontrolssub = $row['st_showcontrolssub'];
		$st_textbgcolor = $row['st_textbgcolor']; 	
		$st_showtext = ($row['st_showtext'])?'true':'false'; 
		$st_showcomment = ($row['st_showcomment'])?'true':'false'; 
		$st_showalt = ($row['st_showalt'])?'true':'false'; 
		$st_textcolor = $row['st_textcolor']; 
		$st_textsize = $row['st_textsize']; 	
		$st_titlesize = $row['st_titlesize']; 	
		$st_fonttype = $row['st_fonttype']; 
		$st_bgcolor = $row['st_bgcolor']; 
		$st_scale = $row['st_scale']; 
		$st_wmode = $row['st_wmode']; 
		$st_commentpos = $row['st_commentpos']; 
		$st_shuffle = ($row['st_shuffle'])?'true':'false'; 
		$st_navbut = ($row['st_navbut'])?'true':'false'; 		
		$st_nav_bordercolor = $row['st_nav_bordercolor']; 
		$st_nav_bordersize = $row['st_nav_bordersize']; 
		$st_nav_radius = $row['st_nav_radius']; 
		$st_nav_bgcolor = $row['st_nav_bgcolor']; 
		$st_nav_bgactivecolor = $row['st_nav_bgactivecolor']; 
		$st_nav_textcolor = $row['st_nav_textcolor']; 
		$st_nav_showtext = ($row['st_nav_showtext'])?'true':'false'; 
		$st_nav_size = $row['st_nav_size']; 
		$st_nav_pos = $row['st_nav_pos']; 
		$st_nav_padding = $row['st_nav_padding']; 
		$st_target = $row['st_target']; 
		$st_link = $row['st_link']; 
				
		//we need some diferent result for the test animation.
		$stt_autoplay=($row['st_autoplay'])?'on':' ';	
		$stt_easeFunc=$row['st_easeFunc'].$row['st_ease'];
		$stt_showcontrols = ($row['st_showcontrols'])?'on':' '; 
		$stt_showtext = ($row['st_showtext'])?'on':''; 
		$stt_showcomment = ($row['st_showcomment'])?'on':''; 
		//$stt_showcontrolssub='1004';		
		$stt_textbgcolor=$row['st_textbgcolor'];
		$stt_showalt=($row['st_showcomment']=='1')?'on':'';
		if ($row['st_showalt']=='0'){
			$stt_textbgcolor='';
		}
		$stt_shuffle = ($row['st_shuffle'])?'on':' '; 
		$stt_navbut = ($row['st_navbut'])?'on':' '; 
		//recalculate nav textsize and button size from (st_nav_size) and (st_nav_showtext)
		//textsize is always 50% from nav_size
			if ($st_nav_showtext=='true'){
				$stt_nav_textsize = ceil($st_nav_size / 2);
				$stt_nav_vmargin_text= ceil(($st_nav_size - $stt_nav_textsize)/2);
				$stt_nav_hmargin_text= ceil(($st_nav_size - ceil($stt_nav_textsize / 2))/2);
			}else{
				$stt_nav_textsize = 0;
				$stt_nav_vmargin_text= ceil($st_nav_size/2);
				$stt_nav_hmargin_text= $stt_nav_vmargin_text;
			}

		//start content Tabdisplay optiosn
		$this->smarty->assign('StartTabH',  $this->StartTabHeaders());
		$this->smarty->assign('EndTabH',  $this->EndTabHeaders());
		$this->smarty->assign('StartTabC',  $this->StartTabContent());

		if ($this->CheckPermission('Use Showtime Prefs')){
			$this->smarty->assign('permission', 1);	
			$this->smarty->assign('Tabh_02', $this->SetTabHeader('prefs',$this->Lang('editshow_tabprefs'),('prefs' == $tab)));
			$this->smarty->assign('StartTab_pref', $this->StartTab('prefs', $params));
			$this->smarty->assign('Tabh_03', $this->SetTabHeader('link',$this->Lang('editshow_taburl'),('link' == $tab)));
			$this->smarty->assign('StartTab_link',  $this->StartTab('link', $params));	

		}else{
			$this->smarty->assign('permission', 0);		
			$this->smarty->assign('Tabh_02', "");
		}
		$this->smarty->assign('StartTab_gen',  $this->StartTab('general', $params));
		$this->smarty->assign('Tabh_01', $this->SetTabHeader('general',$this->Lang('editshow_tabname'),('general' == $tab)));
		$this->smarty->assign('FormStart',  $this->CreateFormStart($id, 'editshow', $returnid));
		$this->smarty->assign('FormEnd',$this->CreateFormEnd());	
		$this->smarty->assign('EndTab', $this->EndTab());
		$this->smarty->assign('EndTabC', $this->EndTabContent());

		
		// --------------------------------------------->tab change name	
		$this->smarty->assign('nametext', $this->Lang('name'));
		$this->smarty->assign('nameinput', $this->CreateInputText($id, 'showname', $show_name, 30, 255));
		$this->smarty->assign('shownumber', $this->Lang('changeshownumber'));
		$this->smarty->assign('shownumberinput', $this->CreateInputText($id, 'shownumber', $showid, 6, 255));
		
		$this->smarty->assign('tab', $this->CreateInputHidden($id, 'tab', $tab, ''));
		//add button for add images
		$this->smarty->assign('editslides', 
			$this->CreateLink($id, 'addslides', $returnid, 
			'<img src="../modules/Showtime/images/slides.png" class="systemicon" title="'.$this->Lang('edit_slides').'">', 
			array('showid'=>$showid), '' , false, true, ''). 
			'&nbsp;'.
			$this->CreateLink($id, 'addslides', $returnid, 
			$this->Lang('edit_slides'), 
			array('showid'=>$showid), '' , false, true, ''));

		$this->smarty->assign('addpicture',
			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".
			$this->CreateLink($id, 'addpicture', $returnid, 
					'<img src="../modules/Showtime/images/add_picture.png" class="systemicon">', 
					array('showid'=>$showid), '', false, false, '') .
			' '.
			$this->CreateLink($id, 'addpicture', $returnid, 
					$this->Lang('addpicture'), 
					array('showid'=>$showid), '', false, false, 'class="pageoptions"'));
			
		$this->smarty->assign('backimage', 
			"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;".
			$this->CreateLink($id, 'defaultadmin', $returnid, 
					'<img src="../modules/Showtime/images/edit_show.png" class="systemicon">', 
					array('showid'=>$showid), '', false, false, '') .
			' '.
			$this->CreateLink($id, 'defaultadmin', $returnid, 
					$this->Lang('back_to_admin'), 
					array('showid'=>$showid), '', false, false, 'class="pageoptions"').
			'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Slidehow '.$showid.' ('.$show_name . ')</strong>');

		
		$this->smarty->assign('root_url', $config['root_url']);
		$this->smarty->assign('donation',$this->Lang('donation'));
	
		
		if ($this->CheckPermission('Use Showtime Prefs')){
			// --------------------------------------------- URL settings
			$keyvalues=array();
			$keyvalues['_self']='_self';
			$keyvalues['_blank']='_blank';
			$keyvalues['_parent']='_parent';
			$keyvalues['_top']='_top';
			$this->smarty->assign('st_target',
				$this->CreateInputDropdown($id, 'st_target',$keyvalues,-1,$st_target, $addttext=''));
				
			$keyvalues=array();
			$keyvalues[$this->Lang('editshow_intpage')]='internal page';
			$keyvalues[$this->Lang('editshow_extpage')]='external page';
			$keyvalues[$this->Lang('editshow_image')]='image';
			$this->smarty->assign('st_link',
				$this->CreateInputDropdown($id, 'st_link',$keyvalues,-1,$st_link, $addttext=''));
				
			$this->smarty->assign('linkoptions',$this->Lang('editshow_linko'));
			$this->smarty->assign('linkloc',$this->Lang('editshow_linkloc'));
			$this->smarty->assign('internalpage',$this->Lang('editshow_intpage'));
			$this->smarty->assign('internalpage_info',$this->Lang('editshow_intpage_info'));
			$this->smarty->assign('externalpage',$this->Lang('editshow_extpage'));
			$this->smarty->assign('externalpage_info',$this->Lang('editshow_extpage_info'));
			$this->smarty->assign('imagepage',$this->Lang('editshow_image'));
			$this->smarty->assign('imagepage_info',$this->Lang('editshow_image_info'));
			
			$this->smarty->assign('linktarget',$this->Lang('editshow_linktarget'));
			$this->smarty->assign('self_info',$this->Lang('editshow_self_info'));
			$this->smarty->assign('blank_info',$this->Lang('editshow_blank_info'));
			$this->smarty->assign('parent_info',$this->Lang('editshow_parent_info'));
			$this->smarty->assign('top_info',$this->Lang('editshow_top_info'));
			
			$this->smarty->assign('example_info',$this->Lang('editshow_example'));
				
			// --------------------------------------------- prefs tab
			if ($st_animationtype=="swfobject"){
				include(dirname(__FILE__).'/function.admin_swftab.php');
			}else{
				include(dirname(__FILE__).'/function.admin_jQuerytab.php');
			}
		}else{
		    $hiddenfield= $this->CreateInputHidden($id, 'showid', $show_id, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_height', $st_height, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_width', $st_width, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_rotatetime', $st_rotatetime, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_transitiontime', $st_transitiontime, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_transition', $st_transition, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_easeFunc', $st_easeFunc, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_ease', $st_ease, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_autoplay', $st_autoplay, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_showcontrols', $st_showcontrols, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_showcontrolssub', $st_showcontrolssub, '');		
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_textbgcolor', $st_textbgcolor, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_showtext', $st_showtext, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_showalt', $st_showalt, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_showcomment', $st_showcomment, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_textcolor', $st_textcolor, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_textsize', $st_textsize, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_titlesize', $st_titlesize, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_fonttype', $st_fonttype, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_bgcolor', $st_bgcolor, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_scale', $st_scale, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_wmode', $st_wmode, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_commentpos', $st_commentpos, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_nav_bordercolor', $st_nav_bordercolor, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_nav_bordersize', $st_nav_bordersize, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_nav_radius', $st_nav_radius, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_nav_bgcolor', $st_nav_bgcolor, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_nav_bgactivecolor', $st_nav_bgactivecolor, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_nav_textcolor', $st_nav_textcolor, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_nav_showtext', $st_nav_showtext, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_nav_size', $st_nav_size, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_nav_pos', $st_nav_pos, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_nav_padding', $st_nav_padding, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_target', $st_target, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_link', $st_link, '');
		    $hiddenfield .= $this->CreateInputHidden($id, 'st_animationtype', $st_animationtype, '');
		}
			
		//Buttons
		$this->smarty->assign('submit',$this->CreateInputSubmit($id, 'submit', $this->lang('submit')));
		$this->smarty->assign('default',$this->CreateInputSubmit($id, 'default', $this->Lang('default')));
		$this->smarty->assign('cancel',$this->CreateInputSubmit($id, 'cancel', $this->lang('cancel')));
		$this->smarty->assign('apply',$this->CreateInputSubmit($id, 'apply', $this->lang('apply')));
		
		$hiddenfield .= $this->CreateInputHidden($id, 'showid', $show_id, '');
		$this->smarty->assign('hidden',$hiddenfield);
		
		if ($row['st_animationtype']=="swfobject"){
			echo $this->ProcessTemplate('editshow_swf.tpl');
		}else{
			echo $this->ProcessTemplate('editshow_jq.tpl');
		}
	}//end while
}else{ //ho showid found!
	$this->Redirect($id, 'defaultadmin', $returnid, $params);
}
?>

<?php
if (!isset($gCms)) exit;
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}

$showname = (isset($params['showname']) ? $params['showname'] : '');
$row=array();
//if submit button is pressed
if (isset($params['submit'])){
	if ($showname != ""){
		if (isset($params['merge_from'])){
			if ($params['merge_from']=='0'){ //take default settings
				$row['show_id']='';
				$row['show_name']= $showname;
				$row['st_animationtype']='swfobject';
				$row['st_height']=320;
				$row['st_width']=640;
				$row['st_rotatetime']=5;
				$row['st_transitiontime']=1;
				$row['st_transition']='Blur';
				$row['st_easeFunc']='Linear';
				$row['st_ease']='easeOut';
				$row['st_autoplay']=1;
				$row['st_showcontrols']=1;
				$row['st_showcontrolssub']='1004';
				$row['st_textbgcolor']='#000000';
				$row['st_showtext']=1;
				$row['st_showcomment']=1;
				$row['st_showalt']=1;
				$row['st_textcolor']='#eeeeee';
				$row['st_textsize']=12;
				$row['st_titlesize']=16;
				$row['st_fonttype']='sans';
				$row['st_bgcolor']='#000000';
				$row['st_scale']='exactfit';
				$row['st_shuffle']=0;		
				$row['st_wmode']='window';
				$row['st_commentpos']='top';
				$row['st_navbut']=1;
				$row['st_nav_bordercolor']='#CCCCCC';
				$row['st_nav_bordersize']=1;
				$row['st_nav_radius']=0;
				$row['st_nav_bgcolor']='#EEEEEE';
				$row['st_nav_bgactivecolor']='#FFFFFF';
				$row['st_nav_textcolor']='#333333';
				$row['st_nav_showtext']=1;
				$row['st_nav_size']=20;
				$row['st_nav_pos']='bottom_right';
				$row['st_nav_padding']=5;
				$row['st_target']='_self';
				$row['st_link']='internal page';
			}else{//read settings from database
				$query = 'SELECT * FROM '.cms_db_prefix().'module_showtime_name WHERE show_id = ?';
				$dbresult = $db->Execute($query, array($params['merge_from']));
				$row = $dbresult->FetchRow();
				$row['show_name']= $showname;
			}
		}
	
		$row['show_id'] = $db->GenID(cms_db_prefix()."module_showtime_name_seq");	
		
		$sql = "INSERT INTO ".cms_db_prefix()."module_showtime_name (
			show_id, show_name, st_animationtype ,st_height, st_width, st_rotatetime, st_transitiontime,	
			st_transition, st_easeFunc,	st_ease, st_autoplay, st_showcontrols,st_showcontrolssub,st_textbgcolor,	
			st_showtext, st_showcomment, st_showalt, st_textcolor, st_textsize, st_titlesize,	
			st_fonttype, st_bgcolor, st_scale, st_shuffle, st_wmode, st_commentpos, st_navbut,
			st_nav_bordercolor, st_nav_bordersize, st_nav_radius, st_nav_bgcolor, st_nav_bgactivecolor,
			st_nav_textcolor, st_nav_showtext, st_nav_size, st_nav_pos, st_nav_padding, st_target, st_link)			
			VALUES (?,?,?,?,?,?,?,?,?,?, ?,?,?,?,?,?,?,?,?,?, ?,?,?,?,?,?,?,?,?,?, ?,?,?,?,?,?,?, ?, ?)";
		$db->Execute($sql,array(
			$row['show_id'], $row['show_name'], $row['st_animationtype'], $row['st_height'], $row['st_width'], 
			$row['st_rotatetime'], $row['st_transitiontime'], $row['st_transition'], $row['st_easeFunc'], $row['st_ease'], 
			$row['st_autoplay'], $row['st_showcontrols'], $row['st_showcontrolssub'], $row['st_textbgcolor'],
			$row['st_showtext'], $row['st_showcomment'], $row['st_showalt'], $row['st_textcolor'], $row['st_textsize'], 
			$row['st_titlesize'], $row['st_fonttype'], $row['st_bgcolor'], $row['st_scale'], $row['st_shuffle'], 
			$row['st_wmode'], $row['st_commentpos'], $row['st_navbut'], $row['st_nav_bordercolor'], $row['st_nav_bordersize'], 
			$row['st_nav_radius'], $row['st_nav_bgcolor'], $row['st_nav_bgactivecolor'], $row['st_nav_textcolor'], 
			$row['st_nav_showtext'], $row['st_nav_size'], $row['st_nav_pos'], $row['st_nav_padding'],
			$row['st_target'], $row['st_link'] ));



		
		//write CSS file
		$cssstring = $this->CreateCSSstring($row, $config['root_url']);
		$cssfilename = "Show_".$row['show_id'];
		$handle = fopen('../modules/Showtime/templates/css/' . $cssfilename  . '.css','w');
		fwrite($handle,$cssstring);
		fclose($handle);

		
		
		
		 //Update search index
		 $module =& $this->GetModuleInstance('Search');
		 if ($module != FALSE){
		     $module->AddWords($this->GetName(), $row['show_id'], 'show', $showname);
		   }
		$params = array('showid' => $row['show_id'], 'module_message' => $this->lang('showadded'));
		$this->Redirect($id, 'addslides', $returnid, $params);
	}else{
		echo $this->ShowErrors($this->Lang('error_nonamegiven'));	
	}
}


//if cancel button is pressed
if (isset($params['cancel'])){
	$this->Redirect($id, 'defaultadmin', $returnid, $params);
}

//start content 
$this->smarty->assign('nametext', $this->Lang('name'));
$this->smarty->assign('nameinput', $this->CreateInputText($id, 'showname', $showname, 30, 255));
$this->smarty->assign('submit', $this->CreateInputSubmit($id, 'submit', $this->lang('submit')));
$this->smarty->assign('cancel', $this->CreateInputSubmit($id, 'cancel', $this->lang('cancel')));
$this->smarty->assign('FormStart',  $this->CreateFormStart($id, 'addshow', $returnid));
$this->smarty->assign('FormEnd',$this->CreateFormEnd());

// enable merge settings from previous show's
$query = 'SELECT show_id, show_name, st_animationtype FROM '.cms_db_prefix().'module_showtime_name';
$result=$db->Execute($query);
$aantal= $result->RecordCount();
if ($aantal<>"0"){
	$keyvalues=array();
	$keyvalues[$this->Lang('addshow_default')]='0';
	while(!$result->EOF()){
		$fields=$result->fields;
		$keyvalues[$fields['show_name'].' ('.$fields['st_animationtype'].')']=$fields['show_id'];
		$result->MoveNext();
	}
	$this->smarty->assign('merge_settings',$this->Lang('addshow_settings')."<br /><br />".
				$this->CreateInputDropdown($id, 'merge_from',$keyvalues,-1,'0'));	
}else{
	$this->smarty->assign('merge_settings',$this->CreateInputHidden($id, 'merge_from','0'));
}

echo $this->ProcessTemplate('addshow.tpl');
?>
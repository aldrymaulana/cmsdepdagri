<?php
if (!isset($gCms)) exit;
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}

$showid = (isset($params['showid']) ? $params['showid'] : '');

if ($showid == ''){
	$this->Redirect($id, 'defaultadmin', $returnid);
}
//get showoptions
$sql='SELECT show_name, st_link FROM '.cms_db_prefix().'module_showtime_name WHERE show_id='.$showid;
$result=$db->Execute($sql);
while ( $row=$result->FetchRow()){
	$showname = $row['show_name'];
	$st_link = $row['st_link'];
}


$counter=0;

if (isset($params['message'])){
	$smarty->assign('message',$params['message']);
}

if( isset($params['submitbutton']) ){
	if ( isset($params['filetitle']) ){
		foreach($params['filetitle'] as $key=>$filetitle){
			$counter++;
			$query = "UPDATE " . cms_db_prefix() . 
					"module_showtime SET picture_name=?, comment=?, picture_number=? WHERE picture_id = ?";
			$result = $db->Execute($query, array($filetitle, $params['filecomment'][$key], $counter, $key));
		}
	}
	$smarty->assign('message',$this->Lang('addslides_updatesuccess'));
}

if ( isset ($params['multiactionsubmit'])){
	if ( !empty($params['imgselect']) && is_array($params['imgselect']) ){
		$params['imgselect'] = empty($params['imgselect']) ? '' : implode(',',array_keys($params['imgselect']));
		switch( $params['multiaction'] ){
			case 'delete':
				$query = "DELETE FROM ".cms_db_prefix().
					"module_showtime WHERE picture_id IN (" .$params['imgselect'] . ")";
				$db->Execute($query);
				break;
		
			case 'active':
				$query = "UPDATE ".cms_db_prefix().
					"module_showtime SET active= 1	WHERE picture_id IN (" .$params['imgselect'] . ")";
				$db->Execute($query);
				break;
		
			case 'inactive':
				$query = "UPDATE ".cms_db_prefix().
					"module_showtime SET active= 0	WHERE picture_id IN (" .$params['imgselect'] . ")";
				$db->Execute($query);
				break;
		
			case 'link':
				if ($st_link == "internal page"){
					if(isset($params['cntID']) && $params['cntID']>0){
						$cntID =$params['cntID']; 
					}else{
						$cntID="";
					}
				}elseif ($st_link == "external page") {
					$cntID =$params['cntID'];
				}else{
					$cntID="";
				}
				$query = "UPDATE ".cms_db_prefix().
					"module_showtime SET picture_url='".$cntID."' WHERE picture_id IN (" .$params['imgselect'] . ")";
				$db->Execute($query);	
				break;
		}//end switch
		$smarty->assign('message',$this->Lang('addslides_bulksuccess'));
	}//end if $params['imgselect']
}// end is multiactionsubmit

$navigation=	$this->CreateLink($id, 'addpicture', $returnid, 
				'<img src="../modules/Showtime/images/add_picture.png" class="systemicon">', 
				array('showid'=>$showid), '', false, false, '') .
		' '.
		$this->CreateLink($id, 'addpicture', $returnid, 
				$this->Lang('addpicture'), 
				array('showid'=>$showid), '', false, false, 'class="pageoptions"');
				
$navigation .= "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
$navigation .= 	$this->CreateLink($id, 'editshow', $returnid, 
				'<img src="../modules/Showtime/images/showoptions.gif" class="systemicon">', 
				array('showid'=>$showid), '' , false, true, '').
		' '.
		$this->CreateLink($id, 'editshow', $returnid, 
				$this->Lang('EditShow'), 
				array('showid'=>$showid), '' , false, true, '');


$navigation .= "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
$navigation .=	$this->CreateLink($id, 'defaultadmin', $returnid, 
				'<img src="../modules/Showtime/images/edit_show.png" class="systemicon">', 
				array('showid'=>$showid), '', false, false, '') .
		' '.
		$this->CreateLink($id, 'defaultadmin', $returnid, 
				$this->Lang('back_to_admin'), 
				array('showid'=>$showid), '', false, false, 'class="pageoptions"');

$navigation .= '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Slidehow '.$showid .' ('.$showname . ')</strong>';
$this->smarty->assign('navigation',$navigation);


$counter=0;
$entryarray = array();

$sql='SELECT * FROM '.cms_db_prefix().'module_showtime WHERE show_id='.$showid.' order by picture_number;';
$result=$db->Execute($sql);
$picturenumber = $result->_numOfRows;
	
	if ($picturenumber > 0){
		$this->smarty->assign('picturetable',1);
		//print header if there are pictures
		$this->smarty->assign('L_picture',$this->Lang('picture'));
		$this->smarty->assign('L_order',$this->Lang('order'));
		$this->smarty->assign('L_picture_name',$this->Lang('picture_name'));
		$this->smarty->assign('L_picture_link',$this->Lang('picture_link'));
		$this->smarty->assign('L_picture_descriptioin',$this->Lang('picture_descriptioin'));
		$this->smarty->assign('L_change_picture',$this->Lang('change_picture'));
		$this->smarty->assign('L_status',$this->Lang('status'));
		$this->smarty->assign('L_edit_picture',$this->Lang('edit_picture'));
		
		

		while(!$result->EOF()){
			$fields=$result->fields;
			$result->MoveNext();
			$counter++;
			($counter % 2 == 0)? $rowclass="row1" : $rowclass="row2";
						
			$onerow = new stdClass();
			$onerow->fileid = $fields['picture_id'];
			$onerow->rowclass=$rowclass;
			$onerow->thumbnail='<img src="'.$config['image_uploads_url'].$fields['thumbnail_path'].'" alt="'.$fields['picture_name'].'" title="'.$fields['picture_name'].'" height="45" style="max-width: 80px;"/>';
		
			// create sort options
			if ($counter>1){
				$onerow->arrowup = $this->CreateLink($id, 'movepicture', $returnid,
					'<img src="../modules/Showtime/images/arrow-u.gif" alt="'.$this->Lang('addslides_moveup').'" title="'.$this->Lang('addslides_moveup').'">', 
					array('pictureid' => $fields['picture_id'], 'showid'=>$showid, 'direction'=>'up'));
		
			} else {
				$onerow->arrowup = '<img src="../modules/Showtime/images/arrow-none.gif">';
			}
			if ($counter < $picturenumber){
				$onerow->arrowdown =  $this->CreateLink($id, 'movepicture', $returnid,
					'<img src="../modules/Showtime/images/arrow-d.gif" alt="'.$this->Lang('addslides_movedown').'" title="'.$this->Lang('addslides_movedown').'">', 
					array('pictureid' => $fields['picture_id'], 'showid'=>$showid, 'direction'=>'down'));
			} else {
				$onerow->arrowdown = '<img src="../modules/Showtime/images/arrow-none.gif">';
			}
		
			//link changecomment
			$onerow->changecomment = $this->CreateLink($id, 'changecomment', $returnid, $fields['picture_name'], 
					array('active_tab'=>'images', 'pictureid'=>$fields['picture_id'],'showid'=>$showid), '' , false, true, '');

			//$onerow->filename_input = $fields['picture_name'];
			$onerow->title_input = $this->CreateInputText($id, 'filetitle[' . $fields['picture_id'] . ']', $fields['picture_name'], 40, 120);
			
			
			
			//Create picture_url depending on $st_link
			$link = "";
			switch ($st_link){
				case "internal page":
					//link to an internal page using Alias depending on your 'url_rewriting', 'page_extension' settings.
					$link = $this->CreatePictureLink($fields['picture_url']);
					break;
				case "external page":
					// Link to an external page like: 'http://www.google.be'
					$link=$fields['picture_url'];
					break;
				case "image":
					//link to the original image file
					$link = $config['image_uploads_url'].$fields['picture_path'];
					break;					
			}
			if (FALSE == empty($link)){
				$link='<a href="'.$link.'" title="external link" target="_new">'.
					'<img src="../modules/Showtime/images/link.png"></a>';
			}else{
				$link=$this->Lang('addslides_nolink');
			}
			$onerow->linkoption=$link;
			
			
		    
			$onerow->comment_input = $this->CreateTextArea(0, $id, $fields['comment'], 'filecomment[' . $fields['picture_id'] . ']', 'textfield" style="width:300px; height:4em;', '', '', '', '40', '3');
			
			
			
			//change picture link
			$onerow->changepic = $this->CreateLink($id, 'changepicture', $returnid, 
					'<img src="../modules/Showtime/images/replace2.png" alt="'.$this->Lang('addslides_changepic').'" title="'.$this->Lang('addslides_changepic').'">', array('pictureid' => $fields['picture_id'],'showid'=>$showid));
			
			//active option
			if ($fields['active']){
				$onerow->activeOption = $this->CreateLink($id, 'changestatus', $returnid,
					'<img src="../modules/Showtime/images/true.png" alt="'.$this->Lang('addslides_hide').'" title="'.$this->Lang('addslides_hide').'">', 
					array('pictureid' => $fields['picture_id'], 'showid'=>$showid,  'direction'=>'down'));
			}else{
				$onerow->activeOption = $this->CreateLink($id, 'changestatus', $returnid, 
					'<img src="../modules/Showtime/images/false.png" alt="'.$this->Lang('addslides_show').'" title="'.$this->Lang('addslides_show').'">', 
					array('pictureid' => $fields['picture_id'], 'showid'=>$showid,  'direction'=>'up'));
			}
		
			//link changecomment with icon
			$onerow->changecommentIcon = $this->CreateLink($id, 'changecomment', $returnid, 
				'<img src="../modules/Showtime/images/edit.png" alt="'.$this->Lang('addslides_changecomm').'" title="'.$this->Lang('addslides_changecomm').'">', array('active_tab'=>'images', 'pictureid'=>$fields['picture_id'],'showid'=>$showid), '' , false, true, '');
		
			//delete optiond
			$onerow->deleteOption = $this->CreateLink($id, 'deletepicture', $returnid, 
				'<img src="../modules/Showtime/images/delete.gif" alt="'.$this->Lang('addslides_delete').'" title="'.$this->Lang('addslides_delete').'">', 
				array('active_tab'=>'images', 'pictureid'=>$fields['picture_id'],'showid'=>$showid), 
				'Wanto delete this slide ('.$fields['picture_name'].') ?' , false, true, '');
			
			$onerow->imgselect = $this->CreateInputCheckbox($id, 'imgselect[' . $fields['picture_id'] . ']', 1);
		
			$entryarray[] = $onerow;
		}//end while
	}//end if picturenumber > 0
$smarty->assign_by_ref('items', $entryarray);

$smarty->assign('addsomepic',"(".$this->Lang('addslides_addsome').")");
//first unset submitbuttons from $params
unset($params['submitbutton']);
unset($params['multiactionsubmit']);
$smarty->assign('formstart', $this->CreateFormStart ($id, 'addslides',$returnid,'post','', false, '', $params));
$smarty->assign('hidden', $this->CreateInputHidden($id, 'sort', ''));
$smarty->assign('itemcount', $counter);

$keyvalues=array();		
$keyvalues[$this->Lang('addslides_delete')]='delete';
$keyvalues[$this->Lang('addslides_active')]='active';
$keyvalues[$this->Lang('addslides_inactive')]='inactive';
$keyvalues[$this->Lang('addslides_alink')]='link';
$smarty->assign('multiaction',$this->CreateInputDropdown($id, 'multiaction',$keyvalues,-1, '', 'id="multiaction"'));
$smarty->assign('multiactionsubmit', $this->CreateInputSubmit($id, 'multiactionsubmit', $this->Lang('apply'), '', '', $this->Lang('addslides_bulkconf')));
$smarty->assign('with_selected',$this->Lang('addslides_bulkwith'));
$smarty->assign('save_changes',$this->Lang('addslides_save'));


switch ($st_link){
	
	case 'internal page':
		$contentops =& $gCms->GetContentOperations();		
		$smarty->assign('linkdropdown',$contentops->CreateHierarchyDropdown('','',$id.'cntID'));
		break;
	case 'external page':
		$smarty->assign('linkdropdown',$this->CreateInputText($id,'cntID','http://',50,255));
		break;
	case 'image':
		$smarty->assign('linkdropdown','');
		break;
}
$smarty->assign('submit', $this->CreateInputSubmit($id, 'submitbutton', $this->Lang('submit')));
$smarty->assign('formend', $this->CreateFormEnd());

echo $this->ProcessTemplate('addslides.tpl');


$result->Close();
?>
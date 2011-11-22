<?php
if (!isset($gCms)) exit;
if (! $this->CheckPermission('Use Showtime')) {
  return $this->DisplayErrorPage($id, $params, $returnid,$this->Lang('accessdenied'));
}
$pictureid = (isset($params['pictureid']) ? $params['pictureid'] : '');
$showid = (isset($params['showid']) ? $params['showid'] : '');

//get showoptions
$sql='SELECT show_name, st_link FROM '.cms_db_prefix().'module_showtime_name WHERE show_id='.$showid;
$result=$db->Execute($sql);
while ( $row=$result->FetchRow()){
	$st_link = $row['st_link'];
}


if ($pictureid == '')
	$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));


if (isset($params['cancel']))
	$this->Redirect($id, 'addslides', $returnid,array('showid'=>$showid));


if (isset($params['submit'])){
	// Clear the site cache
	global $gCms;
	$contentops =& $gCms->GetContentOperations();
	$contentops->ClearCache();
	
	//addding url !
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

	if ($pictureid!=''){
		$query = 'UPDATE '.cms_db_prefix().'module_showtime SET picture_url=?, comment=?, picture_name=? WHERE picture_id = ?';
		$db->Execute($query, array($cntID, $params['comment'], $params['title'],$pictureid));
		//Update search index
		$params = array('showid' => $showid, 'message' => $this->Lang('changecomm_message'), 'active_tab' => 'general');
		$this->Redirect($id, 'addslides', $returnid, $params);
	}
}

if ($pictureid != ''){
	$query = 'SELECT * FROM '.cms_db_prefix().'module_showtime WHERE picture_id = ?';
	$dbresult = $db->Execute($query, array($pictureid));
	
	while (($row = $dbresult->FetchRow())){
		$picturenumber = $row['picture_number'];
		$picture_name = $row['picture_name'];
		$picture_url = $row['picture_url'];
		$thumbnail_path = $row['thumbnail_path'];
		$comment = $row['comment'];

 		$this->smarty->assign('showtitle', 1);
		

		switch ($st_link){
			case "internal page":
				//link to an internal page using Alias depending on your 'url_rewriting' settings.
				$contentops =& $gCms->GetContentOperations();
				$this->smarty->assign('contentdropdown',$contentops->CreateHierarchyDropdown('',$picture_url,$id.'cntID'));
				break;
			case "external page":
				// Link to an external page like: 'http://www.google.be'
				$smarty->assign('contentdropdown',$this->CreateInputText($id,'cntID',$picture_url,50,255));
				break;
			case "image":
				//link to the original image file
				$smarty->assign('contentdropdown','('.$this->Lang('changecomm_linkimage').')');
				break;					
		}

		
		//start form
		$this->smarty->assign('FormStart',$this->CreateFormStart($id, $params['action'], $returnid));
		
		$this->smarty->assign('dropdown_title', $this->Lang('internal_link'));
		$this->smarty->assign('thumbnail', '<img alt="" src="'.$config['image_uploads_url'].$thumbnail_path. '" />');
		$this->smarty->assign('texttitle', $this->Lang('picture_name'));
		$this->smarty->assign('inputtitle', $this->CreateInputText($id, 'title', $picture_name, 50, 255));
	    $this->smarty->assign('textcomment', $this->Lang('picture_descriptioin'));
		$this->smarty->assign('inputcomment',$this->CreateTextArea(false, $id, $comment, 'comment', '', '', '', '', '80', '5'));
		$this->smarty->assign('hidden', $this->CreateInputHidden($id, 'showid',$showid). 
										$this->CreateInputHidden($id, 'pictureid',$pictureid));		
		$this->smarty->assign('submit', $this->CreateInputSubmit($id, 'submit',$this->Lang('submit')));
		$this->smarty->assign('cancel', $this->CreateInputSubmit($id, 'cancel',$this->Lang('cancel')));		
		$this->smarty->assign('FormEnd', $this->CreateFormEnd());
		
		echo $this->ProcessTemplate('changecomment.tpl');
	}
}
?>

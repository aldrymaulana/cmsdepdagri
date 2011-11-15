<?php

class commentList {
	var $comments;
	var $commentsCount;
	var $commentsCountActive; // only active comments
	
	function commentList($page_id = -1, $module_name = '', $sortOrder = 'ASC',$startPage = 1, $numrows = 25) {
		global $gCms;
    	$this->db =& $gCms->GetDb();
    	
    	$this->comments = array();
    	$this->commentsCount = 0;
    	$this->commentsCountActive = 0;
		
		$offset = ($startPage-1) * $numrows;
		
		if($page_id > 0) { // FrontEnd display
    		$sql = 'SELECT * FROM ' . cms_db_prefix() . 'module_feusers_comments WHERE page_id = ? AND module_name = ? AND active = 1 ORDER BY comment_date ' . $sortOrder;
    		$coms = $this->db->SelectLimit($sql,$numrows,$offset,array($page_id,$module_name));
		}
		else { // Admin display (display All limit $numrows per page)
			$sql = 'SELECT * FROM ' . cms_db_prefix() . 'module_feusers_comments ORDER BY comment_date DESC';
			$coms = $this->db->SelectLimit($sql,$numrows,$offset);
		}
    	while($comment = $coms->FetchRow()) {
    		$this->comments[$this->commentsCount] = new comment($this->db,$comment,'%d/%m/%y - %H:%M');
    		if($this->comments[$this->commentsCount]->active == 1)
    			$this->commentsCountActive += 1;
    		$this->commentsCount += 1;
    	}
	}
}

class comment {
	
	var $db;
	
	var $comment_id;
	var $comment_data;
	var $comment_date;
	var $comment_author_id; # FEuser ID
	var $comment_author_name; # If FEuser is dropped we keep the username here
	var $page_id;
	var $module_name;
	var $active;
	var $modified_date;
	
	var $feuser;
	var $feuser_properties;
	
    function comment($db, $comm = false, $dateFormat = "Le %A %d %B %G &agrave; %H:%M") {
    	$this->db = $db;
    	if($comm !== false) {
	    	$this->comment_id = $comm['comment_id'];
	    	$this->comment_data = nl2br($comm['comment_data']);
			//setlocale(LC_TIME,get_site_preference('frontendlang','fr_FR'));
	    	//$this->comment_date = strftime($dateFormat, $this->db->UnixTimeStamp($comm['comment_date']));
	    	$this->comment_date = $this->db->UnixTimeStamp($comm['comment_date']);
	    	$this->comment_author_id = $comm['comment_author_id'];
	    	$this->comment_author_name = $comm['comment_author_name'];
	    	$this->page_id = $comm['page_id'];
	    	$this->module_name = $comm['module_name'];
	    	$this->active = $comm['active'];
	    	$this->modified_date = $comm['modified_date'];
	    	
	    	// Get user's infos
	    	if($this->comment_author_id) {
	    		$this->getUserInfos();
	    	}
    	}
    }
    
    function setComment($author_id, $page_id, $module_name, $comment_data, $active) {
    	$this->comment_author_id = $author_id;
    	$this->comment_author_name = $this->getUserName();
    	$this->page_id = $page_id;
    	$this->module_name = $module_name;
    	$this->comment_data = $comment_data;
    	$this->active = $active;
    	$this->comment_date = date('Y-m-d G:i:s');
    }
    
    function getComment() {
    	$sql = 'SELECT * FROM ' . cms_db_prefix() . 'module_feusers_comments WHERE comment_id = ?';
    	$comm = $this->db->GetRow($sql,array($this->comment_id));
    	$this->comment_id = $comm['comment_id'];
    	$this->comment_data = html_entity_decode($comm['comment_data']);
		//setlocale(LC_TIME,get_site_preference('frontendlang','fr_FR'));
    	//$this->comment_date = strftime("Le %A %d %B %G &agrave; %H:%M", $this->db->UnixTimeStamp($comm['comment_date']));
    	$this->comment_date = $this->db->UnixTimeStamp($comm['comment_date']);
    	$this->comment_author_id = $comm['comment_author_id'];
    	$this->comment_author_name = $comm['comment_author_name'];
    	$this->page_id = $comm['page_id'];
    	$this->module_name = $comm['module_name'];
    	$this->active = $comm['active'];
    	$this->modified_date = $comm['modified_date'];
    }
    
    function save() { // TODO: error checking
    	$this->comment_id = $this->db->GenID(cms_db_prefix() . 'module_feusers_comments_seq');
    	$sql = 'INSERT INTO ' . cms_db_prefix() . 'module_feusers_comments VALUES(?,?,?,?,?,?,?,?,?)';
    	$this->db->Execute($sql,array($this->comment_id,
    									$this->comment_data,
    									$this->comment_date,
    									$this->comment_author_id,
    									$this->comment_author_name,
    									$this->page_id,
    									$this->module_name,
    									$this->active,
    									NULL));
    }
    
    function update($val) {
    	$sql = 'UPDATE ' .cms_db_prefix() . 'module_feusers_comments SET comment_data = ?, active = ? WHERE comment_id = ?';
    	$this->db->Execute($sql, array($val['comment_data'],$val['active'], $val['comment_id']));
    }
    
    function delete() {
    	$sql = 'DELETE FROM ' . cms_db_prefix() . 'module_feusers_comments WHERE comment_id = ? LIMIT 1';
    	$this->db->Execute($sql,array($this->comment_id));
    	// TODO error checking :)
    	return true; 
    }
    
    function activate($val) {
    	$sql = 'UPDATE ' .cms_db_prefix() . 'module_feusers_comments SET active = ? WHERE comment_id = ?';
    	$this->db->Execute($sql, array($val, $this->comment_id));
    }
    
    function getUserName() {
    	$feu = CmsModule::GetModuleInstance('FrontEndUsers');
    	if(!$feu) { 		// Check if feuser module is installed
    		return false;	// TODO: display error message
    	}
    	else {
    		return $feu->GetUserName($this->comment_author_id);
    	}
    }
    
    function getUserInfos() {
		$feu = CmsModule::GetModuleInstance('FrontEndUsers');
    	if(!$feu) { 		// Check if feuser module is installed
    		return false;	// TODO: display error message
    	}
    	else {
    		$this->feuser = $feu->GetUserInfo($this->comment_author_id);
    		if($this->feuser[0] == true) { //User exists
    			$properties = $feu->GetUserProperties($this->comment_author_id);
    			$this->feuser_properties = array();
    			foreach($properties as $prop) {
    				$propName = $prop['title'];
    				$propVal = $prop['data'];
    				$this->feuser_properties[$propName] = $propVal;
    			}
    		}
    		else // User not in database (maybe dropped)
    			$this->feuser_properties = false;
    	}
    }
}
?>
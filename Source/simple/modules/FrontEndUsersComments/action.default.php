<?php
if (!isset($gCms)) exit;

require_once('lib/comment.class.php');

if(!isset($params['pageid']) || ($params['pageid'] == '')) {
	echo $this->Lang('pageid_undefined');
}
elseif(!isset($params['modulename']) || ($params['modulename'] == '')) {
	echo $this->Lang('modulename_undefined');
}
else {
###### ERRORS
	if(isset($_GET['error']) && ($_GET['error'] == 1)) { // Comment's textarea is empty
		$this->smarty->assign('errorMsg', $this->Lang('noContent'));
		$this->smarty->assign('message', false);
	}
	elseif(isset($_GET['error']) && ($_GET['error'] == 0)) {
		$this->smarty->assign('errorMsg', false);
		$this->smarty->assign('message', $this->Lang('commentSubmited'));
	}
	
	if(isset($params['authorid']) && ($params['authorid'] != '')) {
	###### Generate Form
		$startForm = $this->CreateFormStart($id, 'frontend_saveComment', $returnid, 'post', '', false);
		// hidden fields
		$tmp = explode('?',$this->selfURL()); // To avoid get params
		$requestURL = $tmp[0];
		
		$returnTo = $this->CreateInputHidden($id,'returnTo',$requestURL); // To know where to go back after comment validation
		$authorId = $this->CreateInputHidden($id,'authorid',$params['authorid']);
		$pageId = $this->CreateInputHidden($id,'pageid',$params['pageid']);
		$modulename = $this->CreateInputHidden($id,'modulename',$params['modulename']);
		
		$hiddens = $returnTo . $authorId . $pageId . $modulename;
		
		$inputComment = $this->CreateTextArea(false,$id,'','comment_data');
		
		$submit = $this->CreateInputSubmit($id, 'submit', $this->Lang('submit'));
		$endform = $this->CreateFormEnd();
		
		//Form data
		$this->smarty->assign('startForm', $startForm);
		$this->smarty->assign('hiddens', $hiddens);
		$this->smarty->assign('addComment', $this->Lang('addComment'));
		$this->smarty->assign('inputComment', $inputComment);
		$this->smarty->assign('submit', $submit);
		$this->smarty->assign('endForm', $endform);
	}
	else {
		$this->smarty->assign('need2beLoggedIn', $this->Lang('need2beLoggedIn'));
	}
// Get comments
// TODO: Ajax!!!
	$sortOrder = 'ASC';
	if(isset($params['sortorder']))
		$sortOrder = $params['sortorder'];
	$number = 10;
	if(isset($params['number']))
		$number = $params['number'];
	$p = 1;
	if(isset($_GET['p']))
		$p = $_GET['p'];
		
	$cl = new commentList($params['pageid'],$params['modulename'],$sortOrder,$p,$number);
	$this->smarty->assign_by_ref('comments_list', $cl->comments);
	
	$this->smarty->assign('noComment', $this->Lang('noCommentFront'));
// Pagination
// TODO: database template
	$moderate = $this->GetPreference('moderate',0);
	$active = !$moderate;
	$nbComms = $this->nbComments($params['pageid'],$params['modulename'],$active);
	
	//echo 'nbComms: ' . $nbComms . ' - p: ' . $p . ' - nbPages: ' . ceil($nbComms / $number);
	
	$paginator = '';
	if($nbComms > $number) {
		$nbPages = ceil($nbComms / $number);
		$paginator = '<div>';
		if($p > 1) {
			$paginator .= '<a href="' . $requestURL . '?p=1">&lt;&lt;</a>&nbsp;';
			$paginator .= '<a href="' . $requestURL . '?p=' . ($p-1) . '">&lt;</a>&nbsp;';
		}
		$paginator .= $this->Lang('currentPage',$p,$nbPages);
		if($p < $nbPages) {
			$paginator .= '&nbsp;<a href="' . $requestURL . '?p=' . ($p+1) . '">&gt;</a>&nbsp;';
			$paginator .= '<a href="' . $requestURL . '?p=' . $nbPages . '">&gt;&gt;</a>';
		}
		$paginator .= '</div>';
	}
	$this->smarty->assign_by_ref('paginator', $paginator);

// Display Template
	echo $this->ProcessTemplateFromDatabase('FEUcomments');
}
?>

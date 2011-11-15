<?php
## action.Browsefiles.php
## By: Pierre-Luc Germain
## PARAMS:
## $params['extensions'] : array of shown file extensions
## $params['startdir'] : the folder to start at ( uploads/ [startdir] / )
## $params['tablename'] : the name of the db table
## $params['attachid'] : the id of the item to which the image will be assigned (value is not used, but returned at the end)
## $params['field'] : only a pass-through to the assign action

if (!isset($params['field']) || !isset($params['attachid']) || !isset($params['field']) || !isset($params['tablename']) ) exit;

$hidethumbs = true; // will hide Image Manager thumbnails, but also hide all files that start with "thumb_"...

## defining the allowed extensions:
$allowedext = array('swf','flv','jpeg','jpg','png','gif','doc','docx','xls','xlsx','rtf','txt','pdf');

if(isset($params['extensions']))	$allowedext = $params['extensions'];


function makeDirObj($filename,$dir,$module,$params,$curdir,$parentdir,$id,$returnid){
	global $gCms;
	$theadmintheme = $gCms->variables["admintheme"];
	$parent = ($filename == '..');
	$obj = new StdClass();
	$obj->folder = true;
	$empty = array("ext","size","imagesize","deletelink","modified","owner","permissions");
	foreach($empty as $field)	$obj->$field = '';
	$obj->filename = $filename;
	$obj->pic = $theadmintheme->DisplayImage("icons/filetypes/".($parent?"up":"")."folder.gif");
	if($parent){
		$newparams = array_merge($params, array('curdir' => $parentdir));
		$obj->thelink = $module->CreateLink($id, 'browsefiles', $returnid, '..', $newparams);
	}else{
		$newparams = array_merge($params, array('curdir' => $curdir.'/'.$filename, 'parentdir' => $curdir));
		$obj->thelink = '<a style="display:none;">.'.$filename.'</a>'.$module->CreateLink($id, 'browsefiles', $returnid, $filename, $newparams);
	}
	return $obj;
}

function makeFileObj($filename,$dir,$module,$params,$curdir,$id,$returnid){
	global $gCms;
	$theadmintheme = $gCms->variables["admintheme"];
	$info = $module->plGetFileInfo($dir.DIRECTORY_SEPARATOR.$filename);
	$extension = $info['ext'];
	$obj = new StdClass();
	$obj->folder = false;
	$obj->filename = $filename;
	$obj->ext = $extension;
	$obj->size = '<a style="display:none;">'.$info["size"].'</a>'.$info["size_wformat"];
	$obj->pic = $theadmintheme->DisplayImage($info["fileicon"]);
	$obj->imagesize = '';
	if($info["imagesize"]){
		$obj->imagesize = '<a style="display:none;">'.$info["width"].'</a>'.$info["imagesize"];
	}
	$obj->deletelink = $module->CreateLink($id, $action, $returnid, $theadmintheme->DisplayImage("icons/system/delete.gif"),array_merge($params, array('deletefile'=>$filename)));
	$newparams = array_merge($params, array('filename'=>$filename, 'filepath' => $curdir.'/'.$filename));
	$obj->thelink = $module->CreateLink($id, 'assignfile', $returnid, $filename, $newparams);
	$obj->modified = '<a style="display:none;">'.$info["filemtime"].'</a>'.$info["modified"];
	$obj->owner = $info["owner"];
	$obj->permissions = $info["permissions"];
	return $obj;
}






###################################################
# RETRIEVING CURRENT PATH...
#

$startdir = isset($params['startdir'])?$params['startdir']:'';
if($startdir != '' && substr($startdir,0,1) != '/' && substr($startdir,0,1) != '\\') $startdir = DIRECTORY_SEPARATOR.$startdir;
if(!file_exists($gCms->config['uploads_path'].$startdir)) @mkdir($gCms->config['uploads_path'].$startdir);

$parentdir = (isset($params['parentdir']) ? $params['parentdir'] : '');
$curdir = (isset($params['curdir']) ? $params['curdir'] : '');
$dir = $gCms->config['uploads_path'].$startdir.$curdir;
if(!is_dir($dir)){
	$dir = $gCms->config["uploads_path"];
	$curdir = '';
	$parentdir = '';
}
$baseurl = $gCms->config['uploads_url'].$startdir.$curdir;

if (isset($params['deletefile'])){
	// We're deleting a file
	if(file_exists($dir.'/'.$params['deletefile']) && unlink($dir.'/'.$params['deletefile'])){
		echo $this->ShowMessage($this->Lang("message_deleted"));
	}
}


###################################################
# RETRIEVING FILES & FOLDERS
#

$dh  = opendir($dir);
$folders = array();
$files = array();
$upfolder = false;
while ($filename = readdir($dh)){
	if(is_dir($dir.DIRECTORY_SEPARATOR.$filename) && $filename!='.'){
			if ($filename=='..') {
				if ($curdir != '')		$upfolder = true;
			}else{
				$folders[] = $filename;
			}
	}else{
		$extension = strtolower(substr(strrchr($filename, "."), 1));
		if((!$allowedext || in_array($extension, $allowedext)) && substr($filename,0,1) != '.' && (!$hidethumbs || substr($filename,0,6) != 'thumb_')){
			$files[] = $filename;
		}
	}
}
if (isset($dh))	closedir($dh);
sort($folders);
sort($files);


###################################################
# DISPLAYING...
#

	echo '<div id="uploadfile_submitmessage" class="pagemcontainer" style="display: none;">'.$this->Lang("submitting_file").'</div>';

	$hidden = $this->CreateInputHidden($id,'curdir',$curdir).$this->CreateInputHidden($id,'field',$params['field']).$this->CreateInputHidden($id,'tablename',$params['tablename']).$this->CreateInputHidden($id,'attachid',$params['attachid']);
	if(isset($params['extensions'])) $hidden .= $this->CreateInputHidden($id,'extensions',$params['extensions']);
	if(isset($params['startdir'])) $hidden .= $this->CreateInputHidden($id,'startdir',$params['startdir']);

	$this->smarty->assign("browsetitle",$this->Lang('browsefilestitle'));
	$this->smarty->assign("uploadtitle",lang('uploadfile'));
	$this->smarty->assign("showingdir",$this->Lang('showingdir').' : '.$dir);
	$this->smarty->assign("formstart",$this->CreateFormStart($id, 'uploadFile', $returnid, 'post', 'multipart/form-data'));
	$this->smarty->assign("formend",$hidden.$this->CreateFormEnd());
	$this->smarty->assign("fileinput",$this->CreateFileUploadInput($id,'uploadfile'));
	$this->smarty->assign("submit",$this->CreateInputSubmit($id,'submit',lang('send')));
	$this->smarty->assign("instantsearch", $this->Lang("searchthistable")." ".$this->CreateInputText($id, "searchfiletable", "", 10, 64, ' onkeyup="ctlmm_search(this.value,\'filelist_table\');"'));
	
	$sortlinks = array();
	$numeric_sortlinks = array();
	$i = 0;
	while($i < 10){
		$sortlinks[$i] = '<div style="float:left;"><a style="cursor: pointer;" onclick="ctlmm_sortRows(\'filelist_table\','.$i.');"><img src="themes/default/images/icons/system/sort_up.gif" alt="^"/></a><br/><a style="cursor: pointer;" onclick="ctlmm_sortRows(\'filelist_table\','.$i.',true);"><img src="themes/default/images/icons/system/sort_down.gif" alt="v"/></a></div> &nbsp;';
		$numeric_sortlinks[$i] = '<div style="float:left;"><a style="cursor: pointer;" onclick="ctlmm_sortRows(\'filelist_table\','.$i.',false,true);"><img src="themes/default/images/icons/system/sort_up.gif" alt="^"/></a><br/><a style="cursor: pointer;" onclick="ctlmm_sortRows(\'filelist_table\','.$i.',true,true);"><img src="themes/default/images/icons/system/sort_down.gif" alt="v"/></a></div> &nbsp;';
		$i++;
	}
	$this->smarty->assign("sortlinks",$sortlinks);
	$this->smarty->assign("numeric_sortlinks",$numeric_sortlinks);
	
	$obj = new StdClass();
	$obj->folder = "";
	$obj->filename = $this->Lang("filename");
	$obj->ext = $this->Lang("fileext");
	$obj->size = $this->Lang("filesize");
	$obj->pic = "";
	$obj->imagesize = $this->Lang("imagesize");
	$obj->deletelink = $this->Lang("delete");
	$obj->modified = $this->Lang("lastmod");
	$obj->owner = $this->Lang("fileowner");
	$obj->permissions = $this->Lang("fileperms");
	$this->smarty->assign("headers",$obj);
	
	$itemlist = array();
	if($upfolder)	$itemlist[] = makeDirObj("..",$dir,$this,$params,$curdir,$parentdir,$id,$returnid);
	foreach($folders as $folder)	$itemlist[] = makeDirObj($folder,$dir,$this,$params,$curdir,$parentdir,$id,$returnid);
	foreach($files as $filename)	$itemlist[] = makeFileObj($filename,$dir,$this,$params,$curdir,$id,$returnid);
	$this->smarty->assign("itemlist",$itemlist);
	
	echo '
	<script type="text/javascript">
';
	echo $this->getFileContent("instantsearch.js");
	echo $this->getFileContent("instantsort.js");
	echo '
	</script>
';

	echo $this->ProcessTemplate("browsefiles.tpl");

echo '<script type="text/javascript">
var ouruploadform = document.getElementById("'.$id.'moduleform_1");
if(ouruploadform)	ouruploadform.onsubmit = function() {
	document.getElementById("uploadfile_submitmessage").style.display = "block";
}
</script>';
?>

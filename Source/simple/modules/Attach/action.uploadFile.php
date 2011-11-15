<?php
	if(!isset($gCms)) exit;

	$errors = '';
	$curdir = (isset($params['curdir']) ? $params['curdir'].'/' : '');
	$dir = str_replace('//','/',$gCms->config["uploads_path"] . '/attachments/' . $curdir);
	echo $dir;
	$fieldname = $id.'uploadfile';

	if (isset($_FILES) && isset($_FILES[$fieldname]) && isset($_FILES[$fieldname]['name']) && $_FILES[$fieldname]['name'] != "")
	{
		$tmpfilename = str_replace(' ','_',$_FILES[$fieldname]['name']);
		$extension = substr(strrchr($tmpfilename, "."), 1);
		$cleanfilename = str_replace('.'.$extension, '', $tmpfilename);

		$destdir = $dir.$tmpfilename;
		$i = 1;
		while(file_exists($destdir)){
			$tmpfilename = $cleanfilename.'_'.$i.'.'.$extension;
			$destdir = $dir.$tmpfilename;
			$i++;
		}
		if (!cms_move_uploaded_file($_FILES[$fieldname]['tmp_name'], $destdir))		{
			$errors .= "<li>".lang('filenotuploaded')."</li>";
		}else{
			//chmod('../uploads/'.$startdir.$curdir.$tmpfilename, 0755);
			//audit(-1, $tmpfilename, 'Uploaded File');
		}
	}
	if ($errors != ''){
		echo '<div class="pageerrorcontainer"><ul>'.$errors.'</ul></div>';
	}else{
		$params['filepath'] = $curdir.$tmpfilename;
	}

	// natural redirect to assign function
?>

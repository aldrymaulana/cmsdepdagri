<?php
#-------------------------------------------------------------------------
# Module: Uploads = allow users to upload stuff, a pseudo file manager module
#
#-------------------------------------------------------------------------
# CMS - CMS Made Simple is (c) 2005 by Ted Kulp (wishy@cmsmadesimple.org)
# This project's homepage is: http://www.cmsmadesimple.org
#
#-------------------------------------------------------------------------
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
# Or read it online: http:	//www.gnu.org/licenses/licenses.html#GPL
#
#-------------------------------------------------------------------------

if (!$this->CheckPermission ('Manage Uploads') && !$this->CheckPermission('Upload Files to Uploads'))
  {
    return;
  }

$db = cmsms()->GetDb();

$curpage = 1;
if( isset($params['filespage']) )
  {
    $curpage = (int)$params['filespage'];
  }

// get the current category for the filter
if (isset ($params['submitfilter']))
  {
    set_preference(get_userid(FALSE),'uploads_category',
			 (isset ($params['input_category']) ? $params['input_category'] :
			  ''));
    set_preference(get_userid(FALSE),'uploads_pagelimit',(int)$params['input_pagelimit']);
  }
$curcategory = get_preference(get_userid(FALSE),'uploads_category','');
$pagelimit = get_preference(get_userid(FALSE),'uploads_pagelimit',50);
$offset = -1;
        
// get the categories for the filter
$categorylist = array ();
$query =
  "SELECT * FROM ".cms_db_prefix ().
  "module_uploads_categories ORDER BY upload_category_name ASC";
$dbresult = $db->Execute ($query);
if (!$dbresult)
  {
    $smarty->assign ('error', 1);
    $smarty->assign ('message', $this->Lang ('error_nocategories'));
  }
 else
   {
     while ($row = $dbresult->FetchRow ())
       {
	 if( $curcategory == '' ) {
	   $curcategory = $row['upload_category_id'];
	 }
	 $categorylist[$row['upload_category_name']] =
	   $row['upload_category_id'];
       }
   }
	  
// if there are no categories, put a message out, and
// nothing else
if( !count( $categorylist ) ) 
  {
    $smarty->assign('error',1);
    $smarty->assign('noform',1);
    $smarty->assign('message',$this->Lang('error_nocategories'));
    echo $this->ProcessTemplate('uploadlist.tpl');
    return;
  }

$smarty->assign('error',"");
$smarty->assign('noform',"");
$smarty->assign('message',"");

// setup the form part of the template
$smarty->assign ('legend_uploadform',$this->Lang('legend_uploadform'));
$smarty->assign ('startform',
		       $this->CreateFormStart ($id, 'defaultadmin', $returnid, 'post', 'multipart/form-data'));
$smarty->assign ('category', $this->Lang ('category'));
$smarty->assign ('input_category',
		       $this->CreateInputDropDown ($id, "input_category", $categorylist, -1,
						   $curcategory));
$smarty->assign ('input_select',
		       $this->CreateInputSubmit ($id, 'submitfilter',
						 $this->Lang('selectcategory')));
$smarty->assign ('input_hidden',
		       $this->CreateInputHidden ($id, 'curcategory',
						 $curcategory));

$opts = array();
$opts[5] = 5;
$opts[25] = 25;
$opts[50] = 50;
$opts[100] = 100;
$opts[250] = 250;
$opts[500] = 500;
$opts[1000] = 1000;
$smarty->assign('pagelimits',$opts);

$smarty->assign ('endform', $this->CreateFormEnd ());
$nrows = '';	 
$dbresult = '';
$rowarray = array ();
if ($curcategory == '')
  {
    $cquery = 'SELECT count(upload_id) FROM '.cms_db_prefix().'module_uploads';
    $nrows = $db->GetOne($cquery);

    $npages = (int)($nrows / $pagelimit);
    if( $nrows % $pagelimit != 0 ) $npages++;
    $curpage = max(1,$curpage);
    $curpage = min($curpage,$npages);
    $offset = ($curpage - 1)*$pagelimit;

    $query = "SELECT u.*,count(d.download_id) AS downloads FROM ".cms_db_prefix ()."module_uploads u 
               LEFT OUTER JOIN ".cms_db_prefix()."module_uploads_downloads d
               ON u.upload_id = d.file_id
               GROUP BY u.upload_id
               ORDER BY upload_date DESC";
    $dbresult = $db->SelectLimit($query,$pagelimit,$offset);
  }
 else
   {
     $cquery = 'SELECT count(upload_id) FROM '.cms_db_prefix().'module_uploads WHERE upload_category_id = ?';
     $nrows = $db->GetOne($cquery,array($curcategory));

     $npages = (int)($nrows / $pagelimit);
     if( $nrows % $pagelimit != 0 ) $npages++;
     $curpage = max(1,$curpage);
     $curpage = min($curpage,$npages);
     $offset = ($curpage - 1)*$pagelimit;

     $query =
       "SELECT u.*,count(d.download_id) AS downloads FROM ".cms_db_prefix ()."module_uploads u 
         LEFT OUTER JOIN ".cms_db_prefix()."module_uploads_downloads d
         ON u.upload_id = d.file_id
         WHERE upload_category_id = ?
         GROUP BY u.upload_id
         ORDER BY upload_date DESC";
     $dbresult = $db->SelectLimit($query,$pagelimit,$offset,array($curcategory));
   }


// now setup the rest                                                 
$rowclass = 'row1';
	  
if ($dbresult)
  {
    $smarty->assign('idtext',$this->Lang('name'));
    $smarty->assign('titletext',$this->Lang('name'));
    $smarty->assign('summarytext',$this->Lang('summary'));
    $smarty->assign('desctext',$this->Lang('description'));
    $smarty->assign('sizetext',$this->Lang('sizekb'));
    $smarty->assign('authortext',$this->Lang('author'));
    $smarty->assign('iptext',$this->Lang('ip_address'));
    $smarty->assign('dltext',$this->Lang('downloads'));
    $smarty->assign('postdatetext',$this->Lang('date'));
    while ($row = $dbresult->FetchRow ())
      {
	$onerow = new stdClass ();
	$onerow->id = $row['upload_id'];
	$type = $this->_GetFileType( $row['upload_name'] );
	$imgpath = '../modules/'.basename(dirname(__FILE__)).'/images/';
	if( $type != false )
	  {
	    $onerow->icon = $imgpath.$type['image'];
	  }
	else
	  {
	    $onerow->icon = $imgpath.'unknown.png';
	  }
	$onerow->name = $row['upload_name'];
	$onerow->size = intval($row['upload_size'] / 1024.0 + 0.5);
	$onerow->author = $row['upload_author'];
	$onerow->ip = $row['upload_ip'];
	$onerow->summary = $row['upload_summary'];
	$onerow->description = $row['upload_description'];
	$onerow->date = $row['upload_date'];
	$onerow->downloads = $row['downloads'];
	$onerow->rowclass = $rowclass;
	$onerow->viewlink =
	  $this->CreateImageLink($id,'getmimefile',$returnid,$this->Lang('view'),'icons/system/view.gif',
				 array('upload_id'=>$row['upload_id']),'','',TRUE,FALSE,'target="_blank"');
		
	$onerow->editurl =
	  $this->CreateLink ($id, 'editupload', $returnid, '', 
			     array ('upload_id' => $row['upload_id'],
				    'category_id' => $curcategory),
			     '', true );

	$onerow->editlink =
	  $this->CreateLink ($id, 'editupload', $returnid,
			     $gCms->variables['admintheme']->DisplayImage('icons/system/edit.gif',
									  $this->Lang ('edit'), '', '', 'systemicon'),
			     array ('upload_id' => $row['upload_id'],
				    'category_id' => $curcategory));

	$onerow->timelimited_link =
	  $this->CreateImageLink($id,'admin_manage_timelimited',$returnid,
				 $this->Lang('manage_timelimited'),'clock_link.png',
				 array('upload_id'=>$row['upload_id']));
		
	$onerow->deletelink = $this->CreateLink ($id,'do_deleteupload',$returnid,
						 $gCms->variables['admintheme']->DisplayImage('icons/system/delete.gif',
											      $this->Lang ('delete'), '', '', 'systemicon'),
						 array ('upload_id' => $row['upload_id'],
							'category_id' => $curcategory),
						 $this->Lang ('areyousure'));
	array_push ($rowarray, $onerow);
	($rowclass == "row1" ? $rowclass = "row2" : $rowclass = "row1");
      }
    if( $dbresult ) $dbresult->Close();

    if( $npages > 1 )
      {
	// output pagination stuff.
	$smarty->assign('npages',$npages);
	$smarty->assign('curpage',$curpage);
	if( $curpage > 1 )
	  {
	    $smarty->assign('firstpage_url',
			    $this->create_url($id,'defaultadmin',$returnid,
					      array('filespage'=>1)));
	    $smarty->assign('prevpage_url',
			    $this->create_url($id,'defaultadmin',$returnid,
					      array('filespage'=>$curpage-1)));
	  }
	if( $curpage < $npages )
	  {
	    $smarty->assign('nextpage_url',
			    $this->create_url($id,'defaultadmin',$returnid,
					      array('filespage'=>$curpage+1)));
	    $smarty->assign('lastpage_url',
			    $this->create_url($id,'defaultadmin',$returnid,
					      array('filespage'=>$npages)));
	  }
      }
  }

$smarty->assign('pagelimit',$pagelimit);
$smarty->assign('addfile_link',$this->CreateImageLink($id,'admin_upload',$returnid,
						       $this->Lang('upload_file'),'icons/system/newobject.gif',
							    array('category'=>$curcategory),'','',false));

$smarty->assign ('items', $rowarray);
$smarty->assign ('itemcount', count ($rowarray));
echo $this->ProcessTemplate ('uploadlist.tpl');

// EOF
?>
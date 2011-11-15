<?php
#BEGIN_LICENSE
#-------------------------------------------------------------------------
# Module: CGUFeedback (c) 2009 by Robert Campbell 
#         (calguy1000@cmsmadesimple.org)
#  An addon module for CMS Made Simple to provide the ability to rate
#  and comment on specific pages or specific items in a module.
#  Includes numerous seo friendly, and designer friendly capabilities.
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
# However, as a special exception to the GPL, this software is distributed
# as an addon module to CMS Made Simple.  You may not use this software
# in any Non GPL version of CMS Made simple, or in any version of CMS
# Made simple that does not indicate clearly and obviously in its admin 
# section that the site was built with CMS Made simple.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
# Or read it online: http://www.gnu.org/licenses/licenses.html#GPL
#
#-------------------------------------------------------------------------
#END_LICENSE
if( !isset($gCms) ) exit;

#
# Initialize
#
$types = array(CGFEEDBACK_TYPE_TEXT=>$this->Lang('fieldtype_'.CGFEEDBACK_TYPE_TEXT),
	       CGFEEDBACK_TYPE_EMAIL=>$this->Lang('fieldtype_'.CGFEEDBACK_TYPE_EMAIL),
	       CGFEEDBACK_TYPE_TEXTAREA=>$this->Lang('fieldtype_'.CGFEEDBACK_TYPE_TEXTAREA),
	       CGFEEDBACK_TYPE_DROPDOWN=>$this->Lang('fieldtype_'.CGFEEDBACK_TYPE_DROPDOWN),
	       CGFEEDBACK_TYPE_MULTISELECT=>$this->Lang('fieldtype_'.CGFEEDBACK_TYPE_MULTISELECT));

#
# Get the data
#
$query = 'SELECT * FROM '.CGFEEDBACK_TABLE_FIELDDEFS.' ORDER BY iorder ASC';
$data = $db->GetArray($query);

#
# Give Everything to Smarty
#
$smarty->assign('fieldtypes',$types);
if( is_array($data) && count($data) > 0 )
  {
    for( $i = 0; $i < count($data); $i++ )
      {
	$edit_url = $this->CreateURL($id,'admin_add_field',$returnid,
				     array('fid'=>$data[$i]['id']));
	$delete_url = $this->CreateURL($id,'admin_del_field',$returnid,
				     array('fid'=>$data[$i]['id']));
	if( $i > 0 )
	  {
	    $moveup_url = $this->CreateURL($id,'admin_order_field',$returnid,
					   array('fid'=>$data[$i]['id'],'dir'=>'up','cur'=>$data[$i]['iorder']));
	    $data[$i]['moveup_url'] = $moveup_url;
	  }
	if( $i < (count($data) - 1) )
	  {
	    $movedown_url = $this->CreateURL($id,'admin_order_field',$returnid,
					     array('fid'=>$data[$i]['id'],'dir'=>'down','cur'=>$data[$i]['iorder']));
	    $data[$i]['movedown_url'] = $movedown_url;
	  }
	$data[$i]['edit_url'] = $edit_url;
	$data[$i]['delete_url'] = $delete_url;
      }
    $smarty->assign('fields',$data);
  }
$smarty->assign('addfield_link',
		$this->CreateImageLink($id,'admin_add_field',$returnid,
				       $this->Lang('prompt_add_field'),
				       'icons/system/newobject.gif',
				       array(),'','',false));

#
# Process output
#
echo $this->ProcessTemplate('admin_fields_tab.tpl');

#
# EOF
#
?>

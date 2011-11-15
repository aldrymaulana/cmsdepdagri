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
# Initialization
#
$thetemplate = 'detail_'.$this->GetPreference(CGFEEDBACK_PREF_DFLTDETAIL_NAME);
$cid = -1;
$query = 'SELECT * FROM '.CGFEEDBACK_TABLE_COMMENTS.'
           WHERE id = ? AND status = ? LIMIT 1';

#
# Setup
#
if( isset($params['cid']) )
  {
    $cid = (int)$params['cid'];
  }
if( isset($params['detailtemplate']) )
  {
    $thetemplate = 'detail_'.trim($params['detailtemplate']);
  }
if( $cid <= 0 )
  {
    @trigger_error($this->GetName().' detail view: invalid comment id');
    return;
  }

#
# Get the data
#
$data = $db->GetRow($query,array($cid,CGFEEDBACK_STATUS_PUBLISHED));
if( !$data )
  {
    return;
  }
$query = 'SELECT A.name,A.type,B.value FROM '.CGFEEDBACK_TABLE_FIELDDEFS.' A 
          LEFT JOIN '.CGFEEDBACK_TABLE_FIELDVALS.' B 
          ON A.id = B.field_id WHERE B.comment_id = ?';
$fields = $db->GetArray($query,array($cid));
if( is_array($fields) )
  {
    $data['fields'] = cge_array::to_hash($fields,'name');
  }

#
# Give everything to smarty
#
$config = $gCms->GetConfig();
$path = $config['root_url'].'/modules/'.$this->GetName().'/images/';
$tmp = array('img_on'=>$path.'star.gif','img_off'=>$path.'starOff.gif','img_half'=>$path.'starHalf.gif');
$smarty->assign('rating_imgs',$tmp);
$smarty->assign('onecomment',$data);

#
# Display the template
#
echo $this->ProcessTemplateFromDatabase($thetemplate);


#
# EOF
#
?>

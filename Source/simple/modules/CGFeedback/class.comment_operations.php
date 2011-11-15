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

require_once(dirname(__FILE__).'/defines.php');

class CGFeedback_comment_operations
{
  var $_module;

  function CGFeedback_comment_operations(&$cgfeedback = null)
  {
    if( is_object($cgfeedback) )
      {
	$this->_module =& $cgfeedback;
      }
  }


  function delete_comment($id)
  {
    global $gCms;
    $db =& $gCms->GetDb();

    $query = 'DELETE FROM '.CGFEEDBACK_TABLE_FIELDVALS.' WHERE comment_id = ?';
    $db->Execute($query,array($id));
    $query = 'DELETE FROM '.CGFEEDBACK_TABLE_COMMENTS.' WHERE id = ?';
    $db->Execute($query,array($id));

    return TRUE;
  }


  function mark_comment_spam($id)
  {
    return $this->change_comment_status($id,CGFEEDBACK_STATUS_SPAM);
  }


  function change_comment_status($id,$status)
  {
    $gCms = cmsms();
    $db = $gCms->GetDb();
    
    switch($status)
    {
    case CGFEEDBACK_STATUS_PUBLISHED:
      break;
    case CGFEEDBACK_STATUS_DRAFT:
    case CGFEEDBACK_STATUS_SPAM:
      break;
    default:
      return FALSE;
    }

    $query = 'UPDATE '.CGFEEDBACK_TABLE_COMMENTS." SET status = ?, modified = NOW()
               WHERE id = ?";
    $db->Execute($query,array($status,$id));
    return TRUE;
  }

}; // end of class

#
# EOF
#
?>

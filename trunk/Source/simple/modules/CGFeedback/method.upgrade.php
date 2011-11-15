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

switch( $oldversion )
  {
  case '1.0':
  case '1.0.1':
    $fn = dirname(__FILE__).'/templates/orig_success_message.tpl';
    if( file_exists( $fn ) )
      {
	$template = file_get_contents($fn);
	$this->SetTemplate('success_msg',$template);
      }
    // notice, no break

  case '1.0.2':
  case '1.0.3':
  case '1.0.4':
  case '1.0.5':
  case '1.0.6':
  case '1.1':
  case '1.2':
  case '1.2.1':
  case '1.3':
  case '1.3.1':
  case '1.3.2':
    $dict = NewDataDictionary($db);
    $sqlarray = $dict->AddColumnSQL(CGFEEDBACK_TABLE_COMMENTS, "notified I1");
    $dict->ExecuteSQLArray($sqlarray);
  }

if( version_compare($oldversion,'1.4') < 0 )
  {
$txt = <<<EOT
__EMAIL__
__IP_ADDRESS__
__URL__
sex
adult
purchase
shop
EOT;
$this->SetPreference('moderation_patterns',$txt);
  }

if( version_compare($oldversion,'1.4.1') < 0 )
  {
    $dict = NewDataDictionary($db);
    $sqlarray = $dict->AddColumnSQL(CGFEEDBACK_TABLE_COMMENTS, "origurl C(255)");
    $dict->ExecuteSQLArray($sqlarray);
  }
#
# EOF
#
?>

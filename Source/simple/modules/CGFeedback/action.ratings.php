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
$thetemplate = 'ratings_'.$this->GetPreference(CGFEEDBACK_PREF_DFLTRATINGS_NAME);
$key1 = '__page__';
$key2 = $returnid;
$key3 = '';
$query = 'SELECT COUNT(rating) as count, MIN(rating) as min, MAX(rating) as max, 
                 AVG(rating) as avg 
             FROM '.CGFEEDBACK_TABLE_COMMENTS;
$where = array();
$qparms = array();
//s where key1 = '__page__' and key2 = '135';


# 
# Setup
#
if( isset($params['key1']) )
  {
    $key1 = trim($params['key1']);
  }
if( isset($params['key2']) )
  {
    $key2 = trim($params['key2']);
  }
if( isset($params['key3']) )
  {
    $key3 = trim($params['key3']);
  }
if( isset($params['ratingstemplate']) )
  {
    $thetemplate = 'ratings_'.trim($params['ratingstemplate']);
  }


#
# Build the query
#
if( !$showall )
  {
    $where[] = 'status = ?';
    $qparms[] = CGFEEDBACK_STATUS_PUBLISHED;
  }
if( !empty($key1) )
  {
    $where[] = 'key1 = ?';
    $qparms[] = $key1;
  }
if( !empty($key2) )
  {
    $where[] = 'key2 = ?';
    $qparms[] = $key2;
  }
if( !empty($key3) )
  {
    $where[] = 'key3 = ?';
    $qparms[] = $key3;
  }

#
# Assemble the query
#
if( count($where) )
  {
    $query .= ' WHERE '.implode(' AND ',$where);
  }

#
# Get the data
#
$stats = $db->GetRow($query,$qparms);
if( !$stats )
  {
    echo "DEBUG STATS QUERY: SQL FAILED<br/>";
    echo "QUERY: ".$db->sql.'<br/>';
    echo "MESSAGE: ".$db->ErrorMsg().'<br/>';
    echo "SQUERY: ".$query.'<br/>'; print_r( $qparms );
    die();
  }
$stats['int_avg'] = (int)floor($stats['avg']);
$tmp = $stats['avg'] - floor($stats['avg']);
if( $tmp > 0.04 )
  {
    // todo this should probably be preference.
    $stats['fraction'] = $tmp;
  }

#
# Give everything to smarty
#
$config =& $gCms->GetConfig();
$path = $config['root_url'].'/modules/'.$this->GetName().'/images/';
$tmp = array('img_on'=>$path.'star.gif','img_off'=>$path.'starOff.gif','img_half'=>$path.'starHalf.gif');
$smarty->assign('rating_imgs',$tmp);
$smarty->assign('stats',$stats);


#
# Display the template
#
echo $this->ProcessTemplateFromDatabase($thetemplate);


#
# EOF
#
?>

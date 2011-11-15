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
$thetemplate = 'summary_'.$this->GetPreference(CGFEEDBACK_PREF_DFLTSUMMARY_NAME);
$key1 = '__page__';
$key2 = $returnid;
$key3 = '';
$detailpage = $returnid;
$inline = 0;
$sortby = 'created';
$sortorder = 'DESC';
$pagelimit = 10000;
$pagecount = 1;
$startoffset = -1;
$total_records = -1;
$pagenum = 1;
$showall = 0;

// for the queries
$cquery = 'SELECT COUNT(id) AS c FROM '.CGFEEDBACK_TABLE_COMMENTS.' com';
$query = 'SELECT * FROM '.CGFEEDBACK_TABLE_COMMENTS.' com';
$squery = 'SELECT key1,key2,key3,count(key3) as reviews FROM '.CGFEEDBACK_TABLE_COMMENTS.' com';
$squery_suffix = 'GROUP BY key1,key2,key3 ORDER BY reviews DESC';
$joins = array();
$where = array();
$qparms = array();
$order = 'ORDER BY ';

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
if( isset($params['summarytemplate']) )
  {
    $thetemplate = 'summary_'.trim($params['summarytemplate']);
  }
if( isset($params['sortby']) )
  {
    $sortby = strtolower(trim($params['sortby']));
  }
if( isset($params['sortorder']) )
  {
    $sortorder = strtoupper(trim($params['sortorder']));
  }
if( isset($params['pagelimit']) )
  {
    $pagelimit = (int)$params['pagelimit'];
  }
if( isset($params['pagenum']) )
  {
    $pagenum = (int)$params['pagenum'];
  }
if( isset($params['showall']) )
  {
    $showall = (int)$params['showall'];
  }
if( isset($params['inline']) )
  {
    $inline = (int)$params['inline'];
  }
if( isset($params['detailpage']) )
  {
    $tmp = trim($params['detailpage']);
    $tmp2 = $this->resolve_alias_or_id($tmp);
    if( $tmp2 ) 
      {
	$detailpage = $tmp2;
      }
  }


#
# Build the Summary List Query
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
switch( $sortby )
  {
  case 'rating':
  case 'title':
  case 'status':
  case 'author_name':
  case 'author_email':
  case 'author_ip':
  case 'created':
  case 'modified':
    break;
  default:
    $sortby = 'created';
    $tmp = strtoupper($sortby);
    if( startswith($tmp,'F:') )
      {
	// sort by custom field.
	$fname = substr($tmp,2);
	$sql = 'SELECT id FROM '.CGFEEDBACK_TABLE_FIELDDEFS.'
                 WHERE name = ?';
	$fid = $db->GetOne($sql,array($fname));
	if( $fid )
	  {
	    $joins[] = 'LEFT JOIN '.CGFEEDBACK_TABLE_FIELDVALS.' fv
                          ON fv.comment_id = com.id';
	    $where[] = 'fv.field_id = ?';
	    $qparms[] = $fid;
	    $sortby = 'fv.value';
	  }
      }
  }
switch( $sortorder )
  {
  case 'ASC':
  case 'DESC':
    break;
  default:
    $sortorder = 'DESC';
  }
$order .= "$sortby $sortorder";

#
# Assemble the queries
#
if( count($joins) )
  {
    $query .= implode(' ',$joins);
  }
if( count($where) )
  {
    $cquery .= ' WHERE '.implode(' AND ',$where);
    $query .= ' WHERE '.implode(' AND ',$where);
    $squery .= ' WHERE '.implode(' AND ',$where);
  }
$query .= ' '.$order;
$squery .= ' '.$squery_suffix;

#
# Get the data
#
$total_records = $db->GetOne($cquery,$qparms);
if( !$total_records )
  {
    // there's no records matching the criteria
    // or the query failed
    return;
  }
$pagecount = (int)($total_records / $pagelimit);
if( $total_records % $pagelimit )
  {
    $pagecount++;
  }
$startoffset = ($pagenum - 1) * $pagelimit;

// get the stats
$stats = $db->GetArray($squery,$qparms);

// get field definitions
$fields = '';
$sql = 'SELECT id,name,type FROM '.CGFEEDBACK_TABLE_FIELDDEFS.' ORDER BY iorder';
$tmp = $db->GetArray($sql);
if( is_array($tmp) )
  {
    $fields = cge_array::to_hash($tmp,'id');
  }

// get the individual reviews.
$dbr = $db->SelectLimit($query,$pagelimit,$startoffset,$qparms);
if( !$dbr )
  {
    echo "DEBUG SUMMARY QUERY: SQL FAILED<br/>";
    echo "QUERY: ".$db->sql.'<br/>';
    echo "MESSAGE: ".$db->ErrorMsg().'<br/>';
    echo "SQUERY: ".$query.'<br/>'; print_r( $qparms );
    die();
  }

$parms = $params;
$parms['feedback_origpage'] = $returnid;
$data = array();
while( $dbr && ($row = $dbr->FetchRow()) )
  {
    $prettyurl = "feedback/detail/{$row['id']}/{$detailpage}/";
    $prettyurl .= munge_string_to_url(substr($row['title'],0,30));
    $parms['cid'] = $row['id'];
    $row['detail_url'] = $this->CreateURL($id,'detail',
					  $detailpage,$parms,0,
					  $prettyurl);

    $sql = 'SELECT * FROM '.CGFEEDBACK_TABLE_FIELDVALS.' WHERE comment_id = ?';
    $tmp = $db->GetArray($sql,array($row['id']));
    if( is_array($tmp) && is_array($fields) )
      {
	for( $i = 0; $i < count($tmp); $i++ )
	  {
	    $tmp[$i] = array_merge($tmp[$i],$fields[$tmp[$i]['field_id']]);
	  }
	$row['fields'] = cge_array::to_hash($tmp,'name');
      }

    $tmp = $fields;
    $data[] = $row;
  }

#
# Give everything to smarty
#
$config = $gCms->GetConfig();
$path = $config['root_url'].'/modules/'.$this->GetName().'/images/';
$tmp = array('img_on'=>$path.'star.gif','img_off'=>$path.'starOff.gif','img_half'=>$path.'starHalf.gif');
$smarty->assign('rating_imgs',$tmp);

$smarty->assign('total_records',$total_records);
$smarty->assign('pagecount',$pagecount);
$smarty->assign('pagenum',$pagenum);
$parms = $params;
if( $pagenum > 1 )
  {
    $parms['pagenum'] = 1;
    $smarty->assign('firstpage_url',
		    $this->CreateURL($id,'summary',$returnid,$parms,$inline));
    $parms['pagenum'] = $pagenum - 1;
    $smarty->assign('prevpage_url',
		    $this->CreateURL($id,'summary',$returnid,$parms,$inline));
  }
if( $pagenum < $pagecount )
  {
    $parms['pagenum'] = $pagenum + 1;
    $smarty->assign('nextpage_url',
		    $this->CreateURL($id,'summary',$returnid,$parms,$inline));
    $parms['pagenum'] = $pagecount;
    $smarty->assign('lastpage_url',
		    $this->CreateURL($id,'summary',$returnid,$parms,$inline));
  }
$smarty->clear_assign('stats');
if( is_array($stats) )
  {
    $smarty->assign('stats',$stats);
  }
$smarty->clear_assign('comments');
if( count($data) )
  {
    $smarty->assign('comments',$data);
  }

#
# Display the template
#
echo $this->ProcessTemplateFromDatabase($thetemplate);


#
# EOF
#
?>

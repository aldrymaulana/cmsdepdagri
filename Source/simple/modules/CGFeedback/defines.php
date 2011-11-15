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

define('CGFEEDBACK_PERM_FEEDBACK','Manage Site Feedback');

define('CGFEEDBACK_COOKIE','cgfeedback_details');

define('CGFEEDBACK_STATUS_PUBLISHED','published');
define('CGFEEDBACK_STATUS_DRAFT','draft');
define('CGFEEDBACK_STATUS_SPAM','spam');

define('CGFEEDBACK_TYPE_TEXT',0);
define('CGFEEDBACK_TYPE_EMAIL',1);
define('CGFEEDBACK_TYPE_TEXTAREA',2);
define('CGFEEDBACK_TYPE_DROPDOWN',3);
define('CGFEEDBACK_TYPE_MULTISELECT',4);

define('CGFEEDBACK_TABLE_FIELDVALS',cms_db_prefix().'module_cgfeedback_fieldvals');
define('CGFEEDBACK_TABLE_FIELDDEFS',cms_db_prefix().'module_cgfeedback_fielddefs');
define('CGFEEDBACK_TABLE_COMMENTS',cms_db_prefix().'module_cgfeedback_comments');

define('CGFEEDBACK_PREF_USERNOTIFICATION_TEMPLATE','usernotification_template');
define('CGFEEDBACK_PREF_NOTIFICATION_TEMPLATE','notification_template');
define('CGFEEDBACK_PREF_USERNOTIFICATION_SUBJECT','usernotification_subject');
define('CGFEEDBACK_PREF_NOTIFICATION_SUBJECT','notification_subject');
define('CGFEEDBACK_PREF_NEWCOMMENTFORM_TEMPLATE','sysdflt_commentform_template');
define('CGFEEDBACK_PREF_DFLTCOMMENTFORM_NAME','curdflt_commentform_template_name');
define('CGFEEDBACK_PREF_NEWRATINGS_TEMPLATE','sysdflt_ratings_template');
define('CGFEEDBACK_PREF_DFLTRATINGS_NAME','curdflt_ratings_template_name');
define('CGFEEDBACK_PREF_NEWSUMMARY_TEMPLATE','sysdflt_summary_template');
define('CGFEEDBACK_PREF_DFLTSUMMARY_NAME','curdflt_summary_template_name');
define('CGFEEDBACK_PREF_NEWDETAIL_TEMPLATE','sysdflt_detail_template');
define('CGFEEDBACK_PREF_DFLTDETAIL_NAME','curdflt_detail_template_name');

#
# EOF
#
?>

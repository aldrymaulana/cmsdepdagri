<?php

#0-9

#A
$lang['active'] = 'Active';
$lang['addacomment'] = 'Add a comment';
$lang['akismet_check'] = 'Activate Akismet check';
$lang['areyousure'] = 'Delete comment?';
$lang['author'] = 'Author';
$lang['authornotifymsg'] = 'A new comment has been posted on \'%s\'';
$lang['authornotifysubj'] = 'New comment on \'%s\'';
$lang['authornotify'] = 'Reply Notify';

#B

#C
$lang['cache'] = 'Cache';
$lang['cancel'] = 'Cancel';
$lang['check_trackback_url'] = 'This URL is for trackbacks only.';
$lang['comment'] = 'Comment';
$lang['commentedit'] = 'Edit Comment';
$lang['comment_title'] = 'Title';
$lang['comment_deleted'] = 'The comment was successfully deleted.';
$lang['comment_updated'] = 'The comment was successfully updated.';
$lang['comments'] = 'Comments';
$lang['comments_deleted'] = 'The comments were successfully deleted.';
$lang['continue_back'] = 'Continue Back to Page';
$lang['comment_awaiting_approval'] = 'Your comment has been received and is awaiting approval';
$lang['createdate'] = 'Creation date';
$lang['changelog'] = <<<EOT
<ul>
<li>1.0 - August 2010
<p>Initial Release of the module AComments</p></li>
</ul>
EOT;

#D
$lang['data'] = 'Comment text';
$lang['date'] = 'Date';
$lang['delete'] = 'Delete';
$lang['delselected'] = 'Delete Selected';
$lang['disable_html'] = 'Set HTML for comments inactive';

#E
$lang['edit'] = 'Edit';
$lang['editor'] = 'Edit.Com.';
$lang['email'] = 'Email';
$lang['enable_cookie_support'] = 'Activate cookie support';
$lang['enable_trackbacks'] = 'Activate trackbacks';
$lang['enable_trackback_backlink_check'] = 'Activate trackback backlink-check';
$lang['error'] = 'Error';
$lang['errorenterauthor'] = 'Enter an author';
$lang['errorentercomment'] = 'Enter a comment (isn\'t that the point?)';
$lang['errorenteremail'] = 'Incorrect email format';
$lang['errorenterwebsite'] = 'Incorrect URL format';
$lang['entercode']  = 'Code in the picture';

#F
$lang['filters'] = 'Filters';
$lang['firstpage'] = '&lt;&lt;';
$lang['friendlyname'] = 'Comments';

#G

#H
$lang['help_akismet_check'] = '<b>Check for Spam</b> - Check this box to use Akismet module to detect spam. <b>Note: Using this feature requires that the CMSakismet module be installed.</b>';
$lang['help_enable_trackbacks'] = '<b>Enable Trackbacks</b> - Check this box to enable the trackback functionality in comments.';
$lang['help_enable_trackback_backlink_check'] = '<b>Enable Backlink Check for Trackbacks</b> - To check, whether the sender website contains a link to your website.';
$lang['help_enable_cookie_support'] = '<b>Enable Cookie Support</b> - This will restore the comment form for a visitor, that he/she doenst need to fill in Name, EMail, etc. every time.';
$lang['helpnumber'] = 'Maximum number of items to display -- leaving empty will show all items';
$lang['helpdateformat'] = 'Date/Time format using parameters from php\'s date function.  See
	<a href="http://php.net/date" target="_blank">here</a> for a parameter list and information.';
$lang['helplocaledateformat'] = '<p>You can use this with the lang parameter to get localized dates and <a href="http://us2.php.net/strftime" target="_blank">strftime</a> date formats will be used instead, for example:</p><p><b>English Dates (example output: Thursday, July 19, 2007, 07:51 AM)</b></p><pre>{cms_module module=\'comments\' localedateformat=\'%B %d, %Y, %I:%M %p\' lang=\'en_US\'}</pre><p><b>French Dates (example output: jeudi, juillet 19, 2007, 07:51)</b></p><pre>{cms_module module=\'comments\' localedateformat=\'%B %d, %Y, %I:%M %p\' lang=\'fr_FR\'}</pre>';
$lang['localedateformat_error'] = 'Error: Calling setlocale to set time format did not work because locale functionality is not implemented on your platform, the specified locale does not exist, or the category name is invalid.';
$lang['helpnotify'] = '<b>Notify</b> - email address for new comment notifications.  If not specified, notifications will not be sent.';
$lang['edit_comment'] = 'Edit Comment';
$lang['helpmoderate'] = '<b>Moderate</b> - Inactivate new comments.  They must then be set as active by an admin before being displayed on the site.';
$lang['comment_moderation_enabled'] = 'Important: Comment moderation is enabled. You will need to activate this comment before it will show up on your page.';
$lang['helpspamprotect'] = '<b>Spam Protectection</b> - Protect comments from spam. Check this box to use the Captcha module to help prevent automated comment spam. <b>Using this feature requires that the Captcha module be installed.</b>';
$lang['help_disable_html'] = '<b>Disable HTML</b> - Check this box to disable HTML in comments.';
$lang['help'] = <<<EOD
	<h3>What does this do?</h3>
	<p>The comments module is a tag module.  It's used to add comments to individual pages which 
	can be read by users who visit the page later.  The practical reason for this module is for 
	documentation pages, so that users can add additional comments and information to the page.
	</p>
	<h3>How do I use it?</h3>
	<p>Comments is just a tag module.  It's inserted into your page or template by using the 
	cms_module tag.  Example syntax would be:<br />
	<code>{cms_module module='comments'}</code></p>
	<p>To enable email notifications, set up and configure CMSMailer module and include 
	recipient email in the <i>notify</i> option in the Options tab.</p>
	<p>Make sure to set the 'Manage Comments' permission on users who will be administering comments.</p>
	<h3>Parameters</h3>
	<ul>
		<li><i>number</i> - number of comments on the page.  If not specifid, all comments are shown.</li>
		<li><i>emailfield</i> - set to 1 to allow users enter their email address. If not set, email field won't show.</li>
		<li><i>websitefield</i> - set to 1 to allow users enter their website url. If not set, website field won't show.</li>
		<li><i>modulename</i> - name of the module for which these comments are being used.</li>
		<li><i>pageid</i> - id of item this is being used with, could be a picture or news id</li>
	</ul>
		<h4>Styling</h4>
		<p>To style the comments form you can add something like this to your stylesheet:</p>
        <pre>#comments textarea { width:300px; }</pre>

<h3>Examples</h3>
<h4>Example of using with News module</h4>
		<p>Put this in your News "Detail Template":</p>
<pre>
{cms_module module='comments' modulename='News' pageid=\$entry->id}
</pre>
EOD;

#I
$lang['id'] = 'ID';
$lang['ip'] = 'Author IP';

#J

#K

#L
$lang['lastpage'] = '&gt;&gt;';
$lang['list_template'] = 'Comment Display Template';
$lang['list_template_updated'] = 'The Comment Display Template was successfully updated.';

#M
$lang['moddescription'] = 'The comments module allows visitors to leave comments on your website.';
$lang['moderate'] = 'Comments are inactiv by standard. The moderator has to activate the comments.';
$lang['modifydate'] = 'Modification date';
$lang['modulename'] = 'Module Name';

#N
$lang['needpermission'] = 'You need the \'%s\' permission to perform that function.';
$lang['nextpage'] = '&gt;';
$lang['newcomment'] = 'Add a Comment';
$lang['newtemplate'] = 'Create new template';
$lang['no'] = 'no';
$lang['nocommentsfound'] = 'No comments found';
$lang['notified'] = 'EMail sendt';
$lang['notify'] = 'email-address for a message by new comments';
$lang['notifysubj'] = 'Comment on \'%s\'! ';
$lang['notifymsg']  = 'A new comment has been posted on page \'%s\'. ';

#O
$lang['options'] = 'Options';
$lang['options_updated'] = 'The options were successfully saved.';

#P
$lang['pageid'] = 'Page';
$lang['page'] = 'Page';
$lang['page_of'] = 'Page %s of %s';
$lang['page_limit'] = 'Page Limit';
$lang['postdate'] = 'Post date';
$lang['postinstall'] = "Module AComments was successfully installed<br />
Don't forget to:<br />
  1) Make sure to set the <b>'Manage Comments' permission</b> on users who will be administering comments;<br />
  2) Install and configure the <b>CMSMailer module</b> to support mailing functionality.";
$lang['postuninstall'] = 'Module AComments was successfully uninstalled';
$lang['prevpage'] = '&lt;';

#Q

#R
$lang['restoretodefaultsmsg'] = 'This operation will restore the template contents to their system defaults.  Are you sure you want to procede?';
$lang['reallydelete'] = 'Do you want to delete this comment really?';
$lang['reallymakeactive'] = 'Do you want to activate this comment really?';
$lang['reallymakeinactive'] = 'Do you want to deactivate this comment really?';
$lang['reallymakestandard'] = 'Do you want to make this template as standard?';
$lang['reset'] = 'Reset';

#S
$lang['spamprotect'] = 'Activate spam protection';
$lang['standard'] = 'Standard';
$lang['submit_template'] = 'Submit Form Template';
$lang['submit_template_updated'] = 'The Submit Form Template was successfully updated.';
$lang['submit'] = 'Submit';
$lang['submitcomment'] = 'Comment submitted';
$lang['sysdefaults'] = 'Restore to defaults';

#T
$lang['template'] = 'Template';
$lang['templateedit'] = 'Edit Template';
$lang['templatename'] = 'Template name';
$lang['title_comments'] = 'Comments';
$lang['title_templates'] = 'Templates';
$lang['title_options'] = 'Settings';
$lang['trackback'] = 'Trackback';

#U

#V

#W
$lang['website'] = 'Website';
$lang['wrongcode'] = 'Code entered incorrectly.  Try again.';

#X

#Y
$lang['yes'] = 'yes';
$lang['yourname'] = 'Your Name';

#Z

// EOF
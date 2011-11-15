<?php
if (!isset($gCms)) exit;


/* -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-

   Code for Gallery2Embedded "default" action

   -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
   
   Typically, this will display something from a template
   or do some other task.
   
*/

/* READY ? FIGHT ! */

if (!$this->LoadGalleryApi())
{
	echo '<p>' . $this->lang('error_no_gallery') . '</p>';
 }
else 
{
    $ret = GalleryEmbed::init(array(
              'embedUri' => $_SERVER['PHP_SELF'].'?'.$config['query_var'].'='.$gCms->variables['page_name'],
              'g2Uri' => $this->GetPreference('gallery_url'),
              'loginRedirect' => '#', // To do
              'activeUserId' => '' // We log in as guest    
              ));
              
        GalleryCapabilities::set('showSidebar', false);
  
  if ($ret) {
    // $ret->getAsHtml() has error details..
    exit;
  }
  
  $g2data = GalleryEmbed::handleRequest(); 

  if ($g2data['isDone']) {
    exit; // Gallery 2 has already sent output (redirect or binary data)
  } 
  // Use $g2data['headHtml'] and $g2data['bodyHtml']
  // to display Gallery 2 content inside embedding application
  // if you don't want to use $g2data['headHtml'] directly, you can get the css,
  // javascript and page title separately by calling...
  //if (isset($g2moddata['headHtml'])) {
  // list($title, $css, $javascript) = GalleryEmbed::parseHead($g2moddata['headHtml']);
  //}
 
  echo $g2data['bodyHtml'];      
	
	/* OLD */
/* CONFIG */
/*
$G2['path'] = $this->GetPreference('gallery_path');
$G2['embedURI'] = $_SERVER['PHP_SELF'].'?'.$config['query_var'].'='.$gCms->variables['page_name'];
$G2['g2URI'] = $this->GetPreference('gallery_url');
$G2['realpath'] = realpath(dirname(__FILE__).'/'.'../../'.$G2['path']).'/';
 //echo 'Gallery successfuly loaded';
 */
}
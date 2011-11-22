<?php
$path = dirname(dirname(dirname(dirname(__FILE__))));
require_once($path . DIRECTORY_SEPARATOR . 'include.php');
$config=&$gCms->GetConfig();
global $gCms;
$db =& $gCms->GetDb();

$showid = htmlspecialchars($_GET["showid"]);

//read text settings
	$query = "SELECT st_showtext, st_textcolor, st_textsize, st_titlesize, st_fonttype FROM ".cms_db_prefix()."module_showtime_name WHERE show_id = $showid";
	$result=$db->Execute($query);
	if ( $result && $result->RecordCount() > 0 ){
	  while ( $row=$result->FetchRow() ) {
		$st_textcolor=$row['st_textcolor'];
		$st_textsize=$row['st_textsize'];
		$st_titlesize=$row['st_titlesize'];
		$st_fonttype=$row['st_fonttype'];
		$st_showtext = $row['st_showtext'];
	  }
	}
	
	switch ($st_fonttype){
		case 'verdana':
			$st_fonttype='Verdana, Geneva, sans-serif' ;break;
		case 'courier':
			$st_fonttype='"Courier New", Courier, monospace' ;break;
		case 'arial':
			$st_fonttype='Arial, Helvetica, sans-serif' ;break;
		case 'tahoma':
			$st_fonttype='Tahoma, Geneva, sans-serif' ;break;
		case 'sans':
			$st_fonttype='_sans, Helvetica, Arial' ;break;
		case 'times':
			$st_fonttype='"Times New Roman", Times, serif' ;break;
		case 'serif':
			$st_fonttype='"MS Serif", "New York", serif' ;break;
	}

	header("content-type:text/xml;charset=utf-8");
	echo '<?xml version="1.0" encoding="utf-8" ?>';
	echo '<slideshow>'; 

	error_reporting(E_NONE);
	ini_set("display_errors", 'OFF');
?>
<css>p {
	marginLeft: 15;
	marginRight: 15;
	valign: bottom;
	textAlign: left;
	color: <?php echo $st_textcolor?>;
	font-family: <?php echo $st_fonttype?>;
	fontWeight:normal;
	kerning: true;
	leading: 0;
}
.description {
	fontSize: <?php echo $st_textsize?>;
}
h1 {
	fontSize: <?php echo $st_titlesize?>;
}
a {
	color: <?php echo $st_textcolor?>;
}
a:hover {
	color: #ffffff;
	textDecoration: underline;
}
.spacer {
	fontSize: 12;
}
.cursor {color: #ffffff;}
.circle {color: #ffffff;}
.shadow {color: #000000; strength: 0; blur: 2;}
</css>

            <img src='<?php echo $config['root_url']?>/modules/Showtime/images/slide1.jpg' 
				hdsrc='<?php echo $config['root_url']?>/modules/Showtime/images/slide1.jpg' title='title here' caption='Comment here Lorem ipsum dolor sit amet.' href='#' />
            <img src='<?php echo $config['root_url']?>/modules/Showtime/images/slide2.jpg' 
				hdsrc='<?php echo $config['root_url']?>/modules/Showtime/images/slide1.jpg' title='title' caption='Comment here Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse egestas nibh ac nunc suscipit tincidunt.' href='#' />
            <img src='<?php echo $config['root_url']?>/modules/Showtime/images/slide3.jpg' 
				hdsrc='<?php echo $config['root_url']?>/modules/Showtime/images/slide1.jpg' title='title' caption='Comment here Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse egestas nibh ac nunc suscipit tincidunt.' href='#' />
            <img src='<?php echo $config['root_url']?>/modules/Showtime/images/slide4.jpg' 
				hdsrc='<?php echo $config['root_url']?>/modules/Showtime/images/slide1.jpg' title='title' caption='Comment here Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Suspendisse egestas nibh ac nunc suscipit tincidunt.' href='#' />
            <img src='<?php echo $config['root_url']?>/modules/Showtime/images/slide5.jpg' 
				hdsrc='<?php echo $config['root_url']?>/modules/Showtime/images/slide1.jpg' title='title' caption='Comment here Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Suspendisse egestas nibh ac nunc suscipit tincidunt.' href='#' />

</slideshow>
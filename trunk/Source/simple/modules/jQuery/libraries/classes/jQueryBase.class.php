<?php

	/*
	 * jQuery Base class
	 * Copyrights: Jean-Christophe Cuvelier - Morris & Chapman Belgium
	 * Under GPL Licence
	 */
	
	class jQueryBase extends CmsObject
	{
		
		public static function getJavascriptTag($url=null,$content=null)
		{
			if (!empty($url))
			{
				
				return '<script language="JavaScript" type="text/javascript" src="'.$url.'"></script>'."\r\n";
			}
			else
			{
				return '<script language="JavaScript" type="text/javascript">'."\r\n".'<!--'."\r\n".$content."\r\n".'-->'."\r\n".'</script>'."\r\n";
			}
		}
	}
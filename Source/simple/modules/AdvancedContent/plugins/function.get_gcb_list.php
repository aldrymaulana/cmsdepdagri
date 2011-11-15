<?php
#-------------------------------------------------------------------------------
#
# Smarty Plugin : {get_gcb_list}
# Purpose       : This plugin gets a list of global content blocks of CMSms 
#                 showing their names divided by a separator
# Author        : Georg Busch (NaN)
# Copyright     : 2010 Georg Busch (NaN)
# Version       : 1.0
# License       : GPL
#
#-------------------------------------------------------------------------------

function smarty_cms_function_get_gcb_list($params, &$smarty) 
{
	$gcbs = cmsms()->GetGlobalContentOperations()->LoadHtmlBlobs();
	
	$delimiter = "<hr />";
	if(isset($params['delimiter']) && trim($params['delimiter']) != '')
		$delimiter = trim($params['delimiter']);
	
	$excl_prefix = array();
	$incl_prefix = array();
	$excl_sufix  = array();
	$incl_sufix  = array();
	
	if(isset($params['excl_prefix']))
		$excl_prefix = smarty_cms_function_get_gcb_list_CleanArray(explode(',',$params['excl_prefix']));
	
	if(isset($params['excl_sufix']))
		$excl_sufix = smarty_cms_function_get_gcb_list_CleanArray(explode(',',$params['excl_sufix']));
	
	if(isset($params['incl_prefix']))
		$incl_prefix = smarty_cms_function_get_gcb_list_CleanArray(explode(',',$params['incl_prefix']));
	
	if(isset($params['incl_sufix']))
		$incl_sufix = smarty_cms_function_get_gcb_list_CleanArray(explode(',',$params['incl_sufix']));
	
	$assign_as = 'string';
	if(isset($params['assign_as']))
		$assign_as = $params['assign_as'];
	
	$output = 'content'; // name, id, owner, modified_date, full_object
	if(isset($params['output']))
		$output = $params['output'];
	
	$sort_by = 'id';
	if(isset($params['sort_by']))
		$sort_by = $params['sort_by'];
	
	$sort_order = 'asc';
	if(isset($params['sort_order']))
		$sort_order = $params['sort_order'];
	
	$gcb_array = array();
	foreach($gcbs as $gcb)
	{
		$skip = false;
		foreach($excl_prefix as $str) 
		{
			if(startswith($gcb->name,$str)) 
			{
				$skip = true;
				break;
			}
		}
		if($skip) continue;
		
		foreach($incl_prefix as $str)
		{
			if(!startswith($gcb->name,$str)) 
			{
				$skip = true;
				break;
			}
		}
		if($skip) continue;
		
		foreach($excl_sufix as $str)
		{
			if(endswith($gcb->name,$str)) 
			{
				$skip = true;
				break;
			}
		}
		if($skip) continue;
		
		foreach($incl_sufix as $str)
		{
			if(!endswith($gcb->name,$str)) 
			{
				$skip = true;
				break;
			}
		}
		if($skip) continue;
		
		switch($sort_by)
		{
			case 'name':
				if($output == 'full_object')
				{
					$gcb_array[$gcb->name] = $gcb;
					break;
				}
				$gcb_array[$gcb->name] = $gcb->$output;
				break;
			
			case 'modified_date':
				if($output == 'full_object')
				{
					$gcb_array[$gcb->modified_date] = $gcb;
					break;
				}
				$gcb_array[$gcb->modified_date] = $gcb->$output;
				break;
				
			case 'owner':
			case 'owner+create_date':
			case 'owner+id':
				if($output == 'full_object')
				{
					$gcb_array[$gcb->owner . '_' . $gcb->id] = $gcb;
					break;
				}
				$gcb_array[$gcb->owner . '_' . $gcb->id] = $gcb->$output;
				break;
				
			case 'owner+name':
				if($output == 'full_object')
				{
					$gcb_array[$gcb->owner . '_' . $gcb->name] = $gcb;
					break;
				}
				$gcb_array[$gcb->owner . '_' . $gcb->name] = $gcb->$output;
				break;
				
			case 'owner+modified_date':
				if($output == 'full_object')
				{
					$gcb_array[$gcb->owner . '_' . $gcb->modified_date] = $gcb;
					break;
				}
				$gcb_array[$gcb->owner . '_' . $gcb->modified_date] = $gcb->$output;
				break;
			
			case 'id':
			case 'create_date':
			default:
				if($output == 'full_object')
				{
					$gcb_array[$gcb->id] = $gcb;
					break;
				}
				$gcb_array[$gcb->id] = $gcb->$output;
				break;
		}
	}
	
	if($sort_order == 'desc')
		krsort($gcb_array);
	else
		ksort($gcb_array);
	
	if(isset($params['assign']))
	{
		if($assign_as == "array") {
			$smarty->assign($params['assign'],$gcb_array);
			return;
		}
		$smarty->assign($params['assign'],implode($delimiter, $gcb_array));
		return;
	}
	return implode($delimiter, $gcb_array);
}

/**
 * Checks if a var is empty. <br />
 * If $var is an array it recursivley checks all elements.
 *
 * @since 1.0
 * @access public
 *
 * @param mixed &$var - the var to check for empty value(s)
 * @param boolean $trim - true to trim off spaces
 * @param boolean $unset_empty_indexes - true to delete empty elements from array
 * @return boolean - true if empty, false if not
 */
function smarty_cms_function_get_gcb_list_IsVarEmpty(&$var, $trim = true, $unset_empty_indexes = false) 
{
	if (is_array($var)) 
	{
		foreach ($var as $k=>$v) 
		{
			if (!smarty_cms_function_get_gcb_list_IsVarEmpty($v)) 
			{
				return false;
			}
			
			if($unset_empty_indexes)
			{
				unset($var[$k]);
			}
			return true;
		}
	}
	else if($trim && trim($var) == '') 
	{
		return true;
	}
	else if($var == '') 
	{
		return true;
	}
	return false;
}

/**
 * Removes empty elements from an array. <br />
 * (can be useful when using function explode to create the array from a csv)
 *
 * @since 1.0
 * @access public
 *
 * @param array $array - the array to clean up
 * @return array - an array without empty elements or an empty array
 */
function smarty_cms_function_get_gcb_list_CleanArray($array)
{
	if (is_array($array))
	{
		foreach ($array as $k=>$v)
		{
			if (smarty_cms_function_get_gcb_list_IsVarEmpty($v,true,true))
			{
				unset($array[$k]);
			}
			else 
			{
				if(is_array($v))
				{
					$v = smarty_cms_function_get_gcb_list_CleanArray($v);
					if(smarty_cms_function_get_gcb_list_IsVarEmpty($v,true,true))
					{
						unset($array[$k]);
					}
					else
					{
						$array[$k] = $v;
					}
				}
			}
		}
		return $array;
	}
	return array();
}

/**
 * Checks if a value is really meant to be "true". <br />
 * Can be usefull when checking smarty params for the value true
 *
 * @since 1.0
 * @access public
 *
 * @param mixed $value - the value to check
 * @return bool
 */
function smarty_cms_function_get_gcb_list_IsTrue($value)
{
	return (strtolower($value) === 'true' || $value === 1 || $value === '1' || $value === true);
}

/**
 * Checks if a value is really meant to be "false". <br />
 * Can be usefull when checking smarty params for the value false
 *
 * @since 1.0
 * @access public
 *
 * @param mixed $value - the value to check
 * @return bool
 */
function smarty_cms_function_get_gcb_list_IsFalse($value)
{
	return (strtolower($value) === 'false' || $value === '0' || $value === 0 || $value === false || $value === '');
}

function smarty_cms_help_function_get_gcb_list()
{
	return '
	<h2>{get_gcb_list}</h2>
	<h3>Purpose</h3>
	<p>Prints out certain properties of global content blocks</p>
	<h3>Usage</h3>
	<p>Insert {get_gcb_list <em>[params]</em>} in your content or template.</p>
	<h3>Paramseters</h3>
	<ul>
		<li>
			<tt>delimiter</tt> <em>(string)</em>
			<ul>
				<li>
					The delimiter that separates the global content blocks.<br />
					Possible value can be any sign or text.<br />
					Default is a &lt;hr /&gt;
				</li>
			</ul>
			<br />
		</li>
		<li>
			<tt>excl_prefix</tt> <em>(string)</em>
			<ul>
				<li>A prefix of the names of the global content block that will not be shown.<br />
				Possible value can be any sign or text.</li>
			</ul>
			<br />
		</li>
		<li>
			<tt>excl_sufix</tt> <em>(string)</em>
			<ul>
				<li>A sufix of the names of the global content block that will not be shown.<br />
				Possible value can be any sign or text.</li>
			</ul>
			<br />
		</li>
		<li>
			<tt>incl_prefix</tt> <em>(string)</em>
			<ul>
				<li>A prefix of the names of the global content block that will be shown.<br />
				Possible value can be any sign or text.</li>
			</ul>
			<br />
		</li>
		<li>
			<tt>incl_sufix</tt> <em>(string)</em>
			<ul>
				<li>A sufix of the names of the global content block that will be shown.<br />
				Possible value can be any sign or text.</li>
			</ul>
			<br />
		</li>
		<li>
			<tt>output</tt> <em>(string)</em>
			<ul>
				<li>A property of the global content blocks that will be printed out.<br />
				Possible values are <tt>content, name, id, owner, modified_date, full_object</tt><br />
				Default is <tt>content</tt>
				</li>
			</ul>
			<br />
		</li>
		<li>
			<tt>sort_by</tt> <em>(string)</em>
			<ul>
				<li>Specify by what property the global content blocks will be sorted.<br />
				Possible values are <tt>content, name, id, owner, modified_date</tt>.<br />
				Default is <tt>id</tt>
				</li>
			</ul>
			<br />
		</li>
		<li>
			<tt>sort_order</tt> <em>(string)</em>
			<ul>
				<li>Specify if sorted ascending or descending.<br />
				Possible values are <tt>asc, desc</tt>.<br />
				Default is <tt>asc</tt>
				</li>
			</ul>
			<br />
		</li>
		<li>
			<tt>assign</tt> <em>(string)</em>
			<ul>
				<li>Use this to assign the ouptut to a smarty variable.<br />
				Possible value can be any text (alpha numeric characters only).<br />
				Be sure not to override existing varnames.</li>
			</ul>
			<br />
		</li>
		<li>
			<tt>assign_as</tt> <em>(string)</em>
			<ul>
				<li>Use this to specify if all content blocks will be returned as text or as array.<br />
				Possible values can be <tt>string, array</tt>.<br />
				If array is used you should also use the param assign.</li>
			</ul>
			<br />
		</li>
	</ul>';
}

function smarty_cms_about_function_get_gcb_list()
{
	?>
	<p>Author: Georg Busch (NaN) &lt;georg.busch@gmx.net&gt;</p>
	<p>Version: 1.0</p>
	<?php
}
?>

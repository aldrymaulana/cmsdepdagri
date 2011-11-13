<?php

	/*
		Based on MC Forms
		This class aim to handle CMS Forms very differently.
		
		Author: Jean-Christophe Cuvelier <cybertotophe@gmail.com>
		Copyrights: Jean-Christophe Cuvelier - Morris & Chapman Belgium - 2010
		Licence: GPL		
	
	*/

class jQueryForm	//extends	CmsObject
{
	protected $module_name;
	protected $id; // The form ID
	protected $returnid;
	protected $action;	
	
	protected $widgets = array(); // The form widgets
	protected $hidden_widgets = array(); // Specific widgets shown on the begin;
	
	protected $labels = array(
		'submit' => 'Submit',
		'apply' => 'Apply',
		'cancel' => 'Cancel',
		'next' => 'Next',
		'previous' => 'Previous'
		);
		
	protected $active_buttons = array('cancel','submit');
	protected $form_errors = array(); 
	
	public function __construct($module_name, $id, $action, $returnid)
	{
		$this->module_name = $module_name;
		$this->id = $id;
		$this->returnid = $returnid;
		$this->action = $action;
	}
	
	// private static function getNewId()
	// {
	// 	global $jQueryForms;
	// 	$newid = substr(md5(time()),0,6);
	// 	if (!isset($jQueryForms[$newid]))
	// 	{
	// 		$jQueryForms[$newid] = true; //new self($newid);
	// 		return $newid;
	// 	}
	// 	else
	// 	{
	// 		return self::getNewId();
	// 	}
	// }
	
	const VERSION = '0.0.3';
	
	public function getHeaders()
	{
		global $gCms;
		if (isset($gCms->modules[$this->module_name]['object']))
		{			
			$html = $gCms->modules[$this->module_name]['object']->CreateFormStart($this->id, $this->action, $this->returnid);
			foreach($this->hidden_widgets as $widget)
			{
				$html .= $widget;
			}			
			return $html;
		}
		return null;
	}
	
	public function getFooters()
	{
		global $gCms;
		if (isset($gCms->modules[$this->module_name]['object']))
		{			
			$html = $gCms->modules[$this->module_name]['object']->CreateFormEnd();
			return $html;
		}
		return null;
	}
	
	public function setSubmitLabel($label)
	{
		$this->labels['submit'] = $label;
	}
	
	public function setLabel($label, $title)
	{
		$this->labels[$label] = $title;
	}
	
	
	public function setButtons($buttons = array())
	{
		if (is_array($buttons))	$this->active_buttons = $buttons;
	}
	
	public function getButtons()
	{
		$html = '';
		foreach($this->active_buttons as $button)
		{
			switch($button)
			{
				case 'submit':
					$html .= $this->getSubmit();
					break;
				case 'apply':
					$html .= $this->getApply();
					break;
				case 'cancel':
					$html .= $this->getCancel();
					break;
				case 'next':
					$html .= $this->getNext();
					break;
				case 'previous':
					$html .= $this->getPrevious();
					break;
				default:
					break;
			}
		}
		
		return $html;
	}
	
	public function getSubmit()
	{
		global $gCms;
		if (isset($gCms->modules[$this->module_name]['object']))
		{			
			$html = $gCms->modules[$this->module_name]['object']->CreateInputSubmit($this->id, 'submit', $this->labels['submit']);
			return $html;
		}
		return null;
	}
	
	public function getApply()
	{
		global $gCms;
		if (isset($gCms->modules[$this->module_name]['object']))
		{			
			$html = $gCms->modules[$this->module_name]['object']->CreateInputSubmit($this->id, 'apply', $this->labels['apply']);
			return $html;
		}
		return null;
	}
	
	public function getCancel()
	{
		global $gCms;
		if (isset($gCms->modules[$this->module_name]['object']))
		{			
			$html = $gCms->modules[$this->module_name]['object']->CreateInputSubmit($this->id, 'cancel', $this->labels['cancel']);
			return $html;
		}
		return null;
	}
	
	public function getNext()
	{
		global $gCms;
		if (isset($gCms->modules[$this->module_name]['object']))
		{			
			$html = $gCms->modules[$this->module_name]['object']->CreateInputSubmit($this->id, 'next', $this->labels['next']);
			return $html;
		}
		return null;
	}
	
	public function getPrevious()
	{
		global $gCms;
		if (isset($gCms->modules[$this->module_name]['object']))
		{			
			$html = $gCms->modules[$this->module_name]['object']->CreateInputSubmit($this->id, 'previous', $this->labels['previous']);
			return $html;
		}
		return null;
	}
	
	public function setWidget($name,$type,$settings = array())
	{
		$widget = new jQueryWidget($this->id,$this->module_name,$name,$type,$settings);
		if ($type == 'hidden')
		{
			$this->hidden_widgets[$name] = $widget;
		}
		else
		{
			$this->widgets[$name] = $widget;
		}
	}
	
	public function getWidgets()
	{
		return $this->widgets;
	}
	
	public function getWidget($name)
	{
		if (isset($this->widgets[$name]))
		{
			return $this->widgets[$name];
		}
		elseif (isset($this->hidden_widgets[$name]))
		{
			return $this->hidden_widgets[$name];
		}
		else
		{
			return null;
		}
	}
	
	public function showWidgets($template=null)
	{
		$html = '';
		foreach($this->widgets as $widget)
		{
			if (!is_null($template))
			{
				$text = str_replace('%LABEL%', $widget->getLabel(), $template);
				$text = str_replace('%INPUT%', $widget->getInput(), $text);
				$text = str_replace('%ERRORS%', $widget->showErrors(), $text);
				$html .= $text;
			}
			else
			{
				$html .= $widget;				
			}
		}
		return $html;
	}
	
	public function noError()
	{
		if (count($this->form_errors) == 0)
		{
			return true;
		}
		return false;
	}
	
	public function getErrors()
	{
		return $this->form_errors;
	}
	
	public function showErrors()
	{
		$html = '';
		if(count($this->form_errors) > 0)
		{
			$html .= '<ul class="errors">';
			foreach($this->form_errors as $priority => $errors)
			{
				$html .= '<li><em>'.$priority.'</em><ul>';
				foreach($errors as $error)
				{
					$html .= '<li>'.$error.'</li>';
				}				
				$html .= '</ul></li>';
			}
			$html .= '</ul>';
		}
		return $html;
	}
	
	public function setError($message,$priority='default')
	{
		$this->form_errors[$priority][] = $message;
	}
}

class jQueryWidget	//extends CmsObject
{
	protected $id; // The form ID
	protected $module_name;
	protected $name; // The input name
	protected $type;
	protected $input;
	protected $values = array();
	protected $settings = array();
	protected $form_errors;
	
	public function __construct($id, $module_name, $name, $type,$settings=array())
	{
		$this->id = $id;
		$this->module_name = $module_name;
		$this->name = $name;
		$this->type = $type;
		$this->settings = $settings;
		$this->initValues();
		if(
			(isset($this->settings['object']))
			||
			(isset($this->settings['preference']))
		)
		{
			$this->saveValues();
		}
	}
		
	public function __toString()
	{
		if ($this->type == 'hidden')
		{
			return $this->getInput();
		}
		else
		{
			$html = '
			<div class="form_widget">
				<div class="form_label"><label for="'.$this->id.$this->name.'">'.$this->getLabel().'</label></div>';						
			if (count($this->errors))
			{
			$html .= '<div class="form_errors">' . $this->showErrors() . '</div>';
			}				
			$html .= '
				<div class="form_input">'.$this->getInput().'</div>
			</div>';
			return $html;
		}
	}
	
	public function initValues()
	{
		switch($this->type)
		{
			case 'checkbox':
				if(
					!isset($_REQUEST[$this->id.$this->name])
					&&
					(
						isset($_REQUEST[$this->id.'submit'])
						||
						isset($_REQUEST[$this->id.'apply'])
					)
					
				)
				{
					// Case when checkbox is unchecked and form is submitted, we should empty the value
					$this->values[]=array();
					break;
				}
			default:
				if (isset($_REQUEST[$this->id.$this->name]))
				{
					$values = $_REQUEST[$this->id.$this->name];
				}
				elseif(isset($this->settings['value']))
				{
					$values = $this->settings['value'];
				}
				elseif(isset($this->settings['object']) && !isset($_REQUEST[$this->id.'submit']) && !isset($_REQUEST[$this->id.'apply']))
				{
					$values = $this->fetchValues();
				}
				elseif(isset($this->settings['preference']))
				{
					global $gCms;
					$values = explode('|',$gCms->modules[$this->module_name]['object']->getPreference($this->settings['preference']));
				}
				elseif(isset($this->settings['default_value']))
				{
					$values = $this->settings['default_value'];
				}
				
				if (!empty($values))
				{
					if (is_array($values)) 
					{
						$this->values = $values;
					}	
					else
					{
					$this->values[] = $values;
					}
				}
				break;
		}
		
	}
	
	protected function saveValues()
	{
		if(isset($this->settings['object']) && is_object($this->settings['object']))
		{
			// This do not save the object state, so we have to do it outside the form
			if(method_exists($this->settings['object'], 'set'))
			{
				if (isset($this->settings['field_name']))
				{
					$name = $this->settings['field_name'];
				}
				else
				{
					$name = $this->name;
				}
				$this->settings['object']->set($name, implode(',', $this->values));
			}
		}
		
		if(isset($this->settings['preference']) && !isset($_REQUEST[$this->id.'cancel']))
		{
			// Check if there is no cancel button first because we save the value directly !
			global $gCms;
			$gCms->modules[$this->module_name]['object']->setPreference($this->settings['preference'], implode('|', $this->values));
		}
	}
	
	protected function fetchValues()
	{
		if(isset($this->settings['object']) && is_object($this->settings['object']))
		{
			if(method_exists($this->settings['object'], 'get'))
			{
				if (isset($this->settings['field_name']))
				{
					$name = $this->settings['field_name'];
				}
				else
				{
					$name = $this->name;
				}
				$values = explode(',',$this->settings['object']->get($name));
				return $values;
			}
		}
	}
	
	public function setValues($values)
	{
		if (is_array($values))
		{
			$this->values = $values;
		}
		else
		{
			$this->values = array($values);
		}
	}
	
	public function getValues()
	{
		return $this->values;
	}
	
	public function getErrors()
	{
		return $this->errors;
	}
	
	public function showErrors()
	{
		$html = '';
		if (count($this->errors))
		{
			$html .= '<ul>';
			foreach($this->errors as $key => $value)
			{
				$html .= '<li><strong>'.$key.':</strong> '.$value.'</li>';
			}
			$html .= '</ul>';
		}
		return $html;
	}
	
	public function getInput()
	{	
		if (!empty($this->input))
		{
			return $this->input;
		}
		
		global $gCms;
		if (isset($gCms->modules[$this->module_name]['object']))
		{
			switch($this->type)
			{
				case 'text':
					return $gCms->modules[$this->module_name]['object']->CreateInputText($this->id, $this->name, implode(',',$this->values), isset($this->settings['size'])?$this->settings['size']:80);				
				case 'hidden':
					return $gCms->modules[$this->module_name]['object']->CreateInputHidden($this->id, $this->name, implode(',',$this->values));
				case 'select':
					return self::CreateInputSelectList($this->id, $this->name, isset($this->settings['values'])?$this->settings['values']:array(), $this->values, 1, '', false);
				case 'checkbox':
					return $gCms->modules[$this->module_name]['object']->CreateInputCheckbox($this->id, $this->name, '1', implode(',',$this->values));
				case 'textarea':
					if (isset($this->settings['show_wysiwyg']) && $this->settings['show_wysiwyg'] == true)
					{
						return $gCms->modules[$this->module_name]['object']->CreateTextArea(true, $this->id, implode(',',$this->values), $this->name);						
					}
					else
					{
						return $gCms->modules[$this->module_name]['object']->CreateTextArea(false, $this->id, implode(',',$this->values), $this->name);
					}
				case 'time':
					return self::CreateTimeSelect($this->id,$this->name,$this->values);
				case 'date':
					return self::CreateDateSelect($this->id,$this->name,$this->values, $this->settings);
				default:
					return null;
			}
		}
		return null;
		
	}
	
	public function getLabel()
	{
		global $gCms;
		if (isset($gCms->modules[$this->module_name]['object']))
		{
			return $gCms->modules[$this->module_name]['object']->lang('form_'.$this->name);
		}
		return null;
	}
	
	// Tools
	
	public static function createDateSelect($id,$name,$values,$settings)
	{
		$start_year = isset($settings['start_year'])?$settings['start_year']:date('Y');
		$number_years = isset($settings['number_years'])?$settings['number_years']:20;
		$end_year = $start_year + $number_years;
		
		$year = self::CreateInputSelectList($id,$name.'[0]',self::CreateNumberList($end_year,$start_year),array($values[0]),1,'',false);
		$month = self::CreateInputSelectList($id,$name.'[1]',self::CreateNumberList(12,1),array($values[1]),1,'',false);
		$day = self::CreateInputSelectList($id,$name.'[2]',self::CreateNumberList(31,1),array($values[2]),1,'',false);
		return $year . ' / ' . $month . ' / ' . $day;
	}
	
	public static function CreateTimeSelect($id,$name,$values)
	{
		$hours = self::CreateInputSelectList($id,$name.'[0]',self::CreateNumberList(23),array($values[0]),1,'',false);
		$minutes = self::CreateInputSelectList($id,$name.'[1]',self::CreateNumberList(59),array($values[1]),1,'',false);
		$seconds = self::CreateInputSelectList($id,$name.'[2]',self::CreateNumberList(59),array($values[2]),1,'',false);
		return $hours . ' : ' . $minutes . ' : ' . $seconds;
	}

	public static function CreateNumberList($end, $start=0)
	{
		if (($end < 0)||(!is_numeric($end))) $end = 1;
		$list = array();
		for ($i = $start; $i <= $end; $i++)
		{
			$list[$i] = (string)$i;
		}
		return $list;
	}
	
	public static function CreateInputSelectList($id, $name, $items, $selecteditems=array(), $size=3, $addttext='', $multiple = true)
	{
	  $id = cms_htmlentities($id);
	  $name = cms_htmlentities($name);
	  $size = cms_htmlentities($size);
	  $multiple = cms_htmlentities($multiple);
	
		$text = '<select name="'.$id.$name.'"';
		if ($addttext != '')
		{
			$text .= ' ' . $addttext;
		}
		if( $multiple )
		  {
			$text .= ' multiple="multiple" ';
		  }
		  
		  if ($size > 1)
		  {
		  	$text .= ' size="'.$size.'"';
		  }
		
		$text .= '>';
		
		$count = 0;
		foreach ($items as $key=>$value)
		{
		  $value = cms_htmlentities($value);
	
			$text .= '<option value="'.$key.'"';
			if (in_array($key, $selecteditems))
			{
				$text .= ' ' . 'selected="selected"';
			}
			$text .= '>';
			$text .= $value;
			$text .= '</option>';
			$count++;
		}
		$text .= '</select>'."\n";
	
		return $text;
	}
	
	function temp()
	{
		$widget['label'] = $this->lang('form_'.$name);
		$widget['value'] = '';
		
		switch($type)
		{
			case 'text':
				$widget['value'] = isset($params[$name])?$params[$name]:isset($settings['default_value'])?$settings['default_value']:'';
				$widget['input'] = $this->CreateInputText($form_id, $name, $widget['value'], isset($settings['size'])?$settings['size']:80);
				break;
		}
		
		$form[$name] = $widget;
		return $form;
	}
	
}


<?php

class cgfb_comment
{
  private $_data;
  private $_fields;

  private static $_keys = array('id','key1','key2','key3','rating','title','data','status','author_name','author_email','author_ip','author_notify','admin_notes',
				'notified','created','modified','origurl');

  public function __get($key)
  {
    if( in_array($key,self::$_keys) && is_array($this->_data) && isset($this->_data[$key]) )
      {
	return $this->_data[$key];
      }
  }


  public function __set($key,$value)
  {
    if( in_array($key,self::$_keys) )
      {
	if( !is_array($this->_data) ) $this->_data = array();

	$this->_data[$key] = $value;
      }
  }


  public function validate()
  {
    if( !isset($this->_data['status']) )
      {
	$text = $this->data .' '.$this->title.' '.$this->author_name;
	if( is_array($this->_fields) )
	  {
	    $tfields = cgfb_comment_ops::get_fielddefs();
	    foreach( $this->_fields as $fid => $value )
	      {
		if( !isset($tfields[$fid]) ) continue;
		if( $tfields[$fid]['type'] != CGFEEDBACK_TYPE_TEXT && $tfields[$fid]['type'] != CGFEEDBACK_TYPE_TEXTAREA )
		  continue;

		$text .= ' '.$value;
	      }
	  }
	$this->status = (cgfb_comment_ops::text_needs_moderation($text)) ? CGFEEDBACK_STATUS_DRAFT : CGFEEDBACK_STATUS_PUBLISHED;
      }

    return TRUE;
  }


  public function save()
  {
    if( !$this->validate() ) return FALSE;

    if( is_null($this->id) )
      {
	return cgfb_comment_ops::insert($this);
      }
    else
      {
	return cgfb_comment_ops::update($this);
      }
  }


  public function from_array($data)
  {
    if( !is_array($this->_data) ) $this->_data = array();
    foreach( self::$_keys as $one )
      {
	if( isset($data[$one]) )
	  {
	    $this->_data[$one] = $data[$one];
	  }
      }
  }


  public function get_field_by_id($fid)
  {
    if( is_array($this->_fields) && isset($this->_fields[(int)$fid]) )
      {
	return $this->_fields[(int)$fid];
      }
  }


  public function set_field_by_id($fid,$value)
  {
    if( !is_array($this->_fields) ) $this->_fields = array();
    $this->_fields[(int)$fid] = $value;
  }


  public function load_fields_from_array($data)
  {
    if( is_array($data) )
      {
	for( $a = 0; $a < count($data); $a++ )
	  {
	    $r = $data[$a];
	    if( is_array($r) && isset($r['value']) && isset($r['field_id']) && isset($r['comment_id']) && $r['comment_id'] == $this->id )
	      {
		$v = $r['value'];
		if( cgfb_comment_ops::get_fielddef_type($r['field_id']) == 4 )
		  {
		    $v = explode(',',$v);
		  }
		$this->set_field_by_id($r['field_id'],$v);
	      }
	  }
      }
  }

  public function get_fields()
  {
    if( is_array($this->_fields) )
      {
	return array_keys($this->_fields);
      }
  }
} // end of class

?>
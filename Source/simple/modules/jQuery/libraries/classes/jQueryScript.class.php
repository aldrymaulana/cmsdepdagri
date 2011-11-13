<?php

	/*
	 * jQuery Code
	 * Copyrights: Jean-Christophe Cuvelier - Morris & Chapman Belgium
	 * Under GPL Licence
	 */
	
	class jQueryScript extends CmsObject
	{
		protected $id;
		protected $position;
		protected $name;
		protected $code;
		protected $load_default;
		protected $in_header;
		protected $required_plugins;
		
		const DB_NAME  = 'module_jquery_scripts';
		
		public function __toString()
		{
			return $this->getName();
		}
		
		public function getId()
		{
			return $this->id;
		}
		
		public function setId($value)
		{
			$this->id = $value;
		}
	
		public function getPosition()
		{
			if (is_null($this->position))
			{
				$this->position = self::retrieveNextPosition();
			}
			return $this->position;
		}
		
		public static function retrieveNextPosition()
		  {
		    $last_script = self::doSelectOne(array('order_by' => array('position desc')));

		    if ($last_script)
		    {
		      return $last_script->getPosition()+1;
		    }
		    else
		    {
		      return 1;
		    }
		  }

		  public function getNextItem()
		  {
		    $document =  self::doSelectOne(array('where' => array('position' => $this->position+1)));

		    if ($document)
		    {
		      return $document;
		    }
		    else 
		    {
		      return false;
		    }
		   }

		  public function getPreviousItem()
		  {
		    $document =  self::doSelectOne(array('where' => array('position' => $this->position-1)));

		    if ($document)
		    {
		      return $document;
		    }
		    else 
		    {
		      return false;
		    }
		   }

		   public function moveUp()
		   {
		    $this->switchPosition($this->getPreviousItem());
		   }

		   public function moveDown()
		   {
		    $this->switchPosition($this->getNextItem());
		   }

		   protected function switchPosition($item)
		   {
		      if($item)
		      {
		        $current_position = $this->getPosition();
		        $this->setPosition($item->getPosition());
		        $item->setPosition($current_position);
		        $this->save();
		        $item->save();
		      }
		   }
		
		public function setPosition($value)
		{
			$this->position = $value;
		}
	
		public function getName()
		{
			return $this->name;
		}
		
		public function setName($value)
		{
			$this->name = $value;
		}
	
		public function getCode()
		{
			return $this->code;
		}
		
		public function setCode($value)
		{
			$this->code = $value;
		}
	
		public function getLoadDefault()
		{
			return (int) $this->load_default;
		}
		
		public function setLoadDefault($value)
		{
			$this->load_default = $value;
		}
		
		public function getInHeader()
		{
			return (int) $this->in_header;
		}
		
		public function setInHeader($value)
		{
			$this->in_header = $value;
		}
		public function getRequiredPlugins()
		{
			return $this->required_plugins;
		}
		
		public function setRequiredPlugins($value)
		{
			$this->required_plugins = $value;
		}
		
		public function set($name, $value)
		{
			$this->$name = $value;
		}	
		
		public function get($name)
		{
			return $this->$name;
		}
	
	  // DB
	
	 	public function PopulateFromDb($row)
		{
		  $this->id = $row['id'];
		  $this->position = $row['position'];
  		  $this->name = $row['name'];
  		  $this->code = $row['code'];
  		  $this->load_default = $row['load_default'];
  		  $this->in_header = $row['in_header'];
  		  $this->required_plugins = $row['required_plugins'];
		}
	
		public function save()
	  {
	    // Upgrade or Insert ?
	    if (!empty($this->id))
	    {
	      $this->update();
	    }
	    else
	    {     
	      $this->insert();
	    }   

	  }
		
	protected function update()
	{
    	$db =& $this->GetDb();
	
	    $query = 'UPDATE  ' . cms_db_prefix() .  self::DB_NAME . ' 

	      SET ';

	      $query .= ' position = ?, name = ?, code = ?, load_default = ?, in_header = ?, required_plugins = ?';

	      $query .= '

	      WHERE

	      id = ?  ';


	      $result = $db->Execute($query,
	          array(
	             $this->getPosition(), 
	             $this->getName(), 
	             $this->getCode(), 
	             $this->getLoadDefault(), 
	             $this->getInHeader(), 
	             $this->getRequiredPlugins(), 
	
	             $this->getId()
	          )
	        );        
	
	        //return true;
	  }

		protected function insert()
	  	{
	    	$db =& $this->GetDb();

	    	$query = 'INSERT INTO ' . cms_db_prefix() .  self::DB_NAME .  ' 

	      	SET ';
			$query .= ' position = ?, name = ?, code = ?, load_default = ?, in_header = ?, required_plugins = ?';
		
			$db->Execute($query,
	          array(
	             $this->getPosition(), 
	             $this->getName(), 
	             $this->getCode(), 
	             $this->getLoadDefault(), 
	             $this->getInHeader(), 
	             $this->getRequiredPlugins()
	          )
	        );

			$this->setId($db->Insert_ID());
	    	return true;    
	  	}

		public static function retrieveByPk($id)
	  	{
	    	return self::doSelectOne(array('where' => array('id' => $id)));    
	  	}

	  public static function doSelectOne($params = array())
	  {
	    $items = self::doSelect($params);
	    if (!empty($items))
	    {
				//$items = array_values($items);
	      return $items[0];
	    }
	    else 
	    {
	      return null;
	    }   
	  }

	  public static function doSelect($params = array())
	  {
		$dbresult = self::executeQuery(self::DB_NAME, $params);
	    $items = array();
	    if ($dbresult && $dbresult->RecordCount() > 0)
	    {
	      while ($dbresult && $row = $dbresult->FetchRow())
	      {
	        $item = new self();
	        $item->PopulateFromDb($row);
	        $items[] = $item;
	      }
	    }

	    return  $items;   
	  }
		
	public static function executeQuery($db_name, $params = array())
	{
		$instance = new self();

		$db =& $instance->GetDb();

		$query = 'SELECT * FROM ' . cms_db_prefix() . $db_name;

		$values = array();

		if (isset($params['where']))
		{

		  $fields = array();
		  foreach ($params['where'] as $field => $value) 
		  {
		    $fields[] = $field . ' =  ?';
		    $values[] = $value;
		  }

		  $query .= ' WHERE ' . implode(' AND ', $fields);
		} 

		if(isset($params['order_by']))
		{
		 $query .= ' ORDER BY ' . implode(', ' , $params['order_by']);
		}
		else
		{
		  $query .= ' ORDER BY position';
		}

		return $db->Execute($query, $values);		
	}

	  public function delete()
	  {   
	    $db =& $this->GetDb();
	    $query = 'DELETE FROM '. cms_db_prefix() . self::DB_NAME;
	    $query .= ' WHERE id = ?';
	    $db->Execute($query, array($this->id));   
	  }

	}
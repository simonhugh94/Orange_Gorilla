<?php
class Connection{    
    private $HOST = "localhost";
    private $DATABASE = "Orange_Gorilla";
    private $connection;
    protected $user = null;
    protected $password = null;
    
    public function __construct(){}
    
    public function setUser($user){
        $this->user = $user;
    }
    
    public function getUser(){
        return $this->user;
    }
    
    public function setPassword($password){
        $this->password = $password;
    }
    
    public function getPassword(){
        return $this->password;
    }
    
    public function connect(){
        $this->connection = mysqli_Connect($this->HOST, $this->user, $this->password, $this->DATABASE);
        
        if (MySqli_Connect_errno($this->connection)){
            throw new Exception("Connection.class: Failed to connect to MySql: " . MySqli_Connect_Error());
        }
        
		$this->query("SET NAMES utf8;SET CHARACTER SET utf8;");
    }
    
    public function close(){
        mysqli_Close($this->connection);
    }
    
    /*
     * Query attributed and functions
     */
    public $result;
    
    public function getNumberOfRows(){
        return $this->result->num_rows;
    }
    
    public function startTransaction(){
		$this->query("START TRANSACTION;");
	}
	
	public function rollback(){
		$this->query("ROLLBACK;");
	}
	
	public function commit(){
		$this->query("COMMIT;");
	}
    
    public function query($sql){
        $this->result = mysqli_query($this->connection, $sql);
    }
    
    public function getID(){
        return mysqli_insert_id($this->connection);
    }
    
    public function isError(){
        if(mysqli_error($this->connection) == ""){
            return false;
        }else{
            return true;
        }
    }
    
    public function getError(){
        return mysqli_error($this->connection);
    }
    
    public function loadObjectList(){
        $obj = null;
        if($this->result){
            $obj = mysqli_fetch_assoc($this->result);
        }
        return $obj;
    }
    
    public function loadObjectRows(){
        $obj = array();
        if($this->result){
            while($row = mysqli_fetch_assoc($this->result)){
                $obj[] = $row;
            }
        }
        return $obj;
    }
    
    public function escapeString($string){
        return mysqli_real_escape_string($this->connection, $string);
    }
}
?>

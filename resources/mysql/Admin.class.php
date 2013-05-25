<?php
    require_once("Connection.class.php");

    class Admin extends Connection{
        protected $user = "gorilla";
        protected $password = "orange";
    }
    
    require_once("Singleton.class.php");
    $database =& singleton::getInstance('Admin');
     
    try{
        $database->connect();
    }catch(Exception $e){
        echo $e->getMessage();
    }
?>
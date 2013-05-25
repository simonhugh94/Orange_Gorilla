<?php
class Singleton{
    static function &getInstance($class){
        static $instances = array();
        
        if(!array_key_exists($class, $instances)){
            $instances[$class] = new $class;
        }
        
        $instances =& $instances[$class];
        
        return $instances;
    }
}
?>

<?php

class Connection {
    public function get_connection() { 
        // $user = "ay000543_promain";
        $user = "root";
        // $pass = "REvipezu69";
        $pass = "root";
        $host = "localhost";
        // $db = "ay000543_promain";
        $db = "promain";
        $connection = new PDO(
            "mysql:host={$host}; 
            dbname={$db};", 
            $user, 
            $pass, 
            array(
                PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"
                )
            );
        return ($connection);
    }
}
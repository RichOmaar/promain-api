<?php

class Connection {
    public function get_connection() { 
        $user = "root";
        $pass = "root";
        $host = "localhost";
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
        
        // $user = "legendar_promain";
        // $pass = "Juanomar123";
        // $host = "127.0.0.1";
        // $db = "legendar_promain";
        // $connection = new PDO(
        //     "mysql:host={$host}; 
        //     dbname={$db};", 
        //     $user, 
        //     $pass, 
        //     array(
        //         PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8"
        //         )
        //     );
        // return ($connection);
    }
}
<?php
// Importamos la librería para utilizar JSON Web Tokens.
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
require_once $_SERVER['DOCUMENT_ROOT'].'/GitHub/promain-api/library/php-jwt-master/src/JWT.php';
// require_once $_SERVER['DOCUMENT_ROOT'].'/library/php-jwt-master/src/JWT.php';
// require_once 'vendor/autoload.php';

use Firebase\JWT\JWT;

class Environment
{

    // Nunca revelar esta clave. Utilizaremos esta para el servidor de pruebas únicamente. La de producción la generaremos después.
    public static $key = 'D0ax2Pjtf2Uu6EhbzMAYuuq68ixRKvPuoRTUiWTZoxKmV07D4X3Ny9HWcpNqaWPW';

    public static function getPrivateKey()
    {
        return Environment::$key;
    }

    public static function encodeUser($idUsuario)
    {
        // Generamos el token y lo pasamos como idUsuario
        $time = time();
        $token = array(
            'iat' => $time, // Tiempo que inició el token
            'exp' => $time + ((60 * 60) * 24) * 30, // Tiempo que expirará el token (+1 hora)                                                                
            'idUsuario' => $idUsuario, //Informacion de usuario
        );
        // Codificamos el Token
        $jwt = JWT::encode($token, Environment::$key);
        return $jwt;
    }

    public static function decodeUser($jwt)
    {
        // Decodificamos el Token
        $decoded = JWT::decode($jwt, Environment::$key, array('HS256'));
        return $decoded;
    }
}

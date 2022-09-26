<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

require '../model/clients.model.php';

$clients = Clients::mdlGetClients();

if (!$clients) {
    echo '{"response":"error"}';
} else {
    echo '{"response":"success","data":' . json_encode($clients) . '}';
}
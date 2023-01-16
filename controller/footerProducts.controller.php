<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

require '../model/infoProduct.model.php';

$topProducts = InfoProduct::mdlGetTopProducts();

if(!$topProducts) {
    echo '{"response":"error"}';
} else {
    echo '{"response":"success","data":'.json_encode($topProducts).'}';
}
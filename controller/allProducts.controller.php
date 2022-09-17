<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

require '../model/infoProduct.model.php';

$allProducts = InfoProduct::mdlGetAllProducts();

if(!$allProducts) {
    echo '{"response":"error"}';
} else {
    echo '{"response":"success","data":'.json_encode($allProducts).'}';
}
<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

require '../model/infoProduct.model.php';

if (isset($_POST['link'])) {

    $link = $_POST['link'];
    $allInfo = array();

    $product = InfoProduct::mdlGetProduct($link);

    if (!$product) {
        echo '{"response":"error"}';
    } else {
        $idProduct = $product['id_product'];

        $images = InfoProduct::mdlGetImages($idProduct);
        $bullets = InfoProduct::mdlGetBulletList($idProduct);
        $certifications = InfoProduct::mdlGetCertifications($idProduct);

        if (!$images) {
            $images = [];
        }

        if (!$bullets) {
            $bullets = [];
        }

        if (!$certifications) {
            $certifications = [];
        }

        $allInfo['mainData'] = $product;
        $allInfo['bullets'] = $bullets;
        $allInfo['images'] = $images;
        $allInfo['certifications'] = $certifications;

        echo '{"response":"success","data":' . json_encode($allInfo) . '}';
    }
}

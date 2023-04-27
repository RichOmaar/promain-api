<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');
// require '../model/environment.php';
require '../model/form.model.php';

$all = Form::mdlGetAll();

if (!$all) {
    echo '{"response":"error"}';
} else {
    echo '{"response":"success","data":' . json_encode($all) . '}';
}

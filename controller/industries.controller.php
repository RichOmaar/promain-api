<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

require '../model/industries.model.php';

if (isset($_POST['industryName'])) {
    $industryName = $_POST['industryName'];

    if (strlen($industryName) > 0) {
        $details = Industries::mdlGetIndustry($industryName);

        if (!$details) {
            echo '{"response":"error"}';
        } else {
            $industryId = $details['id_industry'];

            $subindustries = Industries::mdlGetSubindustries($industryId);

            if (!$subindustries) {
                echo '{"response":"error"}';
            } else {
                $industryProducts = Industries::mdlGetIndustryProducts($industryId);

                if (!$industryProducts) {
                    echo '{"response":"error"}';
                } else {
                    echo '{"response":"success",
                        "details":' . json_encode($details) . ',
                        "subindustries":' . json_encode($subindustries) . ',
                        "products":' . json_encode($industryProducts) . '
                    }';
                }
            }
        }
    }
} else {
    echo '{"response":"error"}';
}

<?php

header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');

require '../model/form.model.php';
require '../model/mail.model.php';

if (isset($_POST['name']) && isset($_POST['phone']) && isset($_POST['email']) && isset($_POST['message'])) {

    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    $formAdded = Form::mdlAddForm($name, $phone, $email, $message);

    if ($formAdded) {

        $sent = Mailing::mdlSendEmail($name, $email, $phone, $message);

        echo (!$sent)? '{"response":"error"}' : '{"response":"success"}';

    } else {
        echo '{"response":"error"}';
    }
} else {
    echo '{"response":"error_post"}';
}

<?php

iconv_set_encoding("internal_encoding", "UTF-8");

class Mailing
{

    public static function mdlSendEmail($name, $email, $phone, $message)
    {

        $mailTo = 'email.test@promainindustrial.com.mx';
        $subject = 'Test';

        $body =  'Nuevo correo de ' . $name . ' | Correo: ' . $email . ' | Teléfono: ' . $phone . ' | Mensaje: ' . $message . '.';

        $headers = 'From:no-reply@promainindustrial.com.mx';

        if (mail(utf8_decode($mailTo), utf8_decode($subject), utf8_decode($body), utf8_decode($headers) . "\nContent-Type: text/plain; charset=UTF-8\nContent-Transfer-Encoding: 8bit\n")) {
            return true;
        } else {
            return false;
        }
    }
}

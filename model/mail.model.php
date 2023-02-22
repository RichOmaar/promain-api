<?php

iconv_set_encoding("internal_encoding", "UTF-8");

class Mailing
{

    public static function mdlSendEmail($name, $email, $phone, $message)
    {

        // $mailTo = 'contacto@promainindustrial.com.mx';
        $mailTo = 'publicidad1z2x@gmail.com';
        $subject = 'Contacto web | PROMAIN';

        // $body =  'Nuevo correo de ' . $name . ' | Correo: ' . $email . ' | Teléfono: ' . $phone . ' | Mensaje: ' . $message . '.';
        $body =  '
        <table class="bg_color" style="border: 0; border-collapse: collapse; background-color: #abc4a9;" width="100%" cellspacing="0" cellpadding="0" border="0">
            <tbody>
                <tr>
                        <td class="gap" style="border-collapse: collapse; padding: 20px 20px;" align="center">
                                <table class="hero_button" style="border: 0; border-collapse: collapse;" width="560" cellspacing="0" cellpadding="0" border="0">
                                        <tbody>
                                                <tr>
                                                        <td class="wrapper" style="border-collapse: collapse; padding-top: 0px;">
                                                                <table class="hb_bgc" style="border: 0; border-collapse: collapse;" width="100%" cellspacing="0" cellpadding="0" border="0">
                                                                        <tbody>
                                                                                <tr>
                                                                                        <td class="wrapper" style="border-collapse: collapse; padding-top: 0px; padding: 0px;">
                                                                                                <table class="button" style="border: 0; border-collapse: collapse; width: 100%;" cellspacing="0" cellpadding="0" border="0">
                                                                                                        <tbody>
                                                                                                                <tr>
                                                                                                                        <td class="label"><img src="https://pro.kinesiuz.com/assets/logos/promain-negativo.png" alt="Logo PROMAIN" width="400" height="91" /></a></td>
                                                                                                                </tr>
                                                                                                        </tbody>
                                                                                                </table>
                                                                                        </td>
                                                                                </tr>
                                                                        </tbody>
                                                                </table>
                                                        </td>
                                                </tr>
                                        </tbody>
                                </table>
                                <table class="footer" style="border: 0; border-collapse: collapse;" width="560" cellspacing="0" cellpadding="0" border="0">
                                        <tbody>
                                                <tr>
                                                        <td class="wrapper" style="border-collapse: collapse; padding: 20px 0;" align="center">
                                                                <table class="f_text" style="border: 0; border-collapse: collapse;" cellspacing="0" cellpadding="0" border="0">
                                                                        <tbody>
                                                                                <tr>
                                                                                        <td class="content" >
                                                                                        Nombre del cliente: '.$name.'<br />
                                                                                        Correo del cliente: '.$email.'<br />
                                                                                        Teléfono del cliente: '.$phone.'<br />
                                                                                        Mensaje del cliente: '.$message.'
                                                                                        </td>
                                                                                </tr>
                                                                        </tbody>
                                                                </table>
                                                        </td>
                                                </tr>
                                        </tbody>
                                </table>
                        </td>
                    </tr>
            </tbody>
    </table>';

        $headers = 'From:'.$email;

        $mailHead = implode("\r\n", [
            ' From: '.$name,
            "Content-type: text/html; charset=utf-8"
        ]);

        if (mail(utf8_decode($mailTo), utf8_decode($subject), utf8_decode($body), utf8_decode($headers) . $mailHead)) {
            return true;
        } else {
            return false;
        }
    }
}

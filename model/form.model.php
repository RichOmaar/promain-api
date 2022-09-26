<?php

require_once 'connection.php';

class Form
{
    public static function mdlAddForm($name, $phone, $email, $message) {
        $db = new Connection();
        $conn = $db->get_connection();
        $sql = "INSERT INTO contact_form (`name`, `phone`, `email`, `message`) VALUES (:name, :phone, :email, :message)";

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':name', $name);
        $stmt->bindParam(':phone', $phone);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':message', $message);

        $stmt->execute();

        return ($stmt);
    }
}

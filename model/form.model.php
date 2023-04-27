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

    public static function mdlGetAll() {
        $db = new Connection();
        $conn = $db->get_connection();
        $sql = "SELECT * FROM contact_form ORDER BY date DESC";

        $stmt = $conn->prepare($sql);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }
}

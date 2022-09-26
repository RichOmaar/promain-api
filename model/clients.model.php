<?php

require_once 'connection.php';

class Clients {

    public static function mdlGetClients() {
        $db = new Connection();
        $conn = $db->get_connection();
        $sql = "SELECT * FROM clients";

        $stmt = $conn->prepare($sql);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }
}

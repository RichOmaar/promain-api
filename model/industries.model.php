<?php

require_once 'connection.php';

class Industries
{
    public static function mdlGetIndustry($name)
    {
        $db = new Connection();
        $conn = $db->get_connection();
        $sql = "SELECT * FROM industries WHERE name_url = :name_url";

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':name_url', $name);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetch(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetSubindustries($id_industry) {
        $db = new Connection();
        $conn = $db->get_connection();
        $sql = "SELECT * FROM subindustries WHERE id_industry = :id_industry";

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':id_industry', $id_industry);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetIndustryProducts($id_industry) {
        $db = new Connection();
        $conn = $db->get_connection();
        $sql = "SELECT * FROM industries_products WHERE id_industry = :id_industry";

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':id_industry', $id_industry);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }
}

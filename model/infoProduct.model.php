<?php

require_once 'connection.php';

class InfoProduct
{
    public static function mdlGetProduct($link)
    {
        $db = new Connection();
        $conn = $db->get_connection();
        $sql = "SELECT * FROM products WHERE url = :link";

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':link', $link);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetch(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetBulletList($idProduct)
    {
        $db = new Connection();
        $conn = $db->get_connection();
        $sql = "SELECT * FROM products_bullets WHERE id_product = :id_product";

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':id_product', $idProduct);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetImages($idProduct)
    {
        $db = new Connection();
        $conn = $db->get_connection();
        $sql = "SELECT * FROM images WHERE id_product = :id_product";

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':id_product', $idProduct);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetCertifications($idProduct)
    {
        $db = new Connection();
        $conn = $db->get_connection();
        $sql = "SELECT certifications.id_certification, certifications.name FROM certifications INNER JOIN product_certification ON certifications.id_certification = product_certification.id_certification INNER JOIN products ON product_certification.id_product = products.id_product WHERE products.id_product = :id_product";

        $stmt = $conn->prepare($sql);

        $stmt->bindParam(':id_product', $idProduct);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }

    public static function mdlGetAllProducts()
    {
        $db = new Connection();
        $conn = $db->get_connection();
        $sql = "SELECT products.id_product, products.productName, products.url as link, images.id_image, images.url FROM products INNER JOIN images on products.id_product = images.id_product";

        $stmt = $conn->prepare($sql);

        $stmt->execute();

        return ($stmt->rowCount() > 0) ? $stmt->fetchAll(PDO::FETCH_ASSOC) : false;
    }
}

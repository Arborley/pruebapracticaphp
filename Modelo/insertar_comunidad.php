<?php
require_once "../config.php";
// Función para insertar comunidad
function introducir_comunidad ($nombre, $direccion, $poblacion, $id_administrador){
    $pdo = conectarBD();
    $stmt = $pdo->query("INSERT INTO comunidades (Nombre, Dirección, Población, id_administrador) VALUES ('$nombre', '$direccion', '$poblacion', '$id_administrador')");
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}
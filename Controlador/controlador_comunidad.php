<?php
// Incluir la raiz
require_once "../config.php";

// Incluimos la funcion limpiar_dato
include MODEL_PATH . "limpiar_dato.php";

// incluimos la funcion introducir_usuario
include MODEL_PATH . "insertar_comunidad.php";

if($_SERVER["REQUEST_METHOD"]=="POST"){
    // Validar y limpiar datos
    $nombre=limpiar_dato($_POST['nombre']);
    $direccion=limpiar_dato($_POST['direccion']);
    $poblacion=limpiar_dato($_POST['poblacion']);       
    $id_administrador=limpiar_dato($_POST['id']);    
     // Validación básica
    if(empty($nombre) || empty($direccion) || empty($poblacion) || empty($id_administrador)) {
        echo'Todos los campos son obligatorios';
    } else {
        introducir_comunidad($nombre, $direccion, $poblacion, $id_administrador);
        header("Location: http://localhost:8080/pruebapracticaphp/Vistas/exito.html");
    }
}
<?php
// Creamos la funcion limpiar_dato
function limpiar_dato($data){
    $data=trim($data);
    $data=stripslashes($data);
    $data=htmlspecialchars($data);
    return $data;
}
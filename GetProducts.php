<?php

    require "connection.php";
    
    $sql = "SELECT * FROM Products";
    $query = $mysqli->query($sql);
    
    $datos = array();
    
    while($resultado = $query->fetch_assoc()) {
        $datos[] = $resultado;
    }
    
    echo json_encode(array("Products" => $datos));//"Ventas"
    
?>
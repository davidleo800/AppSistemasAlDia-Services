<?php

    require "connection.php";
    
    $sql = "SELECT * FROM Clients";
    $query = $mysqli->query($sql);
    
    $datos = array();
    
    while($resultado = $query->fetch_assoc()) {
        $datos[] = $resultado;
    }
    
    echo json_encode(array("Clients" => $datos));//"Ventas"
    
?>
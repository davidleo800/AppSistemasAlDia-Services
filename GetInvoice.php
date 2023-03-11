<?php

    require "connection.php";
    
    $sql = "SELECT * FROM Factura ORDER BY dateCurrent DESC";
    $query = $mysqli->query($sql);
    
    $datos = array();
    
    while($resultado = $query->fetch_assoc()) {
        $datos[] = $resultado;
    }
    
    echo json_encode(array("Invoice" => $datos));//"Ventas"
    
?>
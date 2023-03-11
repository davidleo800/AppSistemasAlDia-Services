<?php
	// Variables de la conexion a la DB
    $server = "localhost";
    $user = "id16726728_masteruser";
    $pass = "123456789Aldi@";
    $bd = "id16726728_appsistemasaldia";
    
    $mysqli = mysqli_connect ($server, $user, $pass, $bd);
    
    // Comprobamos la conexion
    if($mysqli->connect_errno) {
        die("Fallo la conexion");
    } else {
        echo "Conexion exitosa";
    }
    
?>
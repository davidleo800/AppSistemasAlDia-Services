<?php 
include 'connection.php';
$ID_CC = $_POST['Id_User'];
//$usu_password = $_POST['password'];
//$ID_CC = 1010;

$sentencia = $mysqli -> prepare("SELECT * FROM Users WHERE Id_User=?");
$sentencia -> bind_param('s', $ID_CC);
$sentencia -> execute();

$resultado = $sentencia -> get_result();
if ($fila = $resultado -> fetch_assoc()){
	echo json_encode($fila, JSON_UNESCAPED_UNICODE);
}
$sentencia -> close();
$mysqli -> close();

?>
<?php 
	include 'connection.php';
	$json = array();
	$Id_Client = $_POST['Id_Client'];
	$Nombre = $_POST['Nombre'];
	$tel1 = $_POST['tel1'];
	$tel2 = $_POST['tel2'];
	$direccion = $_POST['direccion'];
	$email = $_POST['email'];

	$insert = "INSERT INTO Clients (Id_Client, Nombre, tel1, tel2, direccion, email) VALUES ('$Id_Client', '$Nombre', '$tel1', '$tel2', '$direccion', '$email')";

	$resultado_insert = mysqli_query($mysqli, $insert);
	if($resultado_insert){
		echo "OK";
	}
	else{
		echo "Error";
	}

?>
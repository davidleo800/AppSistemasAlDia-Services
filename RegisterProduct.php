<?php 
	include 'connection.php';
	$json = array();
	$Id_Client = $_POST['Id_Client'];
	$products = $_POST['products'];
	$valor = $_POST['valor'];
	$observaciones = $_POST['observaciones'];
	$Id_user = $_POST['Id_user'];

	$insert = "INSERT INTO Factura (Id_Client, dateCurrent, products, valor, observaciones, Id_user) VALUES ('$Id_Client', NOW(), '$products', $valor, '$observaciones', '$Id_user')";

	$resultado_insert = mysqli_query($mysqli, $insert);
	if($resultado_insert){
		/*$select = "SELECT MAX(Id_fac) AS id FROM Factura";
		$rs = mysqli_query($mysqli, $select);
		if ($row = mysqli_fetch_row($rs)) {
		$id = trim($row[0]);
		$items []= array("Id" => $id, "status"=>"OK");
   		$versiones = array($items);
   		echo json_encode($items);  
		}*/
		echo "OK";
	}
	else{
		echo "Error";
	}

?>
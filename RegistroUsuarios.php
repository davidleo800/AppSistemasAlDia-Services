  <?php

	require "connection.php";
	$json = array();

	if ( isset($_GET["Id_User"]) && isset($_GET["Nombre"]) && isset($_GET["Apellido"]) && isset($_GET["type_user"]) ) {
		$Id_User = $_GET["Id_User"];
		$Nombre = $_GET["Nombre"];
		$Apellido = $_GET["Apellido"];
		$type_user = $_GET["type_user"];

		
		$insert = "INSERT INTO Users(Id_User, Nombre, Apellido, type_user) VALUE ('$Id_User', '$Nombre', '$Apellido', $type_user)";

		
		$resultado_insert = mysqli_query($mysqli, $insert);

		if($resultado_insert){
			$consulta = "SELECT * FROM Users WHERE Id_User = '{$Id_User}'";
			$resultado = mysqli_query($mysqli,$consulta);
			
			if($registro = mysqli_fetch_array($resultado)){
				$json['Users'][] = $registro;
			}
			mysqli_close($mysqli);
			echo json_encode($json);
		}
		else{
			$resulta["Id_User"] = 'No Registra';
			$resulta["Nombre"] = 'No Registra';
			$resulta["Apellido"] = 'No Registra';
			$resulta["type_user"] = 0;
			$json['Users'][]=$resulta;
			echo json_encode($json);
		}
		
	}
	else{
			$resulta["Id_User"] = 'WS no retorna';
			$resulta["Nombre"] = 'WS no retorna';
			$resulta["Apellido"] = 'WS no retorna';
			$resulta["type_user"] = 0;
			$json['Users'][]=$resulta;
			echo json_encode($json);
	}

?>
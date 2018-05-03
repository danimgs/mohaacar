<?php
	session_start();

	$conexion=oci_connect("dani", "dani", "localhost/dani");
	if (!$conexion) {
		$e = oci_error();
		echo "No hemos conectado con la BBDD";
		trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
	}
	else{
		echo "Sí hemos conectado con la BBDD";
	}
	
	
	$query="SELECT * FROM CLIENTES WHERE UPPER(DNI)=UPPER('$_REQUEST[dni]') AND pass='$_REQUEST[pass]'";
	
	$stid=oci_parse($conexion, $query);
	oci_execute($stid);
	
	if (($row=oci_fetch_assoc($stid))!=false){
			$_SESSION['contrasena']=$_REQUEST['pass'];
					$_SESSION['user']=$_REQUEST['dni'];
					$_SESSION['nombre']=$row['NOMBRE'];
					$_SESSION['apellido1']=$row['APELLIDO1'];
					header("Location:index.php?login=1");

		
		
	}
	else{ //El usuario o contrasena no existen
		oci_free_statement($stid);
		oci_close($conexion);
		header("Location:index.php?login=0");
	}
	

?>
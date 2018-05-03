<?php
	$conexion=oci_connect("dani","dani","localhost/dani");
	$query="SELECT * FROM CLIENTES WHERE DNI='$_REQUEST[dni]'";
	$stid=oci_parse($conexion, $query);
	oci_execute($stid);

	if ($row=oci_fetch_assoc($stid)){
		echo "Este usuario ya existe";
	}else
	{
	$query1="INSERT INTO CLIENTES (DNI,CORREO,NOMBRE,APELLIDO1,APELLIDO2,TELEFONO,PASS) VALUES ('$_REQUEST[dni]','$_REQUEST[correo]','$_REQUEST[nombre1]','$_REQUEST[apellido1]','$_REQUEST[apellido2]','$_REQUEST[telefono]','$_REQUEST[password1]')";
	$stid1=oci_parse($conexion, $query1);
	oci_execute($stid1);
	oci_close($conexion);
	header("location:registrado.php");
	}

?>
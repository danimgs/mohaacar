<?php
	session_start();
	$conexion=oci_connect("dani","dani","localhost/dani");
	$query="DELETE FROM COCHESALQUILER WHERE UPPER(DNI)=UPPER('$_SESSION[user]') AND MATRICULA_ALQ='$_REQUEST[matricula]' AND ZONA_ALQ='$_REQUEST[zona]' AND FECHA_RECOGIDA='$_REQUEST[fecha1]' AND FECHA_DEVOLUCION='$_REQUEST[fecha2]' AND MARCA='$_REQUEST[marca]'";
	$stid=oci_parse($conexion, $query);
	oci_execute($stid);
	oci_free_statement($stid);
	oci_close($conexion);

	header('Location:datosUsuario3.php');

?>
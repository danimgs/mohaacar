<?php
	session_start();
	$conexion=oci_connect("dani","dani","localhost/dani");
	$query="DELETE FROM CLIENTES WHERE UPPER(DNI)=UPPER('$_SESSION[user]')";
	$stid=oci_parse($conexion, $query);
	oci_execute($stid);
	oci_free_statement($stid);
	session_destroy();
	oci_close($conexion);

	header('Location:index.php');

?>
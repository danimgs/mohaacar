
		 				<?php
		 					session_start();
		 					$conexion=oci_connect("dani","dani","localhost/dani");
		 					$query="UPDATE CLIENTES SET ";
		 					if (isset($_REQUEST['correo']) && $_REQUEST['correo']!=""){


		 						$query=$query."CORREO='$_REQUEST[correo]'";
		 					}
							if (isset($_REQUEST['telefono']) && $_REQUEST['telefono']!=""){
								if (isset($_REQUEST['correo']) && $_REQUEST['correo']!=""){
									$query=$query.",";
								}

		 						$query=$query."TELEFONO='$_REQUEST[telefono]'";
		 					}
							if (isset($_REQUEST['pass']) && $_REQUEST['pass']!=""){
								if ((isset($_REQUEST['correo']) && $_REQUEST['correo']!="") || (isset($_REQUEST['telefono']) && $_REQUEST['telefono']!="")) {
									$query=$query.",";
								}

		 						$query=$query."PASS='$_REQUEST[pass]'";
		 					}
		 					$query=$query." WHERE UPPER(DNI)=UPPER('$_SESSION[user]')";
		 					$stid=oci_parse($conexion, $query);
							oci_execute($stid);
							oci_free_statement($stid);
							oci_close($conexion);
							header('Location:datosUsuario.php');
		 				?>
		 	
		 
		 
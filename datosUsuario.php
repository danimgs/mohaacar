<?php
session_start();
 if (isset($_REQUEST['login'])){
        $_SESSION['login']=$_REQUEST['login'];
    }
	include ("./sesion.php");

?>
<?php
	
	include("includes/cabecera.php");

?>  

	<div class="cuerpo">
		<?php
			$conexion=oci_connect("dani","dani","localhost/dani");
			$query="SELECT * FROM CLIENTES WHERE UPPER(DNI)=UPPER('$_SESSION[user]')";
			$stid=oci_parse($conexion, $query);
			oci_execute($stid);

			if (($row=oci_fetch_assoc($stid))!=FALSE){
				echo "<div class='titulo' style='text-align:center'><h1>$MisDatos<h1></div>";

				echo "<table align=center  border='1px'>
						<tr>
							<th class='opDatos' style='background-color:rgb(245,214,116); onclick='datos1()'>$datospersonales</th>
							<th class='opDatos' onclick='datos2()'>$vehiculoscomprados</th>
							<th class='opDatos' onclick='datos3()'>$alquilerdecoches</th>
							<th class='opDatos' onclick='datos4()'>$modificaciones</th>
							
						</tr>";

				do{

					echo "<tr class='opcionesDatos'>";
					echo "<td colspan='2' class='op1'>$nombre</td>";
					echo "<td colspan='2' class='op2'>$row[NOMBRE]</td>";
					echo "</tr>";
					echo "<tr class='opcionesDatos'>";
					echo "<td colspan='2' class='op1'>$apellidos</td>";
					echo "<td colspan='2' class='op2'>$row[APELLIDO1] $row[APELLIDO2]</td>";
					echo "</tr>";
					echo "<tr class='opcionesDatos'>";
					echo "<td colspan='2' class='op1'>$dni</td>";
					echo "<td colspan='2' class='op2'>$row[DNI]</td>";
					echo "</tr>";
					echo "<tr class='opcionesDatos'>";
					echo "<td colspan='2' class='op1'>$correo</td>";
					echo "<td colspan='2' class='op2'>$row[CORREO]</td>";
					echo "</tr>";
					echo "<tr class='opcionesDatos'>";
					echo "<td colspan='2' class='op1'>$telefono</td>";
					echo "<td colspan='2' class='op2'>$row[TELEFONO]</td>";
					echo "</tr>";
					echo "<tr class='opcionesDatos'>";
					echo "<td colspan='2' class='op1'>$Contraseña</td>";
					echo "<td colspan='2' class='op2'>$row[PASS]</td>";
					echo "</tr>";
					echo "<td  style='text-align:center'; class='borrarUsuario1'><input class='modificar' type='button' value='$modificar' onclick=modificarDatos()></td>";
				}	while(($row=oci_fetch_assoc($stid))!=FALSE);

				echo "</table>";
				
			}
			oci_free_statement($stid);
			oci_close($conexion);
			
		?>	
	</div>
<?php
	include("includes/pie.php")
?>	
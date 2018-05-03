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
			$query="SELECT * FROM COCHESALQUILER WHERE UPPER(DNI)=UPPER('$_SESSION[user]')";
			$stid=oci_parse($conexion, $query);
			oci_execute($stid);

			if (($row=oci_fetch_assoc($stid))!=FALSE){
				echo "<div class='titulo' style='text-align:center'><h1>$MisDatos<h1></div>";

				echo "<table align=center  border='1px'>
						<tr>
							<th class='opDatos' onclick='datos1()'>$datospersonales</th>
							<th class='opDatos' onclick='datos2()'>$vehiculoscomprados</th>
							<th class='opDatos' style='background-color:rgb(245,214,116); onclick='datos3()'>$alquilerdecoches</th>
							<th class='opDatos' onclick='datos4()'>$modificaciones</th>
							
						</tr>";

				do{

					echo "<tr class='opcionesDatos'>";
					echo "<td colspan='2' class='op1'>$matricula</td>";
					echo "<td colspan='2' class='op2'>$row[MATRICULA_ALQ]</td>";
					echo "</tr>";
					echo "<tr class='opcionesDatos'>";
					echo "<td colspan='2' class='op1'>$fechaderecogida</td>";
					echo "<td colspan='2' class='op2'>$row[FECHA_RECOGIDA]</td>";
					echo "</tr>";
					echo "<tr class='opcionesDatos'>";
					echo "<td colspan='2' class='op1'>$fechadedevolucion</td>";
					echo "<td colspan='2' class='op2'>$row[FECHA_DEVOLUCION]</td>";
					echo "</tr>";
					echo "<tr class='opcionesDatos'>";
					echo "<td colspan='2' class='op1'>$marca</td>";
					echo "<td colspan='2' class='op2'>$row[MARCA]</td>";
					echo "</tr>";
					echo "<tr class='opcionesDatos'>";
					echo "<td colspan='2' class='op1'>$zonadealquiler</td>";
					echo "<td colspan='2' class='op2'>$row[ZONA_ALQ]</td>";
					echo "</tr>";
					echo "<form name='cancelarReserva' metthod='post' action='cancelarAlquiler.php'>";
					echo "<input type='hidden' name='matricula' value='$row[MATRICULA_ALQ]'>";
					echo "<input type='hidden' name='fecha1' value='$row[FECHA_RECOGIDA]'>";
					echo "<input type='hidden' name='fecha2' value='$row[FECHA_DEVOLUCION]'>";
					echo "<input type='hidden' name='marca' value='$row[MARCA]'>";
					echo "<input type='hidden' name='zona' value='$row[ZONA_ALQ]'>";
					echo "<td  style='text-align:center'; class='borrarUsuario1'><input class='modificar' type='submit' value='$nuevoalquiler'></td>";
					echo "</form>";
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
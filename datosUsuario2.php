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
			$query="SELECT * FROM COMPRA WHERE UPPER(DNI)=UPPER('$_SESSION[user]')";
			$stid=oci_parse($conexion, $query);
			oci_execute($stid);

			if (($row=oci_fetch_assoc($stid))!=FALSE){
				echo "<div class='titulo' style='text-align:center'><h1>$MisDatos<h1></div>";

				echo "<table align=center  border='1px'>
						<tr>
							<th class='opDatos' onclick='datos1()'>$datospersonales</th>
							<th class='opDatos' style='background-color:rgb(245,214,116); onclick='datos2()'>$vehiculoscomprados</th>
							<th class='opDatos' onclick='datos3()'>$alquilerdecoches</th>
							<th class='opDatos' onclick='datos4()'>$modificaciones</th>
							
						</tr>";

				do{

					echo "<tr class='opcionesDatos'>";
					echo "<td colspan='2' class='op1'>$matricula</td>";
					echo "<td colspan='2' class='op2'>$row[MATRICULA]</td>";
					echo "</tr>";
					echo "<tr class='opcionesDatos'>";
					echo "<td colspan='2' class='op1'>$marca</td>";
					echo "<td colspan='2' class='op2'>$row[MARCA]</td>";
					echo "</tr>";
					echo "<tr class='opcionesDatos'>";
					echo "<td colspan='2' class='op1'>$fechadecompra</td>";
					echo "<td colspan='2' class='op2'>$row[FECHA_COMPRA]</td>";
					echo "</tr>";
					
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
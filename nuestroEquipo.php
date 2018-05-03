<?php
	session_start();
	include("includes/cabecera.php")

?>		
		
	<div class="cuerpo">

		<?php
			$conexion=oci_connect("dani","dani","localhost/dani");
			$query="SELECT * FROM EMPLEADOS";
			$stid=oci_parse($conexion, $query);
			oci_execute($stid);

			if (($row=oci_fetch_assoc($stid))!=FALSE){
				echo "<div style='text-align:center' class='portada'><h1>$nuestroEquipo<h1></div>";

				echo "<table style='text-align:center' class='tabla1'  >
						<tr >
							<td class='intro'>NOMBRE</td>
							<td class='intro'>APELLIDOS</td>
							<td class='intro'>EDAD</td>
							<td class='intro'>FECHA DE ALTA</td>
							<td class='intro'>MARCA</td>
							<td class='intro'>PUESTO</td>
							
						</tr>";

				do{
					
					echo "<tr class='intro1'>";
					echo "<td >$row[NOMBRE]</td>";
					echo "<td>$row[APELLIDO1] $row[APELLIDO2]</td>";
					echo "<td>$row[EDAD]</td>";
					echo "<td>$row[FECHA_ALT]</td>";
					echo "<td>$row[MARCA]</td>";
					echo "<td>$row[PUESTO]</td>";
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
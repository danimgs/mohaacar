<?php
	session_start();
	include("includes/cabecera.php")

?>		
		 	<div>
				<div id="cabecero">
					<hr>
						<p id="segundaMano">BMW</p>
					<hr>
				</div>
				<div id="cuerpo1">
					<div id="imagenLateral">
						<img src="./imagenes/columnabmw.jpg" height="700px" weight="50px">
					</div>
					<div id="medio">
						<?php
							$conexion=oci_connect("dani","dani","localhost/dani");
							$query="SELECT MODELO,POTENCIA,COMBUSTIBLE,PRECIO FROM COCHES WHERE MARCA='FORD'";
							$stid=oci_parse($conexion, $query);
							oci_execute($stid);

							if (($row=oci_fetch_assoc($stid))!=FALSE){
								echo "<div style='text-align:center'><h3>COCHES DISPONIBLES<h3></div>";

								echo "<table align=center  border='1px'>
										<tr>
											<th>MODELO</th>
											<th>POTENCIA</th>
											<th>COMBUSTIBLE</th>
											<th>PRECIO</th>
											<th></th>
										</tr>";

								do{

									echo "<tr>";
									echo "<td>$row[MODELO]</td>";
									echo "<td>$row[POTENCIA]</td>";
									echo "<td>$row[COMBUSTIBLE]</td>";
									echo "<td>$row[PRECIO]</td>";
									echo "<td><input type='button' value='comprar'></td>";
									echo "</tr>";
								}	while(($row=oci_fetch_assoc($stid))!=FALSE);

								echo "</table>";
								
							}

							oci_free_statement($stid);
							oci_close($conexion);
							
						?>
					</div>
				</div>
				
			</div>	
		
<?php
	include("includes/pie.php")
?>	
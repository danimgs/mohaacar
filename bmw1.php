<?php
	session_start();
	include("includes/cabecera.php")

?>		
			<div>
				<div id="cuerpo1">
					
					<div class="medio1">
						<?php
							$currPagMAY=strtoupper ($_REQUEST['cristian']);
							$conexion=oci_connect("dani","dani","localhost/dani");
							$query="SELECT MODELO,POTENCIA,COMBUSTIBLE,PRECIO,MARCA FROM COCHES WHERE MARCA='$currPagMAY'";
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


									echo "<tr style='text-align:center'>";
									echo "<td>$row[MODELO]</td>";
									echo "<td>$row[POTENCIA]</td>";
									echo "<td>$row[COMBUSTIBLE]</td>";
									echo "<td>$row[PRECIO]</td>";
									echo "<td><input type='button' value='comprar' class='comprar'></td>";
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
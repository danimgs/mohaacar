<html>
	<head>
	</head>
	<body>
<?php
	$conexion=oci_connect("dani","dani","localhost/dani");
	$query="SELECT MODELO,POTENCIA,COMBUSTIBLE,PRECIO FROM COCHES WHERE MARCA='BMW'";
	$stid=oci_parse($conexion, $query);
	oci_execute($stid);

	if (($row=oci_fetch_assoc($stid))!=FALSE){
		echo "<table border='1px'>
				<tr>
					<th>MODELO</th>
					<th>POTENCIA</th>
					<th>COMBUSTIBLE</th>
					<th>PRECIO</th>
				</tr>";

		do{

			echo "<tr>";
			echo "<td>$row[MODELO]</td>";
			echo "<td>$row[POTENCIA]</td>";
			echo "<td>$row[COMBUSTIBLE]</td>";
			echo "<td>$row[PRECIO]</td>";
			echo "</tr>";
		}	while(($row=oci_fetch_assoc($stid))!=FALSE);

		echo "</table>";
		
	}

	oci_free_statement($stid);
	oci_close($conexion);
	
?>
	</body>
</html>
<?php
	session_start();
 	if (isset($_REQUEST['login'])){
        $_SESSION['login']=$_REQUEST['login'];
    }
	include("includes/cabecera.php")

?>			
 	<div>				
		<div id="cuerpo1">
			<?php
			$conexion=oci_connect("dani","dani","localhost/dani");
			$query="SELECT * FROM DETALLES WHERE id_detalle='$_GET[serie1]'";
			$stid=oci_parse($conexion, $query);
			oci_execute($stid);

			$currPag=$_GET['serie1'];

			if (($row=oci_fetch_assoc($stid))!=FALSE){

				do{
				echo "<div id='cabecero' class='portada'>
						<hr>
							<p id='segundaMano'>$row[ID_DETALLE]</p>
						<hr>
					</div>";
				echo "<div id='imagenLateral'><img src='$row[IMAGEN]' height='460px' weight='50px'></div>";
				echo "<div id='medio'>
					<div>
						'$row[DESCRIPCION]'
					</div>
					<form name='boton' method='post' action='bmw1.php'>
						<div style='text-align:center;margin-top:100px;margin-bottom:100px;'' >
							<input type='hidden' name='cristian' value='$currPag'>
							<input type='submit' class='consul' value='Consulta nuestros coches'>
						</div>	
					</form>
				</div>";
				} while(($row=oci_fetch_assoc($stid))!=FALSE);
			}
			oci_free_statement($stid);
 			oci_close($conexion);
			?>
		</div>
		
	</div>	
		
<?php
	include("includes/pie.php")
?>	

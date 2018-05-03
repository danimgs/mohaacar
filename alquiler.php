<?php
	session_start();
	include('includes/cabecera.php')
?>
<?php
$conexion=oci_connect("dani","dani","localhost/dani");
$query="SELECT DISTINCT MARCA FROM COCHES";
$stid=oci_parse($conexion, $query);
oci_execute($stid);
if (isset($_REQUEST['marca'])){
	$query1="SELECT * FROM COCHES WHERE MARCA='$_REQUEST[marca]'";
	$stid1=oci_parse($conexion, $query1);
	oci_execute($stid1);
}
if (isset($_REQUEST['marca']) && isset($_REQUEST['modelo'])){
	$query2="SELECT * FROM COCHES WHERE MARCA='$_REQUEST[marca]' AND MODELO='$_REQUEST[modelo]'";
	$stid2=oci_parse($conexion, $query2);
	oci_execute($stid2);

}



		echo "<div class='cuerpo'>
			<div id='alquilar'>
				<div id='reserva1'><input type='button' value='$haz' class='reserva2' onclick='reserva()'></div>
				<form name='alquiler' method='post' action='alquiler.php'>
					<div id='oculto' >
						<div class='recogida'>
							$recogida
						</div>
						<div class='recogida'>
							$devolucion
						</div>
						<div class='recogida'>
							<input type='date' name='fecha1' class='calendario' id='fech1'>
						</div>
						<div class='recogida'>
							<input type='date' name='fecha2' class='calendario' id='fech2'>
						</div>
						<div id='errorFecha' style='text-align:center'>
							
						</div>
						
						<div class='lugar0'>
							$marcaAlquiler
						</div>
						<div class='lugar0'>
							$modeloAlquiler
						</div>
						<div class='lugar0'>
							$matriculaAlquiler
						</div>
						<div class='lugar0'>
							$lugar
						</div>
						
						<div class='lugar1'>
							<select name='marca' id='marca' onchange='recargarAlquiler()'>
							
								<option value='0'>$seleccione</option>";
								while(($row=oci_fetch_assoc($stid))!=FALSE){
									echo "<option value='$row[MARCA]'";
									if (isset($_REQUEST['marca'])){
										if ($row['MARCA']==$_REQUEST['marca']){
										echo " selected";
										}
									}
									echo ">$row[MARCA]</option>";
								}
						
							echo "</select>";


								
						echo "</div>
						<div class='lugar1' >
							<select name='modelo' id='modelo' onchange='recargarAlquiler1()'>
								<option value='0'>$seleccione1</option>";
							while(($row1=oci_fetch_assoc($stid1))!=FALSE){
									echo "<option value='$row1[MODELO]'";
									if (isset($_REQUEST['modelo'])){
										if ($row1['MODELO']==$_REQUEST['modelo']){
										echo " selected";
										}
									}
									echo ">$row1[MODELO]</option>";
								}
							echo "</select>
						</div>
						<div class='lugar1'>
						<select name='matricula' id='matricula'>
							<option value='0'>$seleccione2</option>";
							while(($row2=oci_fetch_assoc($stid2))!=FALSE){
									echo "<option value='$row2[MATRICULA]'>$row2[MATRICULA]</option>";
							}
						echo "</select>
						</div>
						<div class='lugar1'>
							<input type='text' name='localidad' id='localidad1'>
						</div>
						<div class='errores'>
							
							<div id='errorMarca' class='lugar1'>
								
							</div>
							<div id='errorModelo' class='lugar1'>
								
							</div>
							<div id='errorMatricula' class='lugar1'>
								
							</div>
							<div id='errorLocalidad'class='lugar1'>
								
							</div>
						</div>	
						<div class='lugar2'>
							<input type='button' value='$reservar' class='reserva2' onclick='restarFechas()'>
						</div>
				</form>		
					<div class='lugar2'><input type='button' value='$cancelar' class='reserva2' id='ocultar' onclick='ocultarReserva()'></div>
				</div>
			</div>
		</div>";
		
		if ( isset($_REQUEST['localidad']) && !is_null($_REQUEST['localidad']) && $_REQUEST['localidad']!='' && isset($_REQUEST['marca']) && !is_null($_REQUEST['marca']) && $_REQUEST['marca']!='' && isset($_REQUEST['modelo']) && !is_null($_REQUEST['modelo']) && $_REQUEST['modelo']!='' && isset($_REQUEST['matricula']) && !is_null($_REQUEST['matricula']) && $_REQUEST['matricula']!='' && isset($_REQUEST['fecha1']) && !is_null($_REQUEST['fecha1']) && $_REQUEST['fecha1']!='' && isset($_REQUEST['fecha2']) && !is_null($_REQUEST['fecha2']) && $_REQUEST['fecha2']!=''){
	
				$fecha1=$_REQUEST['fecha1'];

				$diaFecha1 = substr($fecha1, 8,2);
				$mesFecha1   = substr($fecha1, 5,2);
				$anoFecha1 = substr($fecha1, 0,4);
				// fechal final realizada el cambio de formato a las fechas europeas
				$fecha1 =  $diaFecha1 . '/'. $mesFecha1 .'/' . $anoFecha1;


				$fecha2=$_REQUEST['fecha2'];

				$diaFecha2 = substr($fecha2, 8,2);
				$mesFecha2  = substr($fecha2, 5,2);
				$anoFecha2 = substr($fecha2, 0,4);
				// fechal final realizada el cambio de formato a las fechas europeas
				$fecha2 =  $diaFecha2 . '/'. $mesFecha2 .'/' . $anoFecha2;

				$query3="INSERT INTO COCHESALQUILER  VALUES ('$_REQUEST[matricula]','$_REQUEST[localidad]','$fecha1','$fecha2','$_REQUEST[marca]','$_SESSION[user]')";
				$stid3=oci_parse($conexion, $query3);
				oci_execute($stid3);
				//header('Location:datosUsuario3.php');


		}
?>	
<?php
	include('includes/pie.php');
?>
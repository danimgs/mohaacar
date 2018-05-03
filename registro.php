<?php
	session_start();
	include("includes/cabecera.php")
?>
	<form name="registro" method="post" action="registroBB.php">
		<div class="formulario">
			<div class="portada">
				<h1><?php echo $registroen;?></h1>
			</div>
			<hr class="hruno">
			<div class="apartado1">
				<h2><?php echo $datosdeacceso;?></h2>		
			</div>
			<div class="izquierda3">
				<div class="texto1">
					<?php echo $Direcciondecorre;?>
				</div>
				<div class="texto1">
					<input type="text" name="correo" id="correo">
				</div>
				<div class="texto1" id="errorCorreo">
					
				</div>
			</div>
			<div class="izquierda3">
				<div class="texto1">
					<?php echo $Contraseña1;?>
				</div>
				<div class="texto1">
					<input type="password" name="password1" id="pass1">
				</div>
				<div class="texto1" id="errorPass1">
					
				</div>
			</div>	
			<div class="izquierda3">
				<div class="texto1">
					<?php echo $Repitacontraseña;?>
				</div>
				<div class="texto1">
					<input type="password" name="password2" id="pass2">
				</div>
				<div class="texto1" id="errorPass2">
					
				</div>
			</div>	
			<hr class="hruno">
			<div class="apartado1">
				<h2><?php echo $Datosdecontacto;?></h2>					
			</div>	
			
			<div class="izquierda3">
				<div class="texto1">
					<?php echo $DNI;?>
				</div>
				<div class="texto1">
					<input type="text" name="dni" id="dni">
				</div>
				<div class="texto1" id="errorDni">
					
				</div>
			</div>	
			<div class="izquierda3">
				<div class="texto1">
					<?php echo $Nombre;?>
				</div>
				<div class="texto1">
					<input type="text" name="nombre1" id="nombre1">
				</div>
				<div class="texto1" id="errorNombre">
					
				</div>
			</div>	
			<div class="izquierda3">
				<div class="texto1">
					<?php echo $PrimerApellido;?>
				</div>
				<div class="texto1">
					<input type="text" name="apellido1" id="apellido1">
				</div>
				<div class="texto1" id="errorApellido1">
					
				</div>
			</div>	
			<div class="izquierda3">
				<div class="texto1">
					<?php echo $SegundoApellido;?>
				</div>
				<div class="texto1">
					<input type="text" name="apellido2" id="apellido2">
				</div>
				<div class="texto1" id="errorApellido2">
					
				</div>
			</div>
			<div class="izquierda3">
				<div class="texto1">
					<?php echo $Telefono;?>
				</div>
				<div class="texto1">
					<input type="text" name="telefono" id="telefono">
				</div>
				<div class="texto1" id="errorTelefono">
					
				</div>
			</div>
			
			
			<hr class="hruno">
			<div class="apartado1">
				<h2><?php echo $NotaLegal;?></h2>					
			</div>
			<div class="apartado1">
				<?php echo $Textaco1;?>			
			</div>
			<div class="legal">
				<input type="checkbox" name="heLeido" id="heLeido" ><?php echo $Heleido;?>
			</div>
			<div class="texto1" id="errorHeLeido">
					
			</div>
			<input class="validar" type="button" value="<?php echo $Registrate;?>" onclick="validar()">
		</div>
	</form>	
<?php
	include("includes/pie.php")

?>
<?php
	include ("./sesion.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Concesionario</title>
	<link rel="stylesheet" type="text/css" href="./css/index.css">
	<link rel="stylesheet" type="text/css" href="./css/bmw.css">
	<link rel="stylesheet" type="text/css" href="./css/my-slider.css">
	<link rel="stylesheet" type="text/css" href="./css/alquiler.css">
	<link rel="stylesheet" type="text/css" href="./css/terceros.css">
	<link rel="stylesheet" type="text/css" href="./css/todoRiesgo.css">
	<link rel="stylesheet" type="text/css" href="./css/sedes.css">
	<link rel="stylesheet" type="text/css" href="./css/registro.css">
	<link rel="stylesheet" type="text/css" href="./css/datosUsuario.css">
	<link rel="stylesheet" type="text/css" href="./css/nuestroEquipo.css">

	<script src="./js/ism-2.1.js"></script>
	<script src="./js/index.js"></script>
	<script src="./js/todoRiesgo.js"></script>
	<script src="./js/registro.js"></script>
	<script src="./js/modificar.js"></script>
	<script src="./js/modificar1.js"></script>
	<script src="./js/modificar2.js"></script>
	<script src="./js/contacto.js"></script>
	<script src="./js/alquiler.js"></script>
	<script src="jquery-1.3.2.min.js" type="text/javascript"></script>
	
</head> 
<body id="principal">
	<img id="bg" src="./imagenes/fondoRojo.jpg" alt="Fondo" />
	<div id="contenedor">
		<div id="cabecera">
			<img src="./imagenes/logoFinal.png" onclick="inicio()" id="imagenCabecera">
			<div id="letra">	
				<h1 onclick="inicio()" class="conc">MOHAACAR</h1>
				<a href="?lang=ES"><img class="img1" src="./imagenes/españa.png" height="30" weight="30"></a>
				<a href="?lang=EN"><img class="img1" src="./imagenes/ingles.png" height="30" weight="30"></a>
				<input type="button" value="<?php echo $Registrate;?>"onclick="registrate()" id="registro" >
				<p>
					<?php
						if (isset($_SESSION['login'])){
							if ($_SESSION['login']==1){
								echo "<strong class='cliente'>$Bienvenido $_SESSION[nombre] $_SESSION[apellido1]</strong></br>";
								echo "<input class='area' type='button' name='accede' value='$Area' onClick=\"abrirPagina('datosUsuario.php')\">";
								echo "<a class='area1' href='desconexion.php'>$Desconexion</a>";
							}
						}							
					?>
				</p>
			</div>
			<form action="login.php" name="formularioRegistro" method="post">
				<div id="logearse">
					<div id="accede1" class="div1">	
						<input type="button" value="<?php echo $Acceder;?>" id="contacto" onclick="muevediv1()">
						<div id="accede2" class="div2" style="display:none">
							<?php echo $Nombre1;?><input type="text" name="dni" placeholder="<?php echo $Usuario;?>">
							<?php echo $Password;?><input type="password" name="pass" placeholder="<?php echo $Password;?>">
							<input type="submit" value="<?php echo $Entrar;?>" id="entrar">
							<p>
								<?php
									if (isset($_GET['login'])){
										if ($_GET['login']==0){
											echo "<strong>$invalida</strong></br>";
										}
									}							
								?>
							</p>
						</div>
					</div>
				</div>	
			</form>
			
			<div id="menu" >
					<div class="opciones" onmouseover="apareceV()" onmouseout="desapareceV()"><?php echo $Vehiculo;?>
						<div id="submenu0" class="submenu" onclick="vehiculo('bmw')">BMW</div>
						<div id="submenu1" class="submenu" onclick="vehiculo('ford')">FORD</div>
						<div id="submenu2" class="submenu" onclick="vehiculo('ferrari')">FERRARI</div>
						<div id="submenu3" class="submenu" onclick="vehiculo('audi')">AUDI</div>
						<div id="submenu4" class="submenu" onclick="vehiculo('mercedes')">MERCEDES</div>
					</div>
				</form>
				<div class="opciones1" onclick="promocion()"><?php echo $Promociones;?>
				</div>
				
				<div class="opciones3" onmouseover="apareceS()" onmouseout="desapareceS()"><?php echo $Seguros;?>
					<div id="submenu5" class="submenu" onclick="terceros()"><?php echo $Terceros;?></div>
					<div id="submenu6" class="submenu" onclick="tercerosAmpliado()"><?php echo $Tercerosampliados;?></div>
					<div id="submenu7" class="submenu" onclick="todoRiesgo()"><?php echo $Todoriesgo;?></div>
					<div id="submenu8" class="submenu" onclick="todoRiesgoFranquicia()"><?php echo $Todoriesgoconfranquicia;?></div>
				</div>
				<div class="opciones4" onmouseover="apareceC()" onmouseout="desapareceC()"><?php echo $Conocenos;?>
					<div id="submenu9" class="submenu" onclick="sedes()"><?php echo $Sedes;?></div>
					<div id="submenu10" class="submenu" onclick="contacto()"><?php echo $Contacto;?></div>
					<div id="submenu11" class="submenu" onclick="equipo()"><?php echo $Nuestroequipo;?></div>
				</div>
				<?php
						if (isset($_SESSION['login'])){
							if ($_SESSION['login']==1){ //Hay error en el login
								echo "<div class='opciones2' onclick='alquiler()'>$Alquiler
										</div>";
							}
						}else{
							echo "<div class='opciones2' onclick='alquiler1()'>$Alquiler
								</div>";
						}						
				?>				
			</div>			
		</div>
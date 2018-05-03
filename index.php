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
		<div class="ism-slider" data-play_type="loop" id="mohaa">
		  <ol>
		    <li>
		      <img src="./imagenes/foto1.jpg">
		      <div class="ism-caption ism-caption-0"><?php echo $rey;?></div>
		      <div class="ism-caption ism-caption-1" data-delay='600'><?php echo $limites;?></div>
		    </li>
		    <li>
		      <img src="./imagenes/foto2.jpg">
		      <div class="ism-caption ism-caption-0"><?php echo $presente;?></div>
		    </li>
		    <li>
		      <img src="./imagenes/foto3.jpg">
		      <div class="ism-caption ism-caption-0"><?php echo $deshazte;?></div>
		    </li>
		    <li>
		      <img src="./imagenes/foto4.jpg">
		      <div class="ism-caption ism-caption-0" data-delay='100'><?php echo $conducir;?></div>
		    </li>
		  </ol>
		</div>
		<div id="cuerpo">
			<div id="texto">
				<?php echo $marca;?>
			</div>
			<div id="marca1">
				<img src="./imagenes/bmw4.png" width="300px" heigth="300px" onclick="vehiculo('bmw')">
			</div>
			<div id="marca2">
				<img src="./imagenes/audi2.png" width="300px" heigth="300px" onclick="vehiculo('audi')">
			</div>
			<div id="marca3">
				<img src="./imagenes/ford2.png" width="300px" heigth="300px" onclick="vehiculo('ford')">
			</div>
			<div id="texto1">
				BMW
			</div>
			<div id="texto1">
				AUDI
			</div>
			<div id="texto1">
				FORD
			</div>
			<div id="marca1">
				<img src="./imagenes/mercedes2.png" width="300px" heigth="300px" onclick="vehiculo('mercedes')">
			</div>
			<div id="marca2">
				<img src="./imagenes/ferrari2.png" width="300px" heigth="300px" onclick="vehiculo('ferrari')">
			</div>
			<div id="marca3">
				<img src="./imagenes/lamborghini2.png" width="300px" heigth="300px">
			</div>
			<div id="texto1">
				MERCEDES
			</div>
			<div id="texto1">
				FERRARI
			</div>
			<div id="texto1">
				LAMBORGHINI
			</div>
		</div>
<?php
	include("includes/pie.php")
?>
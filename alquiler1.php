<?php
	session_start();
	include('includes/cabecera.php')
?>
	<div class="alquilerSin">
		<h1><?php echo $informacion;?></br><?php echo $informacion1;?></br><input type="button" value="<?php echo $aqui;?>" class="boton" onclick="alquilerUno()"></h2>
	</div>

<?php
	include('includes/pie.php');
?>
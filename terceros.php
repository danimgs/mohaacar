<?php
	session_start();
	include("includes/cabecera.php");
	

?>
	<div id="cuerpo">
		<div class="portada" style='text-align:center'>
			<h1><?php echo $terceros;?></h1>
		</div>
		<div class="fila">
			<div class="izquierda">
				<img src="imagenes/terceros.jpg">
			</div>
			<div class="derecha">
				<?php echo $texto1;?>
			</div>
		</div>
		<div class="fila">
			<div class="izquierda1">
				<?php echo $texto2;?>
			</div>
			<div class="derecha1">
				<img src="imagenes/terceros1.jpg">
			</div>
		</div>
		<div class="aviso">
			<?php echo $aviso;?>
		</div>
		<?php include("includes/numeros.php");?>
	</div>



<?php
	include("includes/pie.php");
?>
<?php
	session_start();
	include("includes/cabecera.php")
?>
	<div id="cuerpo">
		<div class="portada" style='text-align:center'>
			<h1><?php echo $tituloseguros;?></h1>
		</div>
		<div class="fila">
			<div class="izquierda1">
				<?php echo $foto1;?>
			</div>
			<div class="derecha1">
				<img src="imagenes/incendio.jpg">
			</div>
		</div>
		<div class="fila">
			<div class="izquierda">
				<img src="imagenes/luna.jpg">
			</div>
			<div class="derecha">
				<?php echo $foto2;?>			
			</div>
		</div>
		<div class="fila">
			<div class="izquierda1">
				<?php echo $texto3;?>
			</div>
			<div class="derecha1">
				<img src="imagenes/robo.jpg">
			</div>
		</div>
		<div class="aviso">
			<?php echo $aviso;?>
		</div>
		<?php include("includes/numeros.php");?>
	</div>



<?php
	include("includes/pie.php")
?>
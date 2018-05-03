<?php
	session_start();
	include("includes/cabecera.php")
?>
	<div id="cuerpo">
		<div class="portada" style='text-align:center'>
			<h1><?php echo $tituloriesgofranquicia;?></h1>
		</div>
		
			<div class="caja1">
				<div id="arriba" onclick="bajaDiv()">
					<?php echo $parrafoa1;?>
				</div>
				
				<div class="abajo" id="bajar"  style="display:none">
					<span id="tick"> &#10004; </span> <?php echo $a1a;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a1b;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a1c;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a1d;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a1e;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a1f;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a1g;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a1h;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a1i;?></br>
				</div>					
			</div>
			<div class="caja1">
				<div id="arriba" onclick="bajaDiv1()">
					<?php echo $pararafob1;?>
				</div>
				
				<div id="bajar1" class="abajo" style="display:none">
					<span id="tick"> &#10004; </span> <?php echo $b1a;?> </br>
					<span id="tick"> &#10004; </span> <?php echo $b1b;?></br>
					<span id="tick"> &#10004; </span> <?php echo $b1c;?></br>
					<span id="tick"> &#10004; </span> <?php echo $b1d;?></br>
					<span id="tick"> &#10004; </span> <?php echo $b1e;?></br>
					<span id="tick"> &#10004; </span> <?php echo $b1f;?></br>
					
				</div>					
			</div>
			<div class="caja1">
				<div id="arriba" onclick="bajaDiv2()">
					<?php echo $parrafoc1;?>
				</div>
				
				<div id="bajar2" class="abajo" style="display:none">
					<span id="tick"> &#10004; </span> 
					<?php echo $c1a;?></br>
					<span id="tick"> &#10004; </span> <?php echo $c1d;?></br>
					<span id="tick"> &#10004; </span> <?php echo $c1c;?></br>
					<span id="tick"> &#10004; </span> <?php echo $c1d;?></br>
					<span id="tick"> &#10004; </span> <?php echo $c1e;?></br>
					
				</div>					
			</div>
			<div class="caja1">
				<div id="arriba" onclick="bajaDiv3()">
					<?php echo $parrafod1;?>
				</div>
				
				<div id="bajar3" class="abajo" style="display:none">
					<span id="tick"> &#10004; </span> <?php echo $d1a;?></br>
					<span id="tick"> &#10004; </span> <?php echo $d1b;?></br>
					<span id="tick"> &#10004; </span> <?php echo $d1c;?></br>
					<span id="tick"> &#10004; </span> <?php echo $d1d;?></br>
					<span id="tick"> &#10004; </span> <?php echo $d1e;?></br>
					
				</div>					
			</div>		
		<?php include("includes/numeros.php");?>
	</div>

<?php
	include("includes/pie.php")
?>
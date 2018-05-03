<?php
	session_start();
	include("includes/cabecera.php")
?>
	<div id="cuerpo">
		<div class="portada" style='text-align:center'>
			<h1><?php echo $tituloriesgo;?></h1>
		</div>
		
			<div class="caja1">
				<div id="arriba" onclick="bajaDiv()">
					<?php echo $parrafoa;?>
				</div>
				
				<div class="abajo" id="bajar"  style="display:none">
					<span id="tick"> &#10004; </span> <?php echo $a1;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a2;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a3;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a4;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a5;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a6;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a7;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a8;?></br>
					<span id="tick"> &#10004; </span> <?php echo $a9;?></br>
				</div>					
			</div>
			<div class="caja1">
				<div id="arriba" onclick="bajaDiv1()">
					<?php echo $parrafob;?>
				</div>
				
				<div id="bajar1" class="abajo" style="display:none">
					<span id="tick"> &#10004; </span> <?php echo $b1;?></br>
					<span id="tick"> &#10004; </span> <?php echo $b2;?></br>
					<span id="tick"> &#10004; </span> <?php echo $b3;?></br>
					<span id="tick"> &#10004; </span> <?php echo $b4;?></br>
					<span id="tick"> &#10004; </span> <?php echo $b5;?></br>
					<span id="tick"> &#10004; </span> <?php echo $b6;?></br>
					<span id="tick"> &#10004; </span> <?php echo $b7;?></br>
					
				</div>					
			</div>
			<div class="caja1">
				<div id="arriba" onclick="bajaDiv2()">
					<?php echo $parrafoc;?>
				</div>
				
				<div id="bajar2" class="abajo" style="display:none">
					<?php echo $c1;?></br>
					<span id="tick"> &#10004; </span> <?php echo $c2;?>  </br>
					<span id="tick"> &#10004; </span> <?php echo $c3;?></br>
					<span id="tick"> &#10004; </span> <?php echo $c4;?></br>
					<span id="tick"> &#10004; </span> <?php echo $c5;?></br>
					<span id="tick"> &#10004; </span> <?php echo $c6;?></br>
					
				</div>					
			</div>
			<div class="caja1">
				<div id="arriba" onclick="bajaDiv3()">
					<?php echo $parrafod;?>
				</div>
				
				<div id="bajar3" class="abajo" style="display:none">
					<span id="tick"> &#10004; </span> <?php echo $d1;?></br>
					<span id="tick"> &#10004; </span> <?php echo $d2;?></br>
					<span id="tick"> &#10004; </span> <?php echo $d3;?></br>
					<span id="tick"> &#10004; </span> <?php echo $d4;?></br>
					
				</div>					
			</div>
			<div class="caja1">
				<div id="arriba" onclick="bajaDiv4()">
					<?php echo $parrafoe;?>
				</div>
				
				<div id="bajar4" class="abajo" style="display:none">
					<span id="tick"> &#10004; </span> <?php echo $e1;?></br>
					<span id="tick"> &#10004; </span> <?php echo $e2;?></br>
					<span id="tick"> &#10004; </span> <?php echo $e3;?></br>
					<span id="tick"> &#10004; </span> <?php echo $e4;?></br>
					
				</div>					
			</div>		
		<?php include("includes/numeros.php");?>
	</div>

<?php
	include("includes/pie.php")
?>
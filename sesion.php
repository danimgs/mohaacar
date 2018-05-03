<?php

	if ((!isset($_GET['lang'])) && (!isset($_SESSION['lang']))){
		$_SESSION['lang']="ES";
		include ('./lang/lang-ES.php');
	}
	else{
		if (isset($_GET['lang'])){
			$_SESSION['lang']=$_GET['lang'];
		}
	}
	if ($_SESSION['lang']=="EN"){
		include ('./lang/lang-EN.php');
	}
	else{
		include ('./lang/lang-ES.php');
	}

?>

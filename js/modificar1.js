var TelModif;
	function modificarTel(){
	var obligatorio = true;
		
		TelModif = document.getElementById("TelModif").value.trim();

		//modificar telefono

		var numTelefono=TelModif;
		var longTelefono=TelModif.length;
		var primerNumTel=TelModif.charAt(0);
		if(TelModif==""){
			errorTelModif.style.color="red";
			document.getElementById("errorTelModif").innerHTML="Por favor completa los campos";
			obligatorio=false;
		}
		else if (longTelefono==9){
			
			if (primerNumTel==6 || primerNumTel==9){
				errorTelModif.style.color="white";
				document.getElementById("errorTelModif").innerHTML="Su teléfono se ha modificado";	
			}else{
				document.getElementById("errorTelModif").innerHTML="debe de empezar por 6, 7 o 9";
				errorTelModif.style.color="red";
				obligatorio=false;
			}
		}
		else if(longTelefono!=9){
			document.getElementById("errorTelModif").innerHTML="tiene que tener 9 digitos";
			errorTelModif.style.color="red";
			obligatorio=false;
		}

		else{
			document.getElementById("errorTelModif").innerHTML="";	
		}
		if(obligatorio==true){
			document.modificoCorreo.submit();
		}
	}




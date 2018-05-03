var CoModif;

function modificarCorreo(){
var obligatorio = true;
	
	CoModif = document.getElementById("CoModif").value.trim();
	
	

	//modificar correo
	if (CoModif==""){
		errorCoModif.style.color="red";
		document.getElementById("errorCoModif").innerHTML="Por favor completa los campos";
		obligatorio=false;
		
	}
	else if (CoModif.indexOf("@")==-1){
		errorCoModif.style.color="red";
		document.getElementById("errorCoModif").innerHTML="Correo invalido";
		obligatorio=false;
	}
	else{
			errorCoModif.style.color="white";
			document.getElementById("errorCoModif").innerHTML="Su correo se ha modificado";
		}

	if(obligatorio==true){
		document.modificoCorreo.submit();
	}
}		

	//modificar telefono

var PassModif;

	//modificar pass
function modificarPass(){

	PassModif = document.getElementById("PassModif").value.trim();
	var obligatorio = true;
	if (PassModif==""){
		errorPassModif.style.color="red";
		document.getElementById("errorPassModif").innerHTML="Por favor completa los campos";
		obligatorio=false;
	}
	else{
		errorPassModif.style.color="white";
		document.getElementById("errorPassModif").innerHTML="Contraseña modificada";
	}
	if(obligatorio==true){
		document.modificoCorreo.submit();
	}
}


		
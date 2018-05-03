var correo;
var nombre1;
var apellido1;
var apellido2;
var DNI;
var telefono;

function validarContacto(){
var obligatorio = true;

	correo = document.getElementById("correo").value.trim();
	nombre1 = document.getElementById("nombre1").value.trim();
	apellido1 = document.getElementById("apellido1").value.trim();
	apellido2 = document.getElementById("apellido2").value.trim();
	DNI = document.getElementById("dni").value.trim();
	telefono = document.getElementById("telefono").value.trim();

	//nombre
	if (nombre1==""){
			errorNombre.style.color="red";
			document.getElementById("errorNombre").innerHTML="Por favor completa los campos";
			obligatorio=false;
			
	}
		
	else{
				document.getElementById("errorNombre").innerHTML="";
		}

	//apellido1
	if (apellido1==""){
		errorApellido1.style.color="red";
		document.getElementById("errorApellido1").innerHTML="Por favor completa los campos";
		obligatorio=false;
		
	}
	
	else{
			document.getElementById("errorApellido1").innerHTML="";
		}
	//apellido2
	if (apellido2==""){
		errorApellido2.style.color="red";
		document.getElementById("errorApellido2").innerHTML="Por favor completa los campos";
		obligatorio=false;
		
	}
	
	else{
			document.getElementById("errorApellido2").innerHTML="";
		}

	//DNI
	numero = DNI.substr(0,DNI.length-1);
			  let = DNI.substr(DNI.length-1,1);
			  numero = numero % 23;
			  letra='TRWAGMYFPDXBNJZSQVHLCKETtrwagmyfpdxbnjzsqvhlcket';
			  letra=letra.substring(numero,numero+1);
			  
			  if (DNI==""){
			  	document.getElementById('errorDni').innerHTML="Por favor completa los campos";
			  	document.getElementById('errorDni').style.color="red";
			  	obligatorio=false;
			  }else if (letra!=let){
			  	document.getElementById('errorDni').innerHTML="DNI incorrecto/Campo Obligatorio";
			  	document.getElementById('errorDni').style.color="red";
				obligatorio=false;
			  }else {
			  	document.getElementById('errorDni').innerHTML="";
			  } 
	//telefono


	var numTelefono=telefono;
	var longTelefono=telefono.length;
	var primerNumTel=telefono.charAt(0);
	if(telefono==""){
		errorTelefono.style.color="red";
		document.getElementById("errorTelefono").innerHTML="Por favor completa los campos";
		obligatorio=false;
	}
	else if (longTelefono==9){
		
		if (primerNumTel==6 || primerNumTel==9){
			document.getElementById("errorTelefono").innerHTML="";	
		}else{
			document.getElementById("errorTelefono").innerHTML="debe de empezar por 6, 7 o 9";
			errorTelefono.style.color="red";
			obligatorio=false;
		}
	}
	else if(longTelefono!=9){
		document.getElementById("errorTelefono").innerHTML="tiene que tener 9 digitos";
		errorTelefono.style.color="red";
		obligatorio=false;
	}

	else{
		document.getElementById("errorTelefono").innerHTML="";	
	}

	//correo

	if (correo==""){
		errorCorreo.style.color="red";
		document.getElementById("errorCorreo").innerHTML="Por favor completa los campos";
		obligatorio=false;
		
	}
	else if (correo.indexOf("@")==-1){
		document.getElementById("errorCorreo").innerHTML="Correo invalido";
		obligatorio=false;
	}
	else{
			document.getElementById("errorCorreo").innerHTML="";
		}
		

	//he leido
	if (document.getElementById("heLeido").checked==false){
		errorHeLeido.style.color="red";
		document.getElementById("errorHeLeido").innerHTML="Por favor completa los campos";
		obligatorio=false;
		
	}
	
	else{
			document.getElementById("errorHeLeido").innerHTML="";
	}
}
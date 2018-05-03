var fech1;
var fech2;
var localidad1;
var marca;
var modelo;
var matricula;

function restarFechas(){
	var obligatorio = true;

	fech1 = document.getElementById("fech1").value.trim();
	fech2 = document.getElementById("fech2").value.trim();
	localidad1 = document.getElementById("localidad1").value.trim();
	marca = document.getElementById("marca").value.trim();
	modelo = document.getElementById("modelo").value.trim();
	matricula = document.getElementById("matricula").value.trim();

	
	//fechas
	if(fech1==""){
		errorFecha.style.color="red";
		document.getElementById("errorFecha").innerHTML="Por favor completa los campos";
		obligatorio=false;
		
	}else if(fech2==""){
		errorFecha.style.color="red";
		document.getElementById("errorFecha").innerHTML="Por favor completa los campos";
		obligatorio=false;
	}else if ((Date.parse(fech1)) > (Date.parse(fech2))){
		errorFecha.style.color="red";
		document.getElementById("errorFecha").innerHTML="Introduzca las fechas correctamente";
		obligatorio=false;
	}
	else{
			document.getElementById("errorFecha").innerHTML="";
	}

	//localidad
	if(localidad1==""){
		errorLocalidad.style.color="red";
		document.getElementById("errorLocalidad").innerHTML="Por favor completa los campos";
		obligatorio=false;
		
	}else{
			document.getElementById("errorLocalidad").innerHTML="";
	}

	//marca
	if(marca=="0"){
		errorMarca.style.color="red";
		document.getElementById("errorMarca").innerHTML="Seleccione una marca";
		obligatorio=false;
		
	}else{
			document.getElementById("errorMarca").innerHTML="";
	}

	//modelo

	if(modelo=="0"){
		errorModelo.style.color="red";
		document.getElementById("errorModelo").innerHTML="Seleccione un modelo";
		obligatorio=false;
		
	}else{
			document.getElementById("errorModelo").innerHTML="";
	}


	//matricula


	if(matricula=="0"){
		errorMatricula.style.color="red";
		document.getElementById("errorMatricula").innerHTML="Seleccione una matricula";
		obligatorio=false;
		
	}else{
			document.getElementById("errorMatricula").innerHTML="";
	}
	if (obligatorio==true){
		document.alquiler.submit();
	}

}

function recargarAlquiler(){
	document.alquiler.submit();
}
function recargarAlquiler1(){
	document.alquiler.submit();
}
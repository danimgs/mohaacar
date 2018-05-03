		function inicio(){
			window.open("./index.php","_parent");
		}

		function muevediv1(){
		if (document.getElementById("accede2").style.display == 'none'){
				document.getElementById('accede2').style.display = 'block';
		}else{
			document.getElementById("accede2").style.display = 'none';
			}
		}

		function registrate(){
			window.open("./registro.php","_parent");
		}


		//MENU
		function apareceV(){
			for(i=0;i<5;i++){
				document.getElementById('submenu'+i).style.display="block";
			}
		}
		function desapareceV(){
			for(i=0;i<5;i++){
				document.getElementById('submenu'+i).style.display="none";
			}
		}

		function apareceS(){	
			for(i=5;i<9;i++){
				document.getElementById('submenu'+i).style.display="block";
			}
		}
		function desapareceS(){
			for(i=5;i<9;i++){
				document.getElementById('submenu'+i).style.display="none";
			}
		}

		function apareceC(){
			for(i=9;i<12;i++){
				document.getElementById('submenu'+i).style.display="block";
			}
		}

		function desapareceC(){
			
			for(i=9;i<12;i++){
				document.getElementById('submenu'+i).style.display="none";
			}
			

		}
		

		//BMW
		function cocheBmw(){
			window.open("./bmw.php","_parent");
		}

		//alquiler
		function alquiler(){
			window.open("./alquiler.php","_parent");
		}
		function alquilerUno(){
			window.open("./registro.php","_parent");
		}
		function alquiler1(){
			window.open("./alquiler1.php","_parent");
		}
		//promociones
		function promocion(){
			window.open("./promociones.php","_parent");
		}

		contador=0;

		//funcion de reservas
		function reserva(){
		document.getElementById('oculto').style.display = 'block';
		}
		function ocultarReserva(){
		document.getElementById('oculto').style.display = 'none';
		}
		//funciones de seguros
		function terceros(){
			window.open("./terceros.php","_parent");
		}
		function tercerosAmpliado(){
			window.open("./tercerosAmpliado.php","_parent");
		}
		function todoRiesgo(){
			window.open("./todoRiesgo.php","_parent");
		}
		function todoRiesgoFranquicia(){
			window.open("./todoRiesgoFranquicia.php","_parent");
		}
		//vehiculos
		function vehiculo(dato){
			if (dato=='bmw'){
			window.open("./vehiculo.php?serie1=bmw","_parent");
			}else if (dato=='ford'){
			window.open("./vehiculo.php?serie1=ford","_parent");
			}else if (dato=='ferrari'){
			window.open("./vehiculo.php?serie1=ferrari","_parent");
			}else if (dato=='audi'){
			window.open("./vehiculo.php?serie1=audi","_parent");
			}else if (dato=='mercedes'){
			window.open("./vehiculo.php?serie1=mercedes","_parent");
			}
		}
		//AREA CLIENTES
		function datos1(){
			window.open("./datosUsuario.php","_parent");
		}
		function datos2(){
			window.open("./datosUsuario2.php","_parent");
		}
		function datos3(){
			window.open("./datosUsuario3.php","_parent");
		}
		function datos4(){
			window.open("./datosUsuario4.php","_parent");
		}

		function abrirPagina(x){
			window.open(x,"_parent");
		}
		function modificarDatos(){
			window.open("./datosUsuario4.php","_parent");
		}

		//nuestro equipo
		function equipo(){
			window.open("./nuestroEquipo.php","_parent");
		}
		//contacto
		function contacto(){
			window.open("./contacto.php","_parent");
		}
		//funciones de numeros pie

		var pag;
		var pagina=new Array();
		pagina[0] = "./terceros.php";
		pagina[1] ="./tercerosAmpliado.php";
		pagina[2] ="./todoRiesgo.php";
		pagina[3] ="./todoRiesgoFranquicia.php";
	

		function numero1(){
			pag=0;
			
			window.open("./terceros.php","_parent");
		}
		function numero2(){
			pag=1;
			window.open("./tercerosAmpliado.php","_parent");
		}
		function numero3(){
			pag=2;
			window.open("./todoRiesgo.php","_parent");
		}
		function numero4(){
			pag=3;
			window.open("./todoRiesgoFranquicia.php","_parent");
		}

		function avanza1(){
			if (window.location.href=="http://localhost/proyectoBea/terceros.php"){
				window.open("./tercerosAmpliado.php","_parent");
			}else if(window.location.href=="http://localhost/proyectoBea/tercerosAmpliado.php"){
				window.open("./todoRiesgo.php","_parent");
			}else{
				window.open("./todoRiesgoFranquicia.php","_parent");
			}
		}


		function retrocede1(){
			if (window.location.href=="http://localhost/proyectoBea/todoRiesgoFranquicia.php"){
				window.open("./todoRiesgo.php","_parent");
			}else if(window.location.href=="http://localhost/proyectoBea/todoRiesgo.php"){
				window.open("./tercerosAmpliado.php","_parent");
			}else{
				window.open("./terceros.php","_parent");
			}
		}
	
		function avanzaFinal(){
			window.open("./todoRiesgoFranquicia.php","_parent");
		}

		function retrocedeFinal(){
			window.open("./terceros.php","_parent");
		}
		//sedes
		function sedes(){
			window.open("./sedes.php","_parent");
		}

	//FONDO
	function updateBackground() {
      screenWidth = $(window).width();
      screenHeight = $(window).height();
      var bg = jQuery("#bg");
       
      ratio = 1;
       
      if (screenWidth/screenHeight > ratio) {
      $(bg).height("auto");
      $(bg).width("100%");
      } else {
      $(bg).width("auto");
      $(bg).height("100%");
      }
       
      // Si a la imagen le sobra anchura, la centramos a mano
      if ($(bg).width() > 0) {
      $(bg).css('left', (screenWidth - $(bg).width()) / 2);
      }
      }
      $(document).ready(function() {
      // Actualizamos el fondo al cargar la pagina
      updateBackground();
      $(window).bind("resize", function() {
      // Y tambien cada vez que se redimensione el navegador
      updateBackground();
      });
      });

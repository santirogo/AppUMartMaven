/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//window.onbeforeunload=mylogic_function();
//
//function mylogic_function() {
//    //window.location.href = "Prueba"; 
//    alert("Quiere salir?");
//} 

//window.addEventListener("beforeunload", function (e) {
//  var confirmationMessage = "\o/";
//  
////  (e || window.event).returnValue = confirmationMessage; //Gecko + IE
//  
////  window.location.href = "Prueba";                            //Webkit, Safari, Chrome
//    redirect;
//});

window.onbeforeunload = cierraSesion;

function cierraSesion(){
    $.ajax({
        url: 'CerrarSesionServlet',
        type: 'GET',
        dataType: 'json',
        success: function(data){
                
            
        }
    });
}

function cerrarSesion() {
    $.ajax({
        url: 'CerrarSesionServlet',
        type: 'get',
        dataType: 'json',
        success: function (data) {
            console.log("holaaa");
            window.location.href = "index.jsp";
            
        },
        error: function () {
        }
    });


};

function cli (id){
    console.log("Holaaaaaa "+id);
    nombre = $("#n"+id).text();
    tienda = $("#encabezado").text();
    cantidad = $("#c"+id).val();
    var opcion = "1";
    //if(cantidad !== ""){
        if(cantidad===""){
            alert("Debe escribir una cantidad");
        }else{
            //if(isNaN(cantidad)){
               // alert("La cantidad tiene que ser un número");
            //}else{
                console.log("cantidad: "+cantidad);
                $.ajax({
                        url: 'AgregarCarritoServlet',
                        type: 'POST',
                        data: {nombre:nombre,tienda:tienda,cantidad:cantidad, opcion:opcion},
                        dataType: 'json',
                        success: function(data){
                            
                            $("#respuesta").append("<b>Se agregó el producto </b>"+data.nombre+" <b>satisfactoriamente</b>");
                        
                        /////////////////////////
                        
                        
                        }
                    });
                    
                     
            //}
        }
    //}
}

function main(){
    var opcion = "1";
    console.log("Entro a funcion main");
    
    
    $.ajax({
                        url: 'MainMenuServlet',
                        type: 'GET',
                        data: {opcion:opcion},
                        dataType: 'json',
                        success: function(data){
                            
                            var i = 0;
            for (i = 0; i < data.Productos.length; i++) {
                console.log(data.Productos[i].nombre);
                console.log(data.Productos[i].precio);
                $('#carlos').append(
                        
                        
                        //"<a href = 'seleccionProducto.jsp'><button class='btn' onclick='sendName(" + data.Productos[i].nombre + ")'>\n\"",
                        "<p>" + data.Productos[i].nombre + "</p><p>" + data.Productos[i].cantidad + "</p><p>" + data.Productos[i].precio + "</p><br>",
                        "<form>",
                        "<input type='text' id='opcion' value='2' style='display: none'>",
                        "<input type='text' id='idprod' value='" + data.Productos[i].ID + "' style='display: none'>",
                        "<input type='submit'>",
                        "</form>"
                        
                        );

            }
                           // $("#respuesta").append("<b>Se agregó el producto </b>"+data.nombre+" <b>satisfactoriamente</b>");
                        }
                    });
                    
                    location = 'InfoCarrito.jsp';
}




$(document).ready(function () {

    $.ajax({
        url: 'SeleccionTiendaServlet',
        type: 'POST',
        dataType: 'json',
        success: function (data) {
            /*$("#encabezado").append("<h1 style='color: black;'>" + data.empresa + "</h1>");*/
            $("#encabezado").append(data.empresa);
            $("#Perfil").append("<div class='perfil' style='background-image:-webkit-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%),url(Pictures/"+data.logo+"); background-image:-moz-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%),url(Pictures/"+data.logo+"); background-image:linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%),url(Pictures/"+data.logo+"); background-size: auto, 100%;'></div>");
            for (var i = 0; i < data.arreglo.length; i++) {
                console.log(data.arreglo[i].nombre);
                console.log(data.arreglo[i].precio);
                $("#prueba").append(
                        /*"<b id='n" + i + "'>" + data.arreglo[i].nombre + "</b>",
                        "<b id='p" + i + "'>Precio: $" + data.arreglo[i].precio + "</b><br>",
                        "<img src='" + data.arreglo[i].ruta + "' alt='foto' width='100' height='100'>",
                        "<button class='btn' onclick='cli(" + i + ")' id=" + i + ">Añadir</button><br><br>"    overflow: hidden;        */
                    
        "<div id='item' style='cursor:pointer; width:300px; overflow: hidden;'> <img style='padding:0px; margin-right: 10px; width: 150px; height: 200px' id='perfil' src=Pictures/" + data.arreglo[i].ruta + "><p class='titulo_uno' id='n"+ i +"'>"+ data.arreglo[i].nombre +"</p><p style='float: right; margin: 0px 20px 0px 0px;' class='descripcion2' id='p"+ i +"'>" +"$ "+ data.arreglo[i].precio + "<input id='c' type='text' class='pass' value='1'/><button style='border-radius:100%;  margin: 0px 0px 5px 5px; ' class='btn' onclick='cli(" + i + ")' id=" + i + ">+</button><br>" +"</div>"
    
                        );
            }

        }
    });
});

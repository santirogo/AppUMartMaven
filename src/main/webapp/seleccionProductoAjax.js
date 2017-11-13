function cierraSesion() {
    $.ajax({
        url: 'CerrarSesionServlet',
        type: 'GET',
        dataType: 'json',
        success: function (data) {


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


}
;

function cli(id) {
    console.log("Holaaaaaa " + id);
    nombre = $("#n" + id).text();
    tienda = $("#encabezado").text();
    cantidad = $("#c" + id).val();
    var opcion = "1";
    //if(cantidad !== ""){
    if (cantidad === "") {
        alert("Debe escribir una cantidad");
    } else {
        //if(isNaN(cantidad)){
        // alert("La cantidad tiene que ser un número");
        //}else{
        console.log("nombre: "+nombre);
        console.log("tienda: "+tienda);
        console.log("cantidad: " + cantidad);
        $.ajax({
            url: 'AgregarCarritoServlet',
            type: 'POST',
            data: {nombre: nombre, tienda: tienda, cantidad: cantidad, opcion: opcion},
            dataType: 'json',
            success: function (data) {

                $("#respuesta").append("<b>Se agregó el producto </b>" + data.nombre + " <b>satisfactoriamente</b>");

                /////////////////////////


            }
        });


        //}
    }
    //}
}

$(document).ready(function () {

    $.ajax({
        url: 'SeleccionTiendaServlet',
        type: 'POST',
        dataType: 'json',
        success: function (data) {
            /*$("#encabezado").append("<h1 style='color: black;'>" + data.empresa + "</h1>");*/


            $("#encabezado").append(data.empresa);
            $("#xx").append(data.empresa);
            $("#Perfil").append("<div class='perfil' id='perfilres' style='background-image:-webkit-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%),url(Pictures/" + data.logo + "); background-image:-moz-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%),url(Pictures/" + data.logo + "); background-image:linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%),url(Pictures/" + data.logo + "); background-size: auto, 100%;'></div>");
            for (var i = 0; i < data.arreglo.length; i++) {
                console.log("Imagen: " + data.arreglo[i].ruta);
                console.log("Nombre: " + data.arreglo[i].nombre);
                console.log("Precio: " + data.arreglo[i].precio);
                $("#prueba").append(
                        /*"<b id='n" + i + "'>" + data.arreglo[i].nombre + "</b>",
                         "<b id='p" + i + "'>Precio: $" + data.arreglo[i].precio + "</b><br>",
                         "<img src='" + data.arreglo[i].ruta + "' alt='foto' width='100' height='100'>",
                         "<button class='btn' onclick='cli(" + i + ")' id=" + i + ">Añadir</button><br><br>"    overflow: hidden;        */

                        "<div  id='item' style='cursor:pointer; width:300px; overflow: hidden;'> <img style='padding:0px; margin-right: 10px; width: 150px; height: 200px' id='perfil' src=Pictures/" + data.arreglo[i].ruta + "><p class='titulo_uno' id='n" + i + "'>" + data.arreglo[i].nombre + "</p><p style='float: right; margin: 0px 20px 0px 0px;' class='descripcion2' id='p" + i + "'>" + "$ " + data.arreglo[i].precio + "<input id='c"+i+"' type='text' class='pass' value='1'/><button style='border-radius:100%;  margin: 0px 0px 5px 5px; ' class='btn' onclick='cli(" + i + ")' id=" + i + ">+</button><br>" + "</div>"

                        );
                $("#div").append(
                        /*"<b id='n" + i + "'>" + data.arreglo[i].nombre + "</b>",
                         "<b id='p" + i + "'>Precio: $" + data.arreglo[i].precio + "</b><br>",
                         "<img src='" + data.arreglo[i].ruta + "' alt='foto' width='100' height='100'>",
                         "<button class='btn' onclick='cli(" + i + ")' id=" + i + ">Añadir</button><br><br>"    overflow: hidden;        */

                        //"<div  id='item' style='cursor:pointer; width:300px; overflow: hidden;'> <img style='padding:0px; margin-right: 10px; width: 150px; height: 200px' id='perfil' src=Pictures/" + data.arreglo[i].ruta + "><p class='titulo_uno' id='n" + i + "'>" + data.arreglo[i].nombre + "</p><p style='float: right; margin: 0px 20px 0px 0px;' class='descripcion2' id='p" + i + "'>" + "$ " + data.arreglo[i].precio + "<input id='c' type='text' class='pass' value='1'/><button style='border-radius:100%;  margin: 0px 0px 5px 5px; ' class='btn' onclick='cli(" + i + ")' id=" + i + ">+</button><br>" + "</div>",
                        "<div class='column nature' id='res'><div class='content'> <center><img src=Pictures/Prod/" + data.arreglo[i].ruta + " alt='Imagen Sin Ruta' style='width:100%;'></center> <div class='content2'> <center><p class='empresa' id='n" + i + "'>" + data.arreglo[i].nombre + "</p> </center><center><p class='puntuacion' id='p" + i + "'>" + "$ " + data.arreglo[i].precio + "<input id='c"+i+"' type='text' class='pass' value='1'/><button style='border-radius:100%;  margin: 0px 0px 5px 5px;  height: 30px; width: 30px; cursor:pointer'' onclick='cli(" + i + ")' id=" + i + ">+</button></center></p></div></div></div>",
                        );
            }

        }
    });
});

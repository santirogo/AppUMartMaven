$(document).ready(function () {

    $.ajax({
        url: 'MostrarTiendaServlet',
        type: 'get',
        dataType: 'json',
        success: function (data) {
            console.log("Fondo: " + data.idfondo);
            console.log("Nombre: " + data.nombre);
            console.log("Puntuacion: " + data.puntuacion);

            $('#div').append(
                    //"<div class='perfil'><img src=" + data.idfondo + " width='100' height='100'></div><br>",-->
                    "<div class='avatar' id='perfilres' style='background-image:-webkit-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%),url(Pictures/" + data.idfondo + "); background-image:-moz-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%),url(Pictures/" + data.idfondo + "); background-image:linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%),url(Pictures/" + data.idfondo + "); background-size: auto, 100%;'></div>"
                    );
            $('#nombre').append(
                    "<h1 id='nombre2'>" + data.nombre + "</h1>"
                    );
            $('#punt').append(
                    "<p>Puntuacion: " + data.puntuacion + "</p>"
                    );
            $('#titulo').append(
                    data.nombre
                    );
            
        },
        error: function () {
        }
    });



});


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


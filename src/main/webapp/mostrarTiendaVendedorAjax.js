$(document).ready(function () {

    $.ajax({
        url: 'MostrarTiendaServlet',
        type: 'get',
        dataType: 'json',
        success: function (data) {


            $('#div').append(
                    "<a><img src=" + data.idfondo + " width='100' height='100'></a><br>",
                    "<a>" + data.nombre + "</a><br>",
                    "<a>Puntuación: " + data.puntuacion + "</a><br>"

                    );
            console.log("waaaaa");

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


};


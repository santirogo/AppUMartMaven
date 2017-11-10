$(document).ready(function () {


    $.ajax({
        url: 'ListarTiendasServlet',
        type: 'get',
        dataType: 'json',
        success: function (data) {
            
//            -----------------------------------------------------------
//            var tam = data.tiendas.length;
//            var rows = parseInt(tam/3)+1;
//
//            console.log("ROOOOWWSS "+rows);
//            console.log( $('.container-fluid'));
//
//            for (var i = 0; i < rows; i++) {
//                $("#containerP").append(
//                        "<div class='row' id='r"+i+"'></div>"
//                        );
//            }
//            console.log("METER ELEMENTOS");
//            var cont = 0;
//            var init = 0;
//            var i = 0;
//            var j = 0;
//            var esq = 0;
//            while(i < rows){
//                console.log("I "+i);
//                while(j<tam){
//                    console.log("J "+j);
//                    if(cont<3){
//                        if(cont===0){esq=j;}
//                        console.log("ESQ "+esq);
//                        console.log("CONT "+cont);
//                        $("#r"+i).append(
//                                "<div class='col-sm-4'>"+
//                                "<a href = 'seleccionProducto.jsp'><button class='btn' onclick='sendName(" + data.tiendas[i].id + ")'>\n\
//                                <img src=" + data.tiendas[i].idfondo + " width='100' height='100'></button></a><br>",
//                               "<a>" + data.tiendas[i].nombre + "</a><br>",
//                               "<a>Vendedor: " + data.tiendas[i].vendedor + "</a><br>",
//                               "<a>Puntuación: " + data.tiendas[i].puntuacion + "</a><br>"
//                                +"</div>"
//                                );
//                        cont++;
//                    }
//                    if((j>0 && j===(esq+2)) || j===(tam-1)){break;}
//                    j++;
//                }
//                cont = 0;
//                j++;
//                i++;
//            }
//            -----------------------------------------------------------

            for (var i = 0; i < data.tiendas.length; i++) {
                console.log(data.tiendas[i].idfondo);
                console.log(data.tiendas[i].nombre);
                $('#div').append(

                            "<div id='item' style='cursor:pointer' onclick='sendName(" + data.tiendas[i].id + ")'><a href ='seleccionProducto.jsp'><img id='perfil' src=Pictures/" + data.tiendas[i].idfondo + "><p id='titulo_uno'>" + data.tiendas[i].nombre + "</p><p id='descripcion'>Vendedor: " + data.tiendas[i].vendedor + "</p><p id='descripcion2'>Puntuación: " + data.tiendas[i].puntuacion + "</p></a></div>",
                            );
            }
        },
        error: function () {
        }
    });
});
function sendName(idTienda) {

    console.log("Entreeee a la funcioooooon con id:  " + idTienda);
    $.ajax({
        url: 'SeleccionTiendaServlet',
        type: 'get',
        data: {nombre: idTienda},
        dataType: 'json',
        success: function (data) {
            console.log("Nombresito de tienda enviado");
            window.location.href = "seleccionProducto.jsp";
        },
        error: function () {
            console.log("Error en el ajax");
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

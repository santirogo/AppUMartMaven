/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {


    $.ajax({
        url: 'ListarPedidosServlet',
        type: 'get',
        dataType: 'json',
        success: function (data) {

            if (data !== null) {

                for (var i = 0; i < data.pedidos.length; i++) {
                    console.log(data.pedidos[i].id);
                    console.log(data.pedidos[i].vendedor);
                    console.log(data.pedidos[i].comprador);

                    if (data.pedidos[i].checker === "true") {

                        $('#ped').append(
                                "<div class='column nature' style='cursor:pointer' onclick='sendID('" + data.pedidos[i].id + "')' id='res'>" + data.pedidos[i].comprador + "</div>",
                                );
                    }
                }

                for (var i = 0; i < data.pedidos.length; i++) {
                    console.log(data.pedidos[i].id);
                    console.log(data.pedidos[i].vendedor);
                    console.log(data.pedidos[i].comprador);

                    if (data.pedidos[i].checker === "false") {

                        $('#ped').append(
                                "<div><button onclick=sendID('" + data.pedidos[i].id + "')>" + data.pedidos[i].comprador + "</button></div>",
                                );
                    }
                }
            } else {

                $('#ped').append(
                        "<div class='column nature' style='cursor:pointer'  id='res'>No tienes pedidos</div>",
                        );

            }
        },
        error: function () {
        }
    });
});


function sendID(id) {
     
    
   var entrega="false";
   var opcion ="0";

    $.ajax({
        url: 'InfoPedidoServlet',
        type: 'get',
        data:{entrega:entrega,id:id,opcion:opcion},
        dataType: 'json',
        success: function () {
           window.location.href="InfoPedido.jsp";

        },
        error: function () {
        }
    });

}


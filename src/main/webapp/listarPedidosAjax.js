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
     window.location.href="InfoPedido.jsp";
    
   var entrega="false";

    $.ajax({
        url: 'InfoPedidoServlet',
        type: 'get',
        data:{entrega:entrega,id:id},
        dataType: 'json',
        success: function (data) {
           

            if (data !== null) {

                for (var i = 0; i < data.pedidos.length; i++) {
                    console.log(data.pedidos[i].id);
                    console.log(data.pedidos[i].vendedor);
                    console.log(data.pedidos[i].comprador);

                        $('#pedido').append(
                            "<div><p>Pedido de: " + data.pedidos[i].comprador + "</p><br><p>Productos: " + data.pedidos[i].productos + "</p><br><p>" + data.pedidos[i].comentario + "</p></div>"
                            );
                   
                if(data.pedidos[i].checker==="false"){
                    
                    $('#pedido').append(
                            "<div><button onclick=Entrega()>Confirmar Entrega</button></div>"
                                );
                    
                }
                }

            } else {

                $('#ped').append(
                        "<div class='column nature' style='cursor:pointer'  id='res'>Error cargando pedido </div>",
                        );

            }
        },
        error: function () {
        }
    });

}

function Entrega(){
    
    var entrega="true";
    
    $.ajax({
        url: 'ListarPedidosServlet',
        type: 'get',
        data:{entrega:entrega},
        dataType: 'json',
        success: function () {
},
        error: function () {
        }
    });
    
    
}
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {

    var entrega="false";
    
    $.ajax({
        url: 'InfoPedidoServlet',
        type: 'post',
        data:{entrega:entrega},
        dataType: 'json',
        success: function(data) {

            if (data !== null) {

                for (var i = 0; i < data.pedidos.length; i++) {
                    console.log(data.pedidos[i].id);
                    console.log(data.pedidos[i].vendedor);
                    console.log(data.pedidos[i].comprador);
                        
                        $('#ped').append(

                            "<center> <table style='border: none'><tr><th>Cliente</th><th></th><th id='cliente'>" +data.pedidos[i].comprador+ "</th></tr><tr><th></th><th></th><th></th></tr> <tr><th></th><th id='productos'>"+ data.pedidos[i].productos +"</th><th></th></tr>    <tr><th></th><th></th><th></th></tr>   <tr><th></th><th id='comentario'>"+ data.pedidos[i].comentario +"</th><th></th></tr>   </table>  </center> "

                            );

                   
                if(data.pedidos[i].checker==="false"){
                    
                    $('#pedido').append(
                            "<div><button onclick=Entrega('"+data.pedidos[i].id+"')>Confirmar Entrega</button></div>"
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
});


function Entrega(id){
    
    var entrega="true";
    
    $.ajax({
        url: 'InfoPedidoServlet',
        type: 'get',
        data:{entrega:entrega,id:id},
        dataType: 'json',
        success: function () {
            window.location.href = "listarPedidos.jsp";
        
},
        error: function () {
        }
    });
    
    
}



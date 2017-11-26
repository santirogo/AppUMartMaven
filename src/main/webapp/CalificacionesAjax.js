$(document).ready(function(){
        
    $.ajax({
        url: 'CalificacionesServlet',
        type: 'get',
        dataType: 'json',
        success: function (data) {

            for (var i = 0; i < data.pedidos.length; i++) {
                console.log(data.pedidos[i].id);
                console.log(data.pedidos[i].vendedor);
                console.log(data.pedidos[i].comprador);
                
//                var vendedor = "'"+data.pedidos[i].vendedor+"'";
//                console.log(vendedor);
                
                $('#pedidos').append(
                        //"<div style='cursor:pointer' onclick='sendName(" + data.pedidos[i].id + ")'><a href ='seleccionProducto.jsp'><img id='perfil' src=Pictures/" + data.pedidos[i].idfondo + "><p id='titulo_uno'>" + data.pedidos[i].nombre + "</p><p id='descripcion'>Vendedor: " + data.pedidos[i].vendedor + "</p><p id='descripcion2'>Puntuación: " + data.pedidos[i].puntuacion + "</p></a></div>",
                        "<div class='column nature' id='res'><p>ID del pedido: "+ data.pedidos[i].id +"</p><br><p>Vendedor: "+ data.pedidos[i].vendedor +"</p><br><p>Comprador: "+ data.pedidos[i].comprador +"</p><br><p>Productos: "+ data.pedidos[i].productos +"</p><br><input id='calificacion' type='number' name='quantity' min='0' max='5' step='0.5'><br><button type='button' onclick=\"sendID('"+data.pedidos[i].vendedor+"',"+data.pedidos[i].id + ")\">Calificar!</button></div>",
                        );
            }
        },
        error: function () {
            alert("ERROR DESCONOCIDO");
        }
    });
        
    }
);

function sendID(cVendedor,idPedido){
        
    var id = idPedido;
    var cali = $('#calificacion').val();
    var seller = cVendedor;
    console.log(cali+"°"+seller);
    
    $.ajax({
        
        url:'CalificacionesServlet',
        type:'POST',
        data:{id:id,cali:cali,seller:seller},
        dataType: 'json',
        success: function(data) {
            if (data.califico) {
                console.log("Info enviada");
                alert("TU CALIFICACIÓN FUE ENVIADA EXITOSAMENTE!!!");
            } else {
                console.log("Info no enviada");
                alert("TU CALIFICACIÓN NO FUE ENVIADA EXITOSAMENTE!!!");
            }
            location.reload();
        },
        error: function(){
            console.log("Se jodio papá");
            alert("ERROR FATAL");
        }
    });
}
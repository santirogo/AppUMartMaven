$(document).ready(function () {


    $.ajax({
        url: 'ProductosBodegaServlet',
        type: 'get',
        dataType: 'json',
        success: function (data) {

            for (var i = 0; i < data.productos.length; i++) {
                
                $('#div').append(
                        "<a><img src=" + data.productos[i].imagen + " width='100' height='100'></button></a><br>",
                        "<a>Producto: " + data.productos[i].nombre + "</a><br>",
                        "<a>Categoría: " + data.productos[i].categoria + "</a><br>",
                        "<a>Precio Unitario: " + data.productos[i].precio + "</a><br>",
                        "<a>Cantidad: " + data.productos[i].cantidad + "</a><br>"

                        );
            }
        },
        error: function () {
        }
    });
});

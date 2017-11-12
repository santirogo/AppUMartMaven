$(document).ready(function () {


    $.ajax({
        url: 'ProductosBodegaServlet',
        type: 'get',
        dataType: 'json',
        success: function (data) {
            $('#logo').append(
                    "<div class='avatar' id='perfilres' style='background-image:-webkit-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%),url(Pictures/VendedorLogo.png); background-image:-moz-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%),url(Pictures/VendedorLogo.png); background-image:linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%),url(Pictures/VendedorLogo.png); background-size: auto, 100%;'></div>"
                    //"<img src='Pictures/VendedorLogo.png'>"
                    );
            for (var i = 0; i < data.productos.length; i++) {

                $('#div').append(
                        //"<a><img src=" + data.productos[i].imagen + " width='100' height='100' class='avatar'></button></a><br>",
                        //"<a>Producto: " + data.productos[i].nombre + "</a><br>",
                        //"<a>Categoría: " + data.productos[i].categoria + "</a><br>",
                        //"<a>Precio Unitario: " + data.productos[i].precio + "</a><br>",
                        //"<a>Cantidad: " + data.productos[i].cantidad + "</a><br>",
                        "<div class='column nature' id='res'><div class='content1'> <center><img src=Pictures/Prod/" + data.productos[i].imagen + " alt='Imagen Sin Ruta' style='width:100%;'></center> <div class='content2'> <center><p class='empresa'>" + data.productos[i].nombre + "</p> </center><center><p class='puntuacion' id='p" + i + "'>Precio Unitario: " + "$ " + data.productos[i].precio + "<p class='empresa'>Categoria: " + data.productos[i].categoria + "</p><p class='empresa'>Cantidad: " + data.productos[i].cantidad + "</p></center></p></div></div></div>",
                        );

            }
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

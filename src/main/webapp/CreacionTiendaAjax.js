$(document).ready(function () {
    
    $('#login').click(function () {

        var nombre = $('#nombrecito').val();
        var fondo = $('#Fond').val();
        $.ajax({ 
            url: 'CrearTiendaServlet',
            type: 'POST',
            data: {nombre:nombre,fondo:fondo},
            dataType: 'json',
            success: function (data) {
                
                if (data.confirmacion === "ACK") {
                    console.log("DATOS CORRECTOS");
                    alert("Tienda creada exitosamente");
                    window.location.href = "mostrarTiendaVendedor.jsp";
                } else {
                    console.log("DATOS INCORRECTOS");
                    alert("Hubo un error al crear la tienda");
                }
            },

            error: function () {
            }
        });
    });
});



$(document).ready(function () {
    
    $('#login').click(function () {

        var nombre = $('#nombre').val();
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



/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {

    comboBox();
    $("#boton").click(function () {
        var nombre = $("#nombre").val();
        var categoria = $("#combobox").val();
        var precio = $("#precio").val();
        var cantidad = $("#cantidad").val();
        var imagen = $('#imagen').val();

        $.ajax({
            url: 'AgregarProductoServlet',
            type: 'POST',
            data: {nombre: nombre, categoria: categoria, precio: precio, cantidad: cantidad, imagen: imagen},
            dataType: 'json',
            success: function (data) {
                if (data.confirmacion === "ACK") {
                    console.log("DATOS CORRECTOS");
                    alert("Se agregó el producto " + nombre + " a tu tienda.");
                } else {
                    console.log("DATOS INCORRECTOS");
                    alert("No se pudo agregar este producto a tu tienda.");
                }
            }



        });
    });
});
function comboBox() {
    $.ajax({
        url: 'AgregarProductoServlet',
        type: 'GET',
        dataType: 'json',
        success: function (data) {

            for (var i = 0; i < data.categorias.length; i++) {
                $("#combobox").append(
                        "<option id='categoria' value=" + data.categorias[i].cat + ">" + data.categorias[i].cat + "</option>"


                        );

            }

        }



    });


};



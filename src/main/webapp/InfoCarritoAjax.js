$(document).ready(function () {


    //var opcion = $('#opcion').val();

    $.ajax({
        url: 'MainMenuServlet',
        type: 'GET',
        data: {},
        dataType: 'json',
        success: function (data) {

            var i = 0;
            for (i = 0; i < data.Productos.length; i++) {
                console.log(data.Productos[i].nombre);
                console.log(data.Productos[i].precio);
                $('#carlos').append(
                        
                        //"<a href = 'seleccionProducto.jsp'><button class='btn' onclick='sendName(" + data.Productos[i].nombre + ")'>\n\"",
                        "<p>" + data.Productos[i].nombre + "</p><p>" + data.Productos[i].cantidad + "</p><p>" + data.Productos[i].precio + "</p><br>",
                        "<form>",
                        "<input type='text' id='opcion' value='2' style='display: none'>",
                        "<input type='text' id='idprod' value='" + data.Productos[i].ID + "' style='display: none'>",
                        "<input type='submit'>",
                        "</form>"
                        
                        );

            }

//            $('#carlos').append(
//                    "<p>" + data.Productos[data.Productos.length].Total + "</p><br>"
//                    );

        },
        error: function () {
            $('#ack').val("ERROR FATAL");
        }
    });



    $('.btn').click(function () {




    });



    ;


});

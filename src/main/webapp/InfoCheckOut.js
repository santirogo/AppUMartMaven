$(document).ready(function () {


        var opcion1 = "3";
        var comment =$('#comment').val();
        
  
        $.ajax({
            url: 'noseutiliza',
            type: 'GET',
            data: {opcion1: opcion1, comment: comment},
            dataType: 'json',
            success: function(data) {
                console.log("Info enviada");
     
            },
            error: function(){
                $('#ack').val("ERROR FATAL");
            }
        });
        });
    


function mifuncion() {

    var opcion1 = "3";
    var comment = $('#comment').val();


    $.ajax({
        url: 'InfoCheckOutServlet',
        type: 'GET',
        data: {opcion1: opcion1, comment: comment},
        dataType: 'json',
        success: function (data) {
            console.log("Info enviada");
            mostrarNotificacion();
            location = 'listarTiendas.jsp';
        },
        error: function () {
            $('#ack').val("ERROR FATAL");
        }
    });
    
    
    
    }
$(document).ready(function () {


        var opcion1 = "0";
        
  
        $.ajax({
            url: 'InfoCheckOutServlet',
            type: 'GET',
            data: {opcion1: opcion1},
            dataType: 'json',
            success: function(data) {
                
     
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
            
        },
        error: function () {
            $('#ack').val("ERROR FATAL");
        }
    });
    
    location = 'listarTiendas.jsp';
    
    
    
}

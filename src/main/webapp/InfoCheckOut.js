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
        success: function () {
            console.log("Info enviada");
            
            //location = 'listarTiendas.jsp';
            
        },
        error: function () {
            $('#ack').val("ERROR FATAL");
        }
    });
    
    
    
    
    
    
}
       

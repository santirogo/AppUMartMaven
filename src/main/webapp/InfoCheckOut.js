$(document).ready(function(){
    
    function mifuncion(){
        
        var opcion1 = "3";
        var comment =$('#comment').val();
        
  
        $.ajax({
            url:'InfoCheckOutServlet1',
            type:'GET',
            data:{opcion1:opcion1, comment:comment},
            dataType: 'json',
            success: function(data) {
                console.log("Info enviada");
//                var i=0;
//               for ( i = 0; i < data.Productos.length; i++) {
//                console.log(data.Productos[i].nombre);
//                console.log(data.Productos[i].precio);
//                $('#carlos').append(
//                        //"<a href = 'seleccionProducto.jsp'><button class='btn' onclick='sendName(" + data.Productos[i].nombre + ")'>\n\"",
//                        "<p>" + data.Productos[i].nombre + "</p>",
//                        "<p>" + data.Productos[i].cantidad + "</p>",
//                        "<p>" + data.Productos[i].precio + "</p><br>",
//                        
//                                
//                        );
//               
//            }
//            
//                $('$carlos').append(
//                    
//                         "<p>"+ data.Productos[i].precio +"</p><br>",
//                        );
//                
            },
            error: function(){
                $('#ack').val("ERROR FATAL");
            }
        });
        }
        });

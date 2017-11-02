/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
    $('#loginboton').click(function(){

        var correo = $('#correo').val();
        var password = $('#password').val();
        $.ajax({
            url:'LoginUsuarioServlet',
            type:'post',
            data:{correo:correo,password:password},
            dataType: 'json',
            success: function(data) {
                if (data.confirmacion === "ACK") {
                    console.log("DATOS CORRECTOS");
                    document.getElementById("ack").innerHTML = "DATOS CORRECTOS";
                    window.location.href = "listarTiendas.jsp";
                } else {
                    console.log("DATOS INCORRECTOS");
                    document.getElementById("ack").innerHTML = "Datos incorrectos";
                }
                
            },

            error: function(){
                $('#ack').val("ERROR FATAL");
                
            }
        });
    });
   
    $("#loginn").submit(function (e) {
        e.preventDefault();
        $(".login").addClass("init-shake");
        setTimeout(function () {
            $(".login").removeClass("init-shake");
        }, 1000);
    });

    $(".pass").on("keypress", function () {
        $(".arrow").css("opacity", "1");
    });
                
});

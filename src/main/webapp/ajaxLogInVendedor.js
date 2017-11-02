/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $('#loginboton').click(function () {

        $(document).ready(function () {
            $('#loginboton').click(function () {

                var correo = $('#correo').val();
                var password = $('#password').val();



                $.ajax({
                    url: 'LoginVendedorServlet',
                    type: 'post',
                    data: {correo: correo, password: password},
                    dataType: 'json',
                    success: function (data) {
                        if (data.confirmacion === "ACK") {
                            console.log("DATOS CORRECTOS");
                            window.location.href = "mostrarTiendaVendedor.jsp";

                        } else {
                            console.log("DATOS INCORRECTOS");
                            alert("El nombre de usuario y la contraseña que ingresaste no coinciden con nuestros registros. Inténtalo de nuevo. v1");
                        }
                    },

                    error: function () {
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
    });
});

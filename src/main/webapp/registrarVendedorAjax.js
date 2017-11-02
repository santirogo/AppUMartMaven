function mostrar() {
    document.getElementById('oculto').style.display = 'block';
}

function ocultar() {
    document.getElementById('oculto').style.display = 'none';
}
function mostrarBoton() {
    console.log("jejej");
    document.getElementById('oculto2').style.display = 'block';
    $('#oculto2').click(function () {
        console.log("click");
        window.location.href= "CreacionTienda.jsp";
        console.log("click2222222222222222222222");

    });

}

function ocultarBoton() {
    document.getElementById('oculto2').style.display = 'none';
}

$(document).ready(function () {
    ocultar();
    ocultarBoton();
    $('#boton').click(function () {

        var correo = $('#correo').val();
        var celular = $('#celular').val();
        var nombre = $('#nombre').val();
        var pass = $('#password').val();
        var password = $('#password2').val();


        if (pass === password) {
            $.ajax({
                url: 'RegistrarVendedorServlet',
                type: 'post',
                data: {correo: correo, celular: celular, nombre: nombre, password: password},
                dataType: 'json',
                success: function (data) {
                    if (data.existe === "no" && data.sergista === "si") {
                        console.log("no existe");
                        //document.getElementById("conf1").innerHTML = "DATOS CORRECTOS";

                        mostrar();


                    } else if (data.sergista === "no") {
                        console.log("No es de la sergio");
                        alert("Debe ser un correo de la Universidad Sergio Arboleda.");
                    } else {
                        alert("Ya existe un usuario con este correo.");

                    }
                },
                error: function () {
                    $('#conf1').val("ERROR FATAL");
                }
            });
        } else {
            alert("Las contraseñas no coinciden.");
        }
    });
    $('#confirmar').click(function () {

        console.log("Entreeee al segundo botoooooooooon");
        var codigo = $('#codigo').val();

        $.ajax({
            url: 'RegistrarVendedorServlet',
            type: 'get',
            data: {codigo: codigo},
            dataType: 'json',
            success: function (data) {
                if (data.registro === "ok") {
                    console.log("ja ja ja");
                    mostrarBoton();

                } else {
                    alert("El código es incorrecto.");
                }
            },
            error: function () {
                console.log("Error fatal");
            }
        });

    });
});
//function redirigir() {
//    
//    console.log("funcion");
//    window.location.href = "CreacionTienda.jsp";
//
//};



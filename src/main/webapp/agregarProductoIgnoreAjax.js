$(document).ready(function () {
    
    $('#marbbq').click(function () {

        var producto = 1;
        var precio = $('#precio').val();
        var cantidad = $('#cantidad').val();
        var celular = $('#celular').val();
        $.ajax({ 
            url: 'http://localhost:8080/AppuMart/AgregarProductoServlet',
            type: 'post',
            data: {producto: producto, precio: precio, cantidad: cantidad, celular: celular},
            dataType: 'json',
            success: function (data) {
                
                if (data.confirmacion === "ACK") {
                    console.log("DATOS CORRECTOS");
                    document.getElementById("ack").innerHTML = "Producto: "+producto+" -> Agregado exitosamente.";
                    $("#ack").append("<p>Las contraseñas no coinciden</p>");
                } else {
                    console.log("DATOS INCORRECTOS");
                    document.getElementById("ack").innerHTML = "Hubo un problema en el proceso, intente nuevamente.";
                }
            },

            error: function () {
                $('#ack').val("ERROR");
            }
        });
    });
    
        $('#marlimon').click(function () {

        var producto = 2;
        var precio = $('#precio').val();
        var cantidad = $('#cantidad').val();
        var celular = $('#celular').val();
        $.ajax({ 
            url: 'http://localhost:8080/AppuMart/AgregarProductoServlet',
            type: 'post',
            data: {producto: producto, precio: precio, cantidad: cantidad, celular: celular},
            dataType: 'json',
            success: function (data) {
                
                if (data.confirmacion === "ACK") {
                    console.log("DATOS CORRECTOS");
                    document.getElementById("ack").innerHTML = "Producto: "+producto+" -> Agregado exitosamente.";
                    $("#ack").append("<p>Las contraseñas no coinciden</p>");
                } else {
                    console.log("DATOS INCORRECTOS");
                    document.getElementById("ack").innerHTML = "Hubo un problema en el proceso, intente nuevamente.";
                }
            },

            error: function () {
                $('#ack').val("ERROR");
            }
        });
    });
    
        $('#marnatu').click(function () {

        var producto = 3;
        var precio = $('#precio').val();
        var cantidad = $('#cantidad').val();
        var celular = $('#celular').val();
        $.ajax({ 
            url: 'http://localhost:8080/AppuMart/AgregarProductoServlet',
            type: 'post',
            data: {producto: producto, precio: precio, cantidad: cantidad, celular: celular},
            dataType: 'json',
            success: function (data) {
                
                if (data.confirmacion === "ACK") {
                    console.log("DATOS CORRECTOS");
                    document.getElementById("ack").innerHTML = "Producto: "+producto+" -> Agregado exitosamente.";
                    $("#ack").append("<p>Las contraseñas no coinciden</p>");
                } else {
                    console.log("DATOS INCORRECTOS");
                    document.getElementById("ack").innerHTML = "Hubo un problema en el proceso, intente nuevamente.";
                }
            },

            error: function () {
                $('#ack').val("ERROR");
            }
        });
    });
    
        $('#marpollo').click(function () {

        var producto = 4;
        var precio = $('#precio').val();
        var cantidad = $('#cantidad').val();
        var celular = $('#celular').val();
        $.ajax({ 
            url: 'http://localhost:8080/AppuMart/AgregarProductoServlet',
            type: 'post',
            data: {producto: producto, precio: precio, cantidad: cantidad, celular: celular},
            dataType: 'json',
            success: function (data) {
                
                if (data.confirmacion === "ACK") {
                    console.log("DATOS CORRECTOS");
                    document.getElementById("ack").innerHTML = "Producto: "+producto+" -> Agregado exitosamente.";
                    $("#ack").append("<p>Las contraseñas no coinciden</p>");
                } else {
                    console.log("DATOS INCORRECTOS");
                    document.getElementById("ack").innerHTML = "Hubo un problema en el proceso, intente nuevamente.";
                }
            },

            error: function () {
                $('#ack').val("ERROR");
            }
        });
    });
    
        $('#mamaia').click(function () {

        var producto = 5;
        var precio = $('#precio').val();
        var cantidad = $('#cantidad').val();
        var celular = $('#celular').val();
        $.ajax({ 
            url: 'http://localhost:8080/AppuMart/AgregarProductoServlet',
            type: 'post',
            data: {producto: producto, precio: precio, cantidad: cantidad, celular: celular},
            dataType: 'json',
            success: function (data) {
                
                if (data.confirmacion === "ACK") {
                    console.log("DATOS CORRECTOS");
                    document.getElementById("ack").innerHTML = "Producto: "+producto+" -> Agregado exitosamente.";
                    $("#ack").append("<p>Las contraseñas no coinciden</p>");
                } else {
                    console.log("DATOS INCORRECTOS");
                    document.getElementById("ack").innerHTML = "Hubo un problema en el proceso, intente nuevamente.";
                }
            },

            error: function () {
                $('#ack').val("ERROR");
            }
        });
    });
    
        $('#menta').click(function () {

        var producto = 6;
        var precio = $('#precio').val();
        var cantidad = $('#cantidad').val();
        var celular = $('#celular').val();
        $.ajax({ 
            url: 'http://localhost:8080/AppuMart/AgregarProductoServlet',
            type: 'post',
            data: {producto: producto, precio: precio, cantidad: cantidad, celular: celular},
            dataType: 'json',
            success: function (data) {
                
                if (data.confirmacion === "ACK") {
                    console.log("DATOS CORRECTOS");
                    document.getElementById("ack").innerHTML = "Producto: "+producto+" -> Agregado exitosamente.";
                    $("#ack").append("<p>Las contraseñas no coinciden</p>");
                } else {
                    console.log("DATOS INCORRECTOS");
                    document.getElementById("ack").innerHTML = "Hubo un problema en el proceso, intente nuevamente.";
                }
            },

            error: function () {
                $('#ack').val("ERROR");
            }
        });
    });
    
        $('#canela').click(function () {

        var producto = 7;
        var precio = $('#precio').val();
        var cantidad = $('#cantidad').val();
        var celular = $('#celular').val();
        $.ajax({ 
            url: 'http://localhost:8080/AppuMart/AgregarProductoServlet',
            type: 'post',
            data: {producto: producto, precio: precio, cantidad: cantidad, celular: celular},
            dataType: 'json',
            success: function (data) {
                
                if (data.confirmacion === "ACK") {
                    console.log("DATOS CORRECTOS");
                    document.getElementById("ack").innerHTML = "Producto: "+producto+" -> Agregado exitosamente.";
                    $("#ack").append("<p>Las contraseñas no coinciden</p>");
                } else {
                    console.log("DATOS INCORRECTOS");
                    document.getElementById("ack").innerHTML = "Hubo un problema en el proceso, intente nuevamente.";
                }
            },

            error: function () {
                $('#ack').val("ERROR");
            }
        });
    });
    
        $('#azul').click(function () {

        var producto = 8;
        var precio = $('#precio').val();
        var cantidad = $('#cantidad').val();
        var celular = $('#celular').val();
        $.ajax({ 
            url: 'http://localhost:8080/AppuMart/AgregarProductoServlet',
            type: 'post',
            data: {producto: producto, precio: precio, cantidad: cantidad, celular: celular},
            dataType: 'json',
            success: function (data) {
                
                if (data.confirmacion === "ACK") {
                    console.log("DATOS CORRECTOS");
                    document.getElementById("ack").innerHTML = "Producto: "+producto+" -> Agregado exitosamente.";
                    $("#ack").append("<p>Las contraseñas no coinciden</p>");
                } else {
                    console.log("DATOS INCORRECTOS");
                    document.getElementById("ack").innerHTML = "Hubo un problema en el proceso, intente nuevamente.";
                }
            },

            error: function () {
                $('#ack').val("ERROR");
            }
        });
    });
    
        $('#cheetos').click(function () {

        var producto = 9;
        var precio = $('#precio').val();
        var cantidad = $('#cantidad').val();
        var celular = $('#celular').val();
        $.ajax({ 
            url: 'http://localhost:8080/AppuMart/AgregarProductoServlet',
            type: 'post',
            data: {producto: producto, precio: precio, cantidad: cantidad, celular: celular},
            dataType: 'json',
            success: function (data) {
                
                if (data.confirmacion === "ACK") {
                    console.log("DATOS CORRECTOS");
                    document.getElementById("ack").innerHTML = "Producto: "+producto+" -> Agregado exitosamente.";
                    $("#ack").append("<p>Las contraseñas no coinciden</p>");
                } else {
                    console.log("DATOS INCORRECTOS");
                    document.getElementById("ack").innerHTML = "Hubo un problema en el proceso, intente nuevamente.";
                }
            },

            error: function () {
                $('#ack').val("ERROR");
            }
        });
    });
    
        $('#ponky').click(function () {

        var producto = 10;
        var precio = $('#precio').val();
        var cantidad = $('#cantidad').val();
        var celular = $('#celular').val();
        $.ajax({ 
            url: 'http://localhost:8080/AppuMart/AgregarProductoServlet',
            type: 'post',
            data: {producto: producto, precio: precio, cantidad: cantidad, celular: celular},
            dataType: 'json',
            success: function (data) {
                
                if (data.confirmacion === "ACK") {
                    console.log("DATOS CORRECTOS");
                    document.getElementById("ack").innerHTML = "Producto: "+producto+" -> Agregado exitosamente.";
                    $("#ack").append("<p>Las contraseñas no coinciden</p>");
                } else {
                    console.log("DATOS INCORRECTOS");
                    document.getElementById("ack").innerHTML = "Hubo un problema en el proceso, intente nuevamente.";
                }
            },

            error: function () {
                $('#ack').val("ERROR");
            }
        });
    });
});


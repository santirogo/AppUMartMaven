/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

window.onbeforeunload = cierraSesion;

function cierraSesion(){
    $.ajax({
        url: 'CerrarSesionServlet',
        type: 'GET',
        dataType: 'json',
        success: function(data){
                
            
        }
    });
}

$(document).ready(function(){
    
    
    $('#bNombre').click(function(){
        var opcion = 1;
        var nombre = $('#nombre').val();
        var correo = $('#correo').text();
        $.ajax({
            url:'EditarCompradorServlet',
            type:'post',
            data:{opcion:opcion,nombre:nombre,correo:correo},
            dataType: 'json',
            success: function(data) {
               $("#mensaje").append("<p>Enviadooo</p>");
            }
        });
    });
    
    $('#bCelular').click(function(){
        var opcion = 2;
        var celular = $('#celular').val();
        var correo = $('#correo').text();
        $.ajax({
            url:'EditarCompradorServlet',
            type:'post',
            data:{opcion:opcion,celular:celular,correo:correo},
            dataType: 'json',
            success: function(data) {
                
            }
        });
    });
    
    $('#bContrasena').click(function(){
        var opcion = 3;
        var contrasena = $('#contrasena').val();
        var correo = $('#correo').text();
        $.ajax({
            url:'EditarCompradorServlet',
            type:'post',
            data:{opcion:opcion,contrasena:contrasena,correo:correo},
            dataType: 'json',
            success: function(data) {
                
            }
        });
    });
});

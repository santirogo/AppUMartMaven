/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

//window.onbeforeunload = cierraSesion;

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
        var celular = $('#celular').text();
        $.ajax({
            url:'EditarTiendaServlet',
            type:'post',
            data:{opcion:opcion,nombre:nombre,celular:celular},
            dataType: 'json',
            success: function(data) {
               $("#mensaje").append("<p>Enviadooo Nombre</p>");
            }
        });
    });
    
    $('#bFondo').click(function(){
        var opcion = 2;
        var fondo = $('#fondo').val();
        var celular = $('#celular').text();
        $.ajax({
            url:'EditarTiendaServlet',
            type:'post',
            data:{opcion:opcion,fondo:fondo,celular:celular},
            dataType: 'json',
            success: function(data) {
                $("#mensaje").append("<p>Enviadooo Fondo</p>");
            }
        });
    });
});

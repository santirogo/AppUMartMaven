<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.js" type="text/javascript"></script>
        <link href="StyleBody.css" rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">
        <title>AppU-Mart</title>
        <style>
            #loader{
                position:absolute;/*agregamos una posición absoluta para que nos permita mover la capa en el espacio del navegador*/
                top:0%;/*posicionamiento en Y */
                left:0%;/*pocisionamiento en X*/
                z-index:9999; /* Le asignamos la pocisión más alta en el DOM */
                background-color:#000000; /* le asignamos un color de fondo */
                width:100%; /* maximo ancho de la pantalla */
                height:100%; /* maxima altura de la pantalla */
                display:block; /* mostramos el layer */
            }
            #boton{
                margin:auto;
                margin-top:10px;
                width:350px;
                height:150px;
                -webkit-border-radius: 7px;
                background: #ffffff; /* Old browsers */
                background: -moz-linear-gradient(top,  #ffffff 12%, #e0e0e0 100%);
                background: -webkit-gradient(linear, left top, left bottom, color-stop(12%,#ffffff), color-stop(100%,#e0e0e0));
                background: -webkit-linear-gradient(top,  #ffffff 12%,#e0e0e0 100%);
                background: -o-linear-gradient(top,  #ffffff 12%,#e0e0e0 100%);
                background: -ms-linear-gradient(top,  #ffffff 12%,#e0e0e0 100%);
                background: linear-gradient(to bottom,  #ffffff 12%,#e0e0e0 100%);
                filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#e0e0e0',GradientType=0 );
                -webkit-box-shadow: 0px 2px 4px #B4B4B4;
                -webkit-transition:all 300ms ease;
                -o-transition:all 300ms ease;
                transition:all 300ms ease;
            }
            #boton:hover{
                transition-duration: 0.3s;
                box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
            }
            .avatar{
                position: absolute;
                margin:0 auto 15px;
                width:200px;
                height:200px;
                border-radius:100%;
                border:#fff 3px solid;
                box-shadow:rgba(0,0,0,0.4) 0px 2px 4px, inset rgba(0,0,0,0.4) 0px 3px 2px;
                overflow:hidden;
                background-image:-webkit-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/Carrito.png");
                background-image:-moz-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/Carrito.png");
                background-image:linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/Carrito.png");
                background-size: auto, 100%;
                z-index: 2000;
            }
            .avatar2{
                position: absolute;
                margin:0 auto 15px;
                width:200px;
                height:200px;
                border-radius:100%;
                border:#fff 3px solid;
                box-shadow:rgba(0,0,0,0.4) 0px 2px 4px, inset rgba(0,0,0,0.4) 0px 3px 2px;
                overflow:hidden;
                background-image:-webkit-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/VendedorLogo.png");
                background-image:-moz-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/VendedorLogo.png");
                background-image:linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/VendedorLogo.png");
                background-size: auto, 100%;
                z-index: 2000;
            }
        </style>
        <script>
            jQuery(document).ready(function () {
                jQuery("#loader").fadeOut("slow");
            });
        </script>
    </head>
    <body style="background-color: #F1F3F5;">
        <div id="loader"><img src="Pictures/AppuMartLogo.png" style="position: absolute; top:50%; left: 50%; margin-top: -150px; margin-left: -150px;"></div>

        <!--<img src="index_bg.jpg" class="background">-->
        <!--<div id="boton" style="vertical-align:middle;">Usuario</div>
        <div id="boton">Vendedor</div>    width:487px ; height: 121;  -->
        <div style="position: absolute; left: 10%; top: 12%;"><img src="Pictures/Usuario.png"  width="487px" height="121"></div>
        
        <div style="margin-top: 17%;">
            <a href="http://localhost:8080/AppuMart/loginUsuario.jsp"><div class="avatar" style="left: 15%; vertical-align: middle;"></div></a>
            <a href="http://localhost:8080/AppuMart/loginVendedor.jsp"><div class="avatar2" style="right: 15%; vertical-align: middle;"></div></a>
            <center><div style="position: relative; top: -50px"><img src="Pictures/AppuMartLogo.png"></div></center>
        </div>
        <div style="position: absolute; right: 10%; bottom: 12%"><img src="Pictures/Vendedor.png" width="487px" height="121"></div>
    </body>
</html>
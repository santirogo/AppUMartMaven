<%@page import="vo.ProductoVO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.js" type="text/javascript"></script>
        <script type="text/javascript" src="seleccionProductoAjax.js"></script>
        <script type="text/javascript" src="InfoCarritoAjax.js"></script>
        <link href="StyleBody.css" rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>Bienvenido a la tienda</title>
        <style>
            @font-face
            {
                font-family: 'font.ttf';
                src: url('Pictures/font.ttf');
            }
            *{
                font-family: 'font.ttf';
            }
            /*h2, h4{
                font-family: 'Leckerli One', cursive;
            }*/
            .header {
                width: 100%;
                min-width: 100%;
                max-width: 100%;
                min-height: 250px;
                background-image: url(Pictures/Header.png);
                text-align: center;
                background-size: cover;
                background-position: center center;
                filter:brightness(0.4);
            }
            .perfil{
                /*display:block;*/
                margin-left: 3%;
                width:200px;
                height:200px;
                border-radius:100%;
                border:#fff 3px solid;
                box-shadow:rgba(0,0,0,0.4) 0px 2px 4px, inset rgba(0,0,0,0.4) 0px 3px 2px;
                overflow: hidden;
                float: left;
                -webkit-transition:all 500ms ease;
                -o-transition:all 500ms ease;
                transition:all 500ms ease; /* Establecemos una transición a todas las propiedades */
                position: absolute;
                top: 5%;
            }
            .perfil:hover{
                /*display:block;*/
                -moz-transform: rotate(360deg);
                -webkit-transform: rotate(360deg);
                transform: rotate(360deg);
                -moz-transition: all 1.5s; -webkit-transition: all 1.5s; transition: all 1.5s; 
            }
            .social {
                position: fixed; /* Hacemos que la posición en pantalla sea fija para que siempre se muestre en pantalla*/
                right: 40px; /* Establecemos la barra en la izquierda */
                top: 40%; /* Bajamos la barra 200px de arriba a abajo */
                /*left: 95%;*/
                transform: translate(40%, 40%); 
                -webkit-transform: translate(40%, 40%);
                z-index: 2000; /* Utilizamos la propiedad z-index para que no se superponga algún otro elemento como sliders, galerías, etc */
            }
            .social ul {
                list-style: none;
            }
            .social ul li a {
                display: inline-block;
                color:#fff;
                background: #000;
                /*padding: 10px 15px;*/
                text-decoration: none;
                -webkit-transition:all 500ms ease;
                -o-transition:all 500ms ease;
                transition:all 500ms ease; /* Establecemos una transición a todas las propiedades */
            }
            .social ul li .icon-carrito {background:#3b5998;  border-radius: 100%;} /* Establecemos los colores de cada red social, aprovechando su class */
            .social ul li a:hover {
                background: #000; /* Cambiamos el fondo cuando el usuario pase el mouse */
                /*padding: 10px 30px;*/ /* Hacemos mas grande el espacio cuando el usuario pase el mouse */
                -moz-transform: rotate(360deg);
                -webkit-transform: rotate(360deg);
                transform: rotate(360deg);
                -moz-transition: all 1.5s; -webkit-transition: all 1.5s; transition: all 1.5s; 
            }
            .titulo_uno{
                font-size: 20px;
                padding-top:40px;
                text-align: center;
            }
            .descripcion2{
                font-size: 15px;
                margin-right: 40px;
                padding-top:10px;
                color: #298cda;
                text-align: center;
            }
            .titulo_uno:hover{
                color: #F08426;
            }
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
            #encabezado{
                text-align: center; 
                left: 51%; 
                top: 10%;
                transform: translate(-50%, -50%); 
                -webkit-transform: translate(-50%, -50%);
                position: absolute; 
                font-size: 80px; 
                color: white;
            }
            .carro{
                bottom: -4px;
                left:0;
                position:fixed;
                filter:brightness(1);
                z-index: 200;
                width: 30%;
                height: 40%
            }
            #letracarro{
                font-family: 'carrito.ttf';
                src: url('Pictures/carrito.ttf');
                font-family: 'carrito.ttf';
            }
            .pass{
                margin: 2px 2px 2px 2px;
                width:12px;
                border-radius:3px;
                border:#CCC 1px solid;
            }     
        </style>

        <script>
            jQuery(document).ready(function () {
                jQuery("#loader").fadeOut("slow");
            });
        </script>
    </head>

    <body>
        <% HttpSession mySession = request.getSession();
            String correo = (String) mySession.getAttribute("correo");
//            String correo = "diego@correo.usa.edu.co";
        %>
        
        <% if(correo==null){%>
            <META HTTP-EQUIV="REFRESH" CONTENT="0;URL=index.jsp">
        <%}%>
        
        <button id="out" onclick='cerrarSesion()'>Cerrar Sesión</button>
        
        <a href="http://localhost:8080/AppuMart/editarComprador.jsp"><button>Editar comprador</button></a>
        

        <div id="loader"><img src="Pictures/AppuMartLogo.png" style="position: absolute; top:50%; left: 50%; margin-top: -150px; margin-left: -150px;"></div>
        <!--<img src="dulces_bg.jpg" class="background">-->
        <img src="Pictures/barraInf.png"  class="background">
        <!--<button class="cart-icon" data-toggle="modal" data-target="#myModal"><img src="carrito_wh.png" class="carritoIcon"></button><br>-->

        <!--<div id="encabezado" style="text-align: center; left: 4%; top: 26%; position: absolute;"></div>-->
        <a href="listarTiendas.jsp"><img src="Pictures/AppuMartTextoBorde.png"  class="background" style="filter:brightness(1); width: 20% ; height: 30%; top:80%; left:40%;"></a>

        <header class="header">
            <div id="encabezado" style=" filter:brightness(1);" ></div><br><br>
            <div id='Perfil' style="position: absolute; top: 2%; left: 5%; filter:brightness(1);"></div> 
        </header>


        <div class="social">
            <ul>
                <li><a data-toggle="modal" data-target="#myModal" class="icon-carrito">
                        <img src="Pictures/Carrito.png" style="width: 100px; height: 100px">
                    </a></li>
            </ul>
        </div>

        <!-- Modal -->
        <div class="container">
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4  style="font-family: 'Pictures/carrito.ttf'; font-size: 50px">Shopping Cart</h4>
                        </div>
                        <div class="modal-body">
                            <p style="font-family: 'carrito.ttf'; font-size: 20px">Productos en el Carrito:</p>
                            <center><iframe src="InfoCarrito.jsp" width="500px" height="200px" scrolling="no" frameborder="0"></iframe></center>

                        </div>
                        <img src="Pictures/CarroMedio.png" class="carro">
                        <div class="modal-footer">
                            <!--<center><button type="button" class="btn btn-default" data-dismiss="modal" onclick = "location = 'InfoCarrito.jsp'">Check-out</button></center>-->
                            <center><button type="button" class="btn btn-default" data-dismiss="modal" onclick = "main()">Check-out</button></center>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Fin Modal-->

        <form>
            <div id="prueba" style='position: absolute; top:40%; left: 1%'></div><br>
            <div id="respuesta"></div>
            <div id="c"></div>
        </form>
    </body>
</html>

<%@page import="vo.VendedorVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="main.css" />
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script type="text/javascript" src="InfoPedidoAjax.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
        <title>Pedido Nuevo</title>

        <style>

            @media screen and (max-width: 480px) {

                div .content {
                    padding-bottom: 200px;
                }
                #header .content .inner {
                    -moz-transition: max-height 0.75s ease, padding 0.75s ease, opacity 0.325s ease-in-out;
                    -webkit-transition: max-height 0.75s ease, padding 0.75s ease, opacity 0.325s ease-in-out;
                    -ms-transition: max-height 0.75s ease, padding 0.75s ease, opacity 0.325s ease-in-out;
                    transition: max-height 0.75s ease, padding 0.75s ease, opacity 0.325s ease-in-out;
                    -moz-transition-delay: 0.25s;
                    -webkit-transition-delay: 0.25s;
                    -ms-transition-delay: 0.25s;
                    transition-delay: 0.25s;
                    padding: 3rem 2rem;
                    max-height: 40rem;
                    overflow: visible;
                }
                .top{
                    width: 200px;
                }
            }

            @font-face
            {
                font-family: 'carrito.ttf';
                src: url('Pictures/carrito.ttf');
            }
            body{
                background-color: #B4B4B4;
                background-color: #364044;
            }


            table {
                border-collapse: collapse;
                width: 100%;
            }

            th, td {
                text-align: center;
            }

        </style>


    </head>

    <body>

        <div id="wrapper" style="padding-bottom: 0px">
            <div><img src="Pictures/AppuTexto.png" style="width: 300px; height: 100px;"></div>
            <header id="header">
                <div class="content">
                    <div class="inner" id="in">

                        <div id="nombre" style="margin-bottom: 50px;"><h1 style=" color: #087eac; opacity: 0.7;">Pedido Pendiente</h1></div>


                        <div id="ped">

                            <!--<center>
                                <table style="border: none">
                                    <tr><th>Cliente</th><th></th><th id="cliente"></th></tr>
                                    <tr><th></th><th></th><th></th></tr>
                                    <tr><th></th><th id="productos"></th><th></th></tr>
                                    <tr><th></th><th></th><th></th></tr>
                                    <tr><th></th><th id="comentario"></th><th></th></tr>
                                </table>
                            </center>  -->
                        </div>
                        <div id="pedido"></div>




                    </div>
                </div>
                <button style=" background-color: #e30020; cursor: alias; font-size: 10px" onclick="cerrarSesion()"><i class="fa fa-power-off"></i> Cerrar Sesion</button>
            </header>
            <footer id="footer" style="margin-top: 0px;">
                <img id='my' src="Pictures/AppuMartLogo.png" style=" width: 100px; height: 100px;">
            </footer>
        </div>
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
    </body>

</html>

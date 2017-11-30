<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>AppuMart</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="mainIndex.css"/>
        <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
        <link rel="manifest" href="/manifest.json">
        <script src="https://cdn.onesignal.com/sdks/OneSignalSDK.js" async='async'></script>
        <script>
            var OneSignal = window.OneSignal || [];
            OneSignal.push(["init", {
                    appId: "<%=System.getenv("ONESIGNAL_ID")%>",
                    autoRegister: false, /* Set to true to automatically prompt visitors */
                    notifyButton: {
                        enable: true /* Set to false to hide */
                    }
                }]);
        </script>
        <style>
            #Type{
                text-align: center;
                position: relative;
                top: 50%;
                -ms-transform: translateY(-50%);
                -webkit-transform: translateY(-50%);
                transform: translateY(-50%);
            }
            #Type2{
                text-align: center;
                position: relative;
                top: 50%;
                -ms-transform: translateY(-50%);
                -webkit-transform: translateY(-50%);
                transform: translateY(-50%);
            }
        </style>
    </head>
    <body>

        <!-- Header -->
        <div id="header">
            <span><img id='my' src="Pictures/AppuMartLogo.png" style=" width: 200px; height: 200px;"></span>
            <h1>Bienvenido A AppuMart</h1>
            <p>La mas grande red comercial en linea.</p>
        </div>

        <!-- Main -->
        <div id="main">

            <header class="major container 75%">
                <h2>Seleccione el tipo
                    <br />
                    de usuario con el que
                    <br />
                    va a ingresar al Sistema</h2>

            </header>

            <div class="box alt container">
                <section class="feature left">
                    <!--<a href="#" class="image icon fa-signal"><img src="Pictures/Carrito2_1.png" width="200px" height="200px"></a>-->
                    <a href="loginUsuario.jsp" class="image icon fa-signal"><div id="Type2"><button class="button" style="font-size: 20px; background-color: #087eac">Comprador</button></div></a>
                    <div class="content">
                        <!--<h3>Usuario</h3>-->
                        <p>Para ingresar al sistema como un comprador, haga click en esta opcion.
                            Aqui podra navegar en la variedad de tiendas que tenemos, observar y comprar los productos que estas tienen.</p>
                    </div>
                </section>
                <section class="feature right">
                    <!--<a href="#" class="image icon fa-code"><img src="Pictures/VendedorLogo.png"></a>-->
                    <a href="loginVendedor.jsp" class="image icon fa-code"><div id="Type"><button class="button" style="font-size: 20px; background-color: #e30020">Vendedor</button></div></a>
                    <div class="content">
                        <!--<h3>Vendedor</h3>-->
                        <p>Para ingresar al sistema como un vendedor, haga click en esta opcion.
                            Aqui podra navegar en la tienda que esta relacionada a su cuenta, modificar esta y/o agregar nuevos productos para la venta.</p>
                    </div>
                </section>
            </div>

            <footer class="major container 75%">
                <h3>AppuMart</h3>
                <p style="margin-bottom: 0">SR - DA - NO - DA - CC</p>
                <ul class="actions">
                    <li><a href="#" class="button">Our Crew</a></li>
                </ul>
            </footer>

        </div>


        <!-- Scripts -->
        <!--<script src="assetsIndex/js/jquery.min.js"></script>
        <script src="assetsIndex/js/skel.min.js"></script>
        <script src="assetsIndex/js/util.js"></script>
        <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
        <!--<script src="assetsIndex/js/main.js"></script>-->

    </body>
</html>

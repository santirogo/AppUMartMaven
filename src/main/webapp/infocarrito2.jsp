<%@page import="vo.ProductoVO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="InfoCarritoAjax.js" charset="UTF-8"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script type="text/javascript" src="InfoCarritoAjax.js"></script>
        <script type="text/javascript" src="InfoCheckOut.js"></script>
        <!--<script type="text/javascript" src="seleccionProductoAjax.js"></script>-->
        <link href="StyleLogin.css" rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">
        <title>Tú Carrito</title>
        <style>
            @font-face
            {
                font-family: 'carrito.ttf';
                src: url('Pictures/carrito.ttf');
            }
            @font-face
            {
                font-family: 'font.ttf';
                src: url('Pictures/font.ttf');
            }
            * {
                box-sizing: border-box;
                font-family: 'carrito.ttf';
            }
            body {
                background-color: #f1f1f1;
                padding: 10px;
                font-family: Arial;
            }
            /* Center website */
            .main {
                max-width: 800px;
                margin: auto;
            }
            h1 {
                font-size: 50px;
                word-break: break-all;
                font-family: 'font.ttf';
            }
            .row {
                margin: 10px -16px;
            }
            /* Add padding BETWEEN each column */
            .row,
            .row > .column {
                padding: 5px;
            }
            /* Create three equal columns that floats next to each other */
            .column {
                float: left;
                width: 33.33%;
                /*display: none;*/ /* Hide all elements by default */
            }
            /* Clear floats after rows */ 
            .row:after {
                content: "";
                display: table;
                clear: both;
            }
            /* Content */
            .content {
                border-radius: 50px 50px 10px 10px;
                background-color: white;
                padding: 0px;
            }
            .content2 {
                padding: 0 0 0 0;
            }
            /* The "show" class is added to the filtered elements */
            .show {
                display: block;
            }
            img {
                border-radius: 50px 50px 0 0;
            }
            .footer {
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                background-color: red;
                color: white;
                text-align: center;
            }
            .vendedor{
                font-size: 10px
            }
            .puntuacion{
                color: #298cda;
                font-size: 30px
            }
            .empresa{
                font-size: 25px;
                color: black;
            }
            a:link   
            {   
                text-decoration:none;   
                border-radius: 0px;
            } 
            hr {
                display: block;
                unicode-bidi: isolate;
                -webkit-margin-before: 0.5em;
                -webkit-margin-after: 0.5em;
                -webkit-margin-start: auto;
                -webkit-margin-end: auto;
                overflow: hidden;
                border-style: inset;
                border-width: 1px;
            }
            .footer {
                position: static;
                left: 0;
                bottom: 0;
                width: 100%;
                background-color: #087eac;
                border-radius: 15%;
                color: white;
                text-align: center;
                margin-top: 50px;
            }
            .sticky {
                position: -webkit-sticky;
                position: sticky;
                top: 0px;
                padding: 5px;
                text-align: center;
                /*background-color: #cae8ca;
                border: 2px solid #4CAF50;*/
            }
            .perfil{
                /*display:block;*/
                /*margin-left: 3%;*/
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
                /*position: absolute;
                top: 5%;*/
            }
            .perfil:hover{
                /*display:block;*/
                -moz-transform: rotate(360deg);
                -webkit-transform: rotate(360deg); 
                transform: rotate(360deg);
                -moz-transition: all 1.5s; -webkit-transition: all 1.5s; transition: all 1.5s; 
            }
            .TituloEmpresa{
                font-size: 80px;
            }
            .pass{
                display: inline-table;
                margin-left: 80px;
                padding-bottom: 0px;
                width:30px;
                height: 30px;
                border-radius:3px;
                border:#CCC 1px solid;
                text-align: center;
                /*onclick='this.value""'*/
            } 
            /*Mensaje*/
            .tooltip {
                position: relative;
                display: inline-block;
            }
            .tooltip .tooltiptext {
                visibility: hidden;
                width: 120px;
                background-color: #555;
                color: #fff;
                text-align: center;
                border-radius: 6px;
                padding: 5px 0;
                position: absolute;
                z-index: 1;
                bottom: 125%;
                left: 50%;
                margin-left: -60px;
                opacity: 0;
                transition: opacity 1s;
                -moz-transition: all 1.5s; -webkit-transition: all 1.5s; transition: all 1.5s; 
            }
            .tooltip .tooltiptext::after {
                content: "";
                position: absolute;
                top: 100%;
                left: 50%;
                margin-left: -5px;
                border-width: 5px;
                border-style: solid;
                border-color: #555 transparent transparent transparent;
            }
            .tooltip:hover .tooltiptext {
                visibility: visible;
                opacity: 1;
            }
            /*Mensaje*/
        </style>
        <script async defer
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJOwdex9jqp6DZ-klv-NlBxoAmwaCyKt8&callback=initMap">
        </script>
        <style>
            #map {
                height: 200px;
                width: 400px;
            }
        </style>
        <script>
            jQuery(document).ready(function () {
                jQuery("#loader").fadeOut("slow");
                var Ancho = screen.width;
                var Alto = screen.height;
                alert(Ancho + " Y " + Alto);
                //form1.submit();
                
    });
            var btnNotificacion = document.getElementById("buttonN"),
                    btnPermiso = document.getElementById("buttonP")
            titulo = "Oder Checkout",
                    opciones = {
                        icon: "Pictures/checkout.png",
                        body: "Se ha envaido un correo al vendedor, con la informacion de tu pedido..."
                    };
            function mostrarNotificacion() {
                if (Notification) {
                    if (Notification.permission == "granted") {
                        var n = new Notification(titulo, opciones);
                        setTimeout(function () {
                            n.close()
                        }, 10000)
                    } else if (Notification.permission == "default") {
                        alert("Primero da los permisos de notificación");
                    } else {
                        alert("Bloqueaste los permisos de notificación");
                    }
                }
            }
            ;
            function check() {
                if (Notification.permission == "granted") {
                    alert("Notificaciones Activas");
                    mostrarNotificacion();
                }
                if (Notification.permission == "default") {
                alert("Notificaciones Sin Responder");
                        permiso();
                }
                if (Notification.permission == "denied") {
                alert("Notificicaciones Denegadas");
                }
            }
            ;
            function clear(element) {
                element.value = '';
            }
            ;
        </script>
    </head>
    <body>
        <% //HttpSession mySession = request.getSession();
            //String correo = (String) mySession.getAttribute("correo");
            //            String correo = "diego@correo.usa.edu.co";
        %>

        <%//if (correo == null) {%>
        <!--<META HTTP-EQUIV="REFRESH" CONTENT="0;URL=index.jsp">-->
        <%//}%>
        <div class="main">
            <div>
                <div id='Perfil'><div class='perfil' style='background-image:-webkit-linear-gradient(rgba(255,255,255,0) 50%, rgba(255,255,255,0) 50%),url(Pictures/checkout.png); background-image:-moz-linear-gradient(rgba(255,255,255,0) 50%, rgba(255,255,255,0) 50%),url(Pictures/checkout.png); background-image:linear-gradient(rgba(255,255,255,0) 50%, rgba(255,255,255,0) 50%),url(Pictures/checkout.png); background-size: auto, 100%;'></div></div>
                <center><div id="encabezado" class="TituloEmpresa">Checkout</div></center>
            </div>
            <hr style="margin-bottom: 150px;">
            <div class="row" id="carlos">
            </div>
            <form name="form1">
                <center>
                    <input class="submit" type="text" id="opcion" value="1" onclick="form1.submit()"  style="visibility:hidden"/><br>
                    <p id="ack"></p>
                    <!--<input class="btn" type="submit" id="InfoCarro" value="Actualizar"/><br>-->
                </center>
            </form>
            <form name="form2">
                <center>
                    <div id="map"></div><br>
                    <textarea rows="4" cols="50" name="comment" id="comment" placeholder="Ingresa Los Comentarios Del Pedido Aqui..."></textarea><br>
                    <button onclick="mifuncion()">Confirmar</button>
                    <script>
                    </script>
                </center>
            </form>
            <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB78-OGRg5rcLtUs9caqE4lQVIlw-D7zA4&callback=initMap"></script>
            <div class="row" id="div">
                <!-- END GRID -->
            </div>
            <hr style="margin-top: 20px">
            <div class="footer">
                <div class="tooltip">
                    <!--<p>Footer</p>-->
                    <a href="listarTiendas.jsp"><img src="Pictures/AppuTexto.png" style="width: 30%; height: 30%; padding-top: 8px; border-radius: 0%;"></a>
                    <span class="tooltiptext">Volver Al Menu Principal</span>
                </div>
            </div>
        </div>
    </body>
</html>
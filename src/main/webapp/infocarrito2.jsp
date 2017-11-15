<%@page import="vo.ProductoVO"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script type="text/javascript" src="InfoCarritoAjax.js" charset="UTF-8"></script>
        <script type="text/javascript" src="InfoCheckOut.js" charset="UTF-8"></script>
        <link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">
        <link rel="stylesheet" href="MuestraCarro.css" />
        <link rel="stylesheet" href="Botones.css" />
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
        <title>Tú Carrito</title>
        <style>
            @media screen and (max-width:560px) {
                #perfilres{
                    float: none;
                    margin: auto;
                }
            }
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
            /*body {
                background-color: #f1f1f1;
                padding: 10px;
                font-family: Arial;
            }*/
            body {
                /*background-color: #f1f1f1;*/
                /*background-color: #4686a0;*/
                /*background-image: url(Pictures/bg.jpg);*/
                /*background: #1b1f22;*/
                /*background-color: #4686a0;
                color: rgba(255, 255, 255, 0.75);
                background-attachment: fixed,	fixed, fixed;
                background-image: linear-gradient(45deg, #9dc66b 5%, #4fa49a 30%, #4361c2);*/
                background-color: #B4B4B4;  /*Gris*/
                /*  background-image: -moz-radial-gradient(rgba(0, 0, 0, 0.25) 25%, transparent 55%);
                background-image: -webkit-radial-gradient(rgba(0, 0, 0, 0.25) 25%, transparent 55%);
                background-image: -ms-radial-gradient(rgba(0, 0, 0, 0.25) 25%, transparent 55%);
                background-image: radial-gradient(rgba(0, 0, 0, 0.25) 25%, transparent 55%);*/ /*Ovalo Mitad*/
                padding: 10px;
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
            table {
                border-collapse: collapse;
                width: 100%;
            }
            th, td {
                padding: 8px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }
            tr:hover{background-color:#f5f5f5}
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
                        alert("Bloqueaste los permisos de notifica                ción");
                    }
                }
            }
            ;
            funct                ion check() {
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
                <div><div class='perfil' id='#perfilres' style='background-image:-webkit-linear-gradient(rgba(255,255,255,0) 50%, rgba(255,255,255,0) 50%),url(Pictures/checkout.png); background-image:-moz-linear-gradient(rgba(255,255,255,0) 50%, rgba(255,255,255,0) 50%),url(Pictures/checkout.png); background-image:linear-gradient(rgba(255,255,255,0) 50%, rgba(255,255,255,0) 50%),url(Pictures/checkout.png); background-size: auto, 100%;'></div></div>
                <center><div id="encabezado" class="TituloEmpresa">Checkout</div></center>
            </div>
            <hr style="margin-bottom: 150px;">
            <div class="row" id="carlos">
                <center>
                    <table>
                        <tr>
                            <th>Nombre Producto</th>
                            <th>Cantidad Agregada</th>
                            <th>Precio Unitario</th>
                        </tr>
                        <tr>
                            <td>Peter</td>
                            <td>Griffin</td>
                            <td>$100</td>
                        </tr>
                        <tr>
                            <td>Lois</td>
                            <td>Griffin</td>
                            <td>$150</td>
                        </tr>
                        <tr>
                            <td>Joe</td>
                            <td>Swanson</td>
                            <td>$300</td>
                        </tr>
                        <tr>
                            <td>Cleveland</td>
                            <td>Brown</td>
                            <td>$250</td>
                        </tr>
                    </table>
                </center>   
                <!--Nombre, Cantidad, Precio Unitario, Boton(ProductoId)-->
                <div class="event">
                    <span>X</span>
                    <div class="info">
                        MAY 21, 2013 <br />
                        A Non Ymous
                    </div>
                    <div class="price">
                        $6,500
                    </div>
                </div>
                <div class="event">
                    <span>#002</span>
                    <div class="info">
                        MAY 24, 2013 <br />
                        John Doe
                    </div>
                    <div class="price">
                        $650
                    </div>
                </div>
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

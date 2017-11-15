<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="registroUsuarioAjax.js"></script>
        <link href="StyleLogin.css" rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">
        <title>Registrate</title>
        <style>
            body {
                background-repeat: no-repeat;
                background-size: cover;
                margin: 0;
                padding: 0;
                background-color: #F1F3F5;
            }

            #boton {
                -webkit-border-radius: 15px;
                -moz-border-radius: 15px;
                border-radius: 15px;
                color: #2485e5;
                font-weight: light;
                border: 1px solid #CCC;
                padding: 5px 15px;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
                cursor: pointer
            }

            #boton:hover {
                /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#cb60b3+0,ad1283+50,de47ac+100;Pink+3D */
                background: rgb(203,96,179); /* Old browsers */
                background: -moz-linear-gradient(top, rgba(203,96,179,1) 0%, rgba(173,18,131,1) 50%, rgba(222,71,172,1) 100%); /* FF3.6-15 */
                background: -webkit-linear-gradient(top, rgba(203,96,179,1) 0%,rgba(173,18,131,1) 50%,rgba(222,71,172,1) 100%); /* Chrome10-25,Safari5.1-6 */
                background: linear-gradient(to bottom, rgba(203,96,179,1) 0%,rgba(173,18,131,1) 50%,rgba(222,71,172,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
                filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#cb60b3', endColorstr='#de47ac',GradientType=0 ); /* IE6-9 */
                color: white
            }

            #confirmar {
                -webkit-border-radius: 15px;
                -moz-border-radius: 15px;
                border-radius: 15px;
                color: #2485e5;
                font-weight: light;
                border: 1px solid #CCC;
                padding: 5px 15px;
                -webkit-transition-duration: 0.4s; /* Safari */
                transition-duration: 0.4s;
                cursor: pointer
            }

            #confirmar:hover {
                /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#cb60b3+0,ad1283+50,de47ac+100;Pink+3D */
                background: rgb(203,96,179); /* Old browsers */
                background: -moz-linear-gradient(top, rgba(203,96,179,1) 0%, rgba(173,18,131,1) 50%, rgba(222,71,172,1) 100%); /* FF3.6-15 */
                background: -webkit-linear-gradient(top, rgba(203,96,179,1) 0%,rgba(173,18,131,1) 50%,rgba(222,71,172,1) 100%); /* Chrome10-25,Safari5.1-6 */
                background: linear-gradient(to bottom, rgba(203,96,179,1) 0%,rgba(173,18,131,1) 50%,rgba(222,71,172,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
                filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#cb60b3', endColorstr='#de47ac',GradientType=0 ); /* IE6-9 */
                color: white
            }

            /*Mensaje*/
            .tooltip {
                position: relative;
                display: inline-block;
            }

            .tooltip .tooltiptext {
                visibility: hidden;
                width: 220px;
                background-color: #555;
                color: #fff;
                text-align: center;
                border-radius: 6px;
                padding: 5px 0;
                position: absolute;
                z-index: 1;
                bottom: 90%;
                left: 23%;
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
    </head>
    <body>
    <center>
        <img src="Pictures/Registrate.png" style="height: 70px; width: 423px; margin-top: 30px">
    </center>
    <img src="Pictures/barraInf.png"  class="background"  style="filter:brightness(1);">

    <div class="login-wrap">
        <div class="login">
            <div class="avatar">
            </div>

            <form id="loginn" class="login-form">
                <input id="correo" type="text" class="pass" placeholder="Correo"/>
                <input id="nombre" type="text" class="pass" placeholder="Nombre"/>
                <input id="pass" type="password" placeholder="Contraseña" class="pass"/>
                <input id="pass2" type="password" placeholder="Confirma tu Contraseña" class="pass"/>
                <input id="celular" type="text" class="pass" placeholder="Celular"/>
                <input type="submit" id="boton" class="btn" value="Sign Up"/>

                <div id="confirmacion" style="display:none">
                    <br>
                    <!--<p id="parrafo">Digita el número de confirmación que fue enviado a tu correo</p>-->
                    <div class="tooltip">
                        <input type="text" class="pass" id="numero" placeholder="Codigo Recibido"><br>
                        <span class="tooltiptext">Hemos enviado un codigo de confirmacion al correo que ingresaste, Ingresalo Aqui</span>
                    </div>
                    <input type="button" value="Registrarme" id="confirmar">

                </div>

            </form>
            <!--<p id="ack"></p>-->
            <div id="error"></div>

        </div>
        <br><br>
    </div>
    <br><br>
</body>
</html>

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

        </style>
    </head>
    <body>
    <center>
        <img src="Pictures/Registrate.png" style="height: 70px; width: 423px; margin-top: 30px">
    </center>
        <img src="Pictures/barraInf.png"  class="background"  style="filter:brightness(1);">
        <!--<center>
            <form>
                <p>Correo: </p><input type="text" id="correo"><br>
                <p>Nombre: </p><input type="text" id="nombre"><br>
                <p>Password: </p><input type="password" id="pass"><br>
                <p>Confirmar password: </p><input type="password" id="pass2"><br>
                <p>Celular: </p><input type="text" id="celular"><br><br>
                <input type="button" value="Registrarse" class="btn" id="boton">

                <div id="confirmacion" style="display:none">
                    <p id="parrafo">Por favor digita el número de confirmación que te enviamos al correo</p>
                    <input type="text" class="btn" id="numero"><br> <input class="btn" type="button" value="Confirmar" id="confirmar">
                </div>
            </form><br>
            <div id="error"></div>
        </center>-->

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
                        <p id="parrafo">Por favor digita el número de confirmación que fue enviado a tu correo</p>
                        <input type="text" class="btn" id="numero"><br> 
                        <input class="btn" type="button" value="Confirmar" id="confirmar">
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

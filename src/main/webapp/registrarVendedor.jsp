<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="registrarVendedorAjax.js"></script>
        <link href="StyleLogin.css" rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">
        <title>Registro Vendedor</title>
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
    <img src="Pictures/barraInf.png" class="background" style="filter:brightness(1);">
    <!--<center>
        <form>

            <p>Correo: </p><input type="text" id="correo"><br>
            <p>Celular: </p><input type="text" id="celular"><br>
            <p>Nombre: </p><input type="text" id="nombre"><br>
            <p>Contrase�a: </p><input type="password" id="password"><br>
            <p>Confirmar contrase�a: </p><input type="password" id="password2"><br><br>

            <input type="button" class="btn" id="boton" value="Registrarme">

            <h1 id="conf1"></h1>
            <div id="oculto">
                <p>Ingresa el c�digo que enviamos a tu correo: </p><input type='text' class="btn" id ='codigo'>
                <input type='button' id ='confirmar' value ='confirmar'></div><br>
            <div id="oculto2">
                <a href="http://localhost:8080/AppuMart/loginVendedor.jsp"><button><p>�Registrarme!</p></button></a>
            </div>


            <div id="div"></div>

        </form>
    </center>-->    


    <div class="login-wrap">
        <div class="login">
            <div class="avatar">
            </div>

            <form id="loginn" class="login-form">
                <input id="correo" type="text" class="pass" placeholder="Correo"/>
                <input id="nombre" type="text" class="pass" placeholder="Nombre"/>
                <input id="password" type="password" placeholder="Contrase�a" class="pass"/>
                <input id="password2" type="password" placeholder="Confirma tu Contrase�a" class="pass"/>
                <input id="celular" type="text" class="pass" placeholder="Celular"/>
                <input type="submit" id="boton" class="btn" value="Sign Up"/>


                <h1 id="conf1"></h1>
                <div id="oculto">
                    <p>Ingresa el c�digo que enviamos a tu correo: </p><input type='text' class="btn" id ='codigo'>
                    <input type='button' id ='confirmar' value ='confirmar'></div><br>
                <div id="oculto2">
                    <a href="http://localhost:8080/AppuMart/loginVendedor.jsp"><button><p>�Registrarme!</p></button></a>
                </div>

</html>

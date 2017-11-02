<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script type="text/javascript" src="ajaxLogInVendedor.js"></script>
        <!--<link href="styles.css" rel='stylesheet' type='text/css'>-->
        <link href="StyleLogin.css" rel='stylesheet' type='text/css'>
        <!--<link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">-->
        <!--<title>Login Usuario</title>-->
        <title>Inicia Sesion</title>
        <script type="text/javascript">

            $("#loginn").submit(function (e) {
                e.preventDefault();
                $(".login").addClass("init-shake");
                setTimeout(function () {
                    $(".login").removeClass("init-shake");
                }, 1000);
            });
            $(".pass").on("keypress", function () {
                $(".arrow").css("opacity", "1");
            });
            $(".arrow").click(function () {
                $("#loginn").submit();
            });
            
        </script>
    </head>

    <body>
        <img src="Pictures/1.jpg"  class="background">
        <!--
        <center class="centritoTu">
            <p>CORREO:</p><input type="text" id="correo"/><br>
            <p>CONTRASEÑA:</p><input type="password" id="password"/><br>
            <input type="submit" id="login" class="btn" value="Entrar"/>
            <p id="ack"></p>
        </center>
        
        </form>
        -->

        <div class="login-wrap">
            <div class="login">
                <div class="avatar">
                </div>

                <form id="loginn" class="login-form">
                    <input id="correo" type="text" class="pass" placeholder="Correo"/>
                    <input id="password" type="password" placeholder="Contraseña" class="pass"/><span class="arrow">&rarr;</span>
                    <input type="submit" id="loginboton" class="btn" value="Entrar"/>
                </form>
                <p id="ack"></p>
            </div>
        </div>

    <center style="margin-top: 100px">
        <p>¿Eres nuevo?</p>
        <p><a href="http://localhost:8080/AppuMart/registroUsuario.jsp">Regístrate</button></a></p> <!-- 8080-->
    </center>

    <img src="Pictures/Partner.png"  class="background" style="filter:brightness(1); width: 30% ; height: 15%; left: 49.5%; top: 80%; transform: translate(-50%, -50%); -webkit-transform: translate(-50%, -50%); position: absolute;">

</body>
</html>

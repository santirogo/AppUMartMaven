<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <link href="StyleLogin.css" rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="editarTiendaAjax.js"></script>
        <title>Editar Tienda</title>
    </head>

    <style>
        @font-face
        {
            font-family: 'carrito.ttf';
            src: url('Pictures/carrito.ttf');
        }

        *{
            font-family: 'carrito.ttf';
        }
        .btn {
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

        .btn:hover {
            /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#cb60b3+0,ad1283+50,de47ac+100;Pink+3D */
            background: rgb(203,96,179); /* Old browsers */
            background: -moz-linear-gradient(top, rgba(203,96,179,1) 0%, rgba(173,18,131,1) 50%, rgba(222,71,172,1) 100%); /* FF3.6-15 */
            background: -webkit-linear-gradient(top, rgba(203,96,179,1) 0%,rgba(173,18,131,1) 50%,rgba(222,71,172,1) 100%); /* Chrome10-25,Safari5.1-6 */
            background: linear-gradient(to bottom, rgba(203,96,179,1) 0%,rgba(173,18,131,1) 50%,rgba(222,71,172,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#cb60b3', endColorstr='#de47ac',GradientType=0 ); /* IE6-9 */
            color: white
        }


    </style>

    <body>
        <% HttpSession mySession = request.getSession();
            String correo = (String) mySession.getAttribute("correo");
            String celular = (String) mySession.getAttribute("celular");
        %>

        <%if (correo == null) {%>
        <META HTTP-EQUIV="REFRESH" CONTENT="0;URL=index.jsp">
        <%}%>

        <!--<form>
            Nombre: <input type="text" id="nombre">  <input type="button" id="bNombre" value="Editar"><br><br>
            Id fondo: <input type="text" id="fondo">  <input type="button" id="bFondo" value="Editar"><br><br>
            <div id="mensaje"></div>
            <div id="celular" style="display:none"><%//=celular%></div>
        </form>-->


        <div class="login-wrap">
            <div class="login">
                <div class="avatar">
                </div>

                <form id="loginn" class="login-form">
                    <input id="nombre" type="text" class="pass" placeholder="Nombre"/>
                    <input type="button" id="bNombre" value="Editar" class="btn">
                    <div id="mensaje"></div>
                    <input id="fondo" type="text" placeholder="Id fondo" class="pass"/>
                    <input type="button" id="bFondo" value="Editar" class="btn">
                    <div id="celular" style="display:none"><%=celular%></div>
                </form>
                <p id="ack"></p>
            </div>
        </div>

        <a href="mostrarTiendaVendedor.jsp"><img src="Pictures/AppuMartTextoBorde.png" style="position: absolute; bottom: -10%; left: 69%; width: 300px; height: 200px"></a>






    </body>
</html>

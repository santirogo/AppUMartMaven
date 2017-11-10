<%@page import="vo.VendedorVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Producto</title>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js" type="text/javascript"></script>
        <script type="text/javascript" src="agregarProductoAjax.js"></script>
        <link href="StyleLogin.css" rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">
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
    <body style="background-color: #F1F3F5;">
        <!--<img src="carrito_bg.jpg" class="background">-->
        <%HttpSession mySession = request.getSession();
            VendedorVO vo = (VendedorVO) mySession.getAttribute("vendedor");
        %>


        <%if (vo == null) {%>
        <META HTTP-EQUIV="REFRESH" CONTENT="0;URL=index.jsp">
        <%}%>
        <!--<center>
        <form>
            NOMBRE: <input type="text" id="nombre"><br><br>
            CATEGORIA:<select id="combobox">
            </select><br><br>
            PRECIO: <input type="text" id="precio"><br><br>
            CANTIDAD: <input type="text" id="cantidad"><br><br>
            RUTA DE LA IMAGEN: <input type="text" id="imagen"><br><br>

            <input type="button" id="boton" value="AGREGAR" class="btn">
        </form>
        <a href="mostrarTiendaVendedor.jsp" ><button>Volver a mi tienda</button></a>
    </center>-->



        <div class="login-wrap">
            <div class="login">
                <div class="avatar">
                </div>

                <form id="loginn" class="login-form">
                    <input id="nombre" type="text" class="pass" placeholder="Nombre"/>
                    <select id="combobox">
                        <option value="" disabled selected>Categoria</option>
                    </select>
                    <input id="precio" type="text" placeholder="Precio" class="pass"/>
                    <input id="cantidad" type="text" placeholder="Cantidad" class="pass"/>
                    <input id="imagen" type="text" placeholder="Ruta Imagen" class="pass"/>
                    <input type="button" id="boton" value="Agregar" class="btn">
                </form>
                <p id="ack"></p>
            </div>
        </div>

        <a href="mostrarTiendaVendedor.jsp"><img src="Pictures/AppuMartTextoBorde.png" style="position: absolute; bottom: -10%; left: 69%; width: 300px; height: 200px"></a>



    </body>
</html>

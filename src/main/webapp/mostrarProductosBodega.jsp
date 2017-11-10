<%@page import="vo.VendedorVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

        <script type="text/javascript" src="mostrarProductosBodegaAjax.js"></script>
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

        .avatar{
            width:150px;
            height:150px;
            border-radius:10%;
            border:#fff 3px solid;
            box-shadow:rgba(0,0,0,0.4) 0px 2px 4px, inset rgba(0,0,0,0.4) 0px 3px 2px;
            overflow:hidden;
            background-image:-webkit-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/AppuMartLogo.png");
            background-image:-moz-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/AppuMartLogo.png");
            background-image:linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/AppuMartLogo.png");
            background-size: auto, 100%;
            z-index: 2000;
        }
    </style>
    <body>
        <%HttpSession mySession = request.getSession();
            VendedorVO vo = (VendedorVO) mySession.getAttribute("vendedor");
        %>


        <%if (vo == null) {%>
        <META HTTP-EQUIV="REFRESH" CONTENT="0;URL=index.jsp">
        <%}%>
        <div id="div"></div>
        <a href="agregarProducto.jsp"><button>Agregar un producto</button></a>
        <button id="out" onclick='cerrarSesion()'>Cerrar Sesión</button>
        
        
        <div id="div"></div>
    <center>
        <a href="agregarProducto.jsp"><button>Agregar un producto</button></a>
    </center>


    <a href="mostrarTiendaVendedor.jsp"><img src="Pictures/AppuMartTextoBorde.png" style="position: absolute; bottom: -10%; left: 39%; width: 300px; height: 200px"></a>




    </body>
</html>

<%@page import="vo.VendedorVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>

        <script type="text/javascript" src="mostrarTiendaVendedorAjax.js"></script>
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
            border-radius:100%;
            border:#fff 3px solid;
            box-shadow:rgba(0,0,0,0.4) 0px 2px 4px, inset rgba(0,0,0,0.4) 0px 3px 2px;
            overflow:hidden;
            background-image:-webkit-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/AppuMartLogo.png");
            background-image:-moz-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/AppuMartLogo.png");
            background-image:linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/AppuMartLogo.png");
            background-size: auto, 100%;
            z-index: 2000;
        }


        .div-img .img {
            -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
            border-radius: 10px;
            transform: scale(1);
            -ms-transform: scale(1);
            -moz-transform: scale(1);
            -webkit-transform: scale(1);
            -o-transform: scale(1);
            -webkit-transition: all 500ms ease-in-out;
            -moz-transition: all 500ms ease-in-out;
            -ms-transition: all 500ms ease-in-out;
            -o-transition: all 500ms ease-in-out;
        }

        .div-img:hover .img {
            transform: scale(0.8);
            -ms-transform: scale(0.8);
            -moz-transform: scale(0.8);
            -webkit-transform: scale(0.8);
            -o-transform: scale(0.8);
        }



        .div-img2 .img {
            -webkit-border-radius: 10px;
            -moz-border-radius: 10px;
            border-radius: 10px;
            transform: scale(1);
            -ms-transform: scale(1);
            -moz-transform: scale(1);
            -webkit-transform: scale(1);
            -o-transform: scale(1);
            -webkit-transition: all 500ms ease-in-out;
            -moz-transition: all 500ms ease-in-out;
            -ms-transition: all 500ms ease-in-out;
            -o-transition: all 500ms ease-in-out;
        }
        .div-img2:hover .img {
            transform: scale(0.8);
            -ms-transform: scale(0.8);
            -moz-transform: scale(0.8);
            -webkit-transform: scale(0.8);
            -o-transform: scale(0.8);
        }


    </style>
    <body style="background-color: #F1F3F5;">
        <%HttpSession mySession = request.getSession();
            VendedorVO vo = (VendedorVO) mySession.getAttribute("vendedor");
        %>


        <%if (vo == null) {%>
        <META HTTP-EQUIV="REFRESH" CONTENT="0;URL=index.jsp">
        <%}%>

        <div id="div"></div>
        <a href="mostrarProductosBodega.jsp"><button>Ver mis productos</button></a>
        <a href="editarTienda.jsp"><button>Editar mi tienda</button></a>
        <button id="out" onclick='cerrarSesion()'>Cerrar Sesión</button>

    <center>
        <div id="div" style="position: absolute; top: 35%;left: 45%"></div>
        <!--<a href="mostrarProductosBodega.jsp"><button>Ver mis productos</button></a>
        <a href="editarTienda.jsp"><button>Editar mi tienda</button></a>-->
    </center>


    <div class="div-img" >
        <a href="mostrarProductosBodega.jsp"><img class="img" src="Pictures/MisProductos.png" style="width: 450px; height: 150px; position: absolute; top: 5%; left: 5%"></a>
    </div>
    <div class="div-img" >
        <a href="editarTienda.jsp"> <img class="img" src="Pictures/EditarTienda.png" style="width: 450px; height: 150px; position: absolute; top: 5%; left: 60%"></a>
    </div>
    
    
    <img src="Pictures/AppuMartTextoBorde.png" style="position: absolute; bottom: -10%; left: 39%; width: 300px; height: 200px">

</body>
</html>

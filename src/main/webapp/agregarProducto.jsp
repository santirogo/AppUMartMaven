<%@page import="vo.VendedorVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Producto</title>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js" type="text/javascript"></script>
        <script type="text/javascript" src="agregarProductoAjax.js"></script>
        <link href="styles.css" rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">
    </head>
    <body>
        <!--<img src="carrito_bg.jpg" class="background">-->
        <%HttpSession mySession = request.getSession();
            VendedorVO vo = (VendedorVO) mySession.getAttribute("vendedor");
        %>


        <%if (vo == null) {%>
        <META HTTP-EQUIV="REFRESH" CONTENT="0;URL=index.jsp">
        <%}%>
    <center>
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
    </center>
    </body>
</html>

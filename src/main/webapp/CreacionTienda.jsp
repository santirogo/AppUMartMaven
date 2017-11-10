<%@page import="vo.VendedorVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script type="text/javascript" src="CreacionTiendaAjax.js"></script>
        <!--<link href="styles.css" rel='stylesheet' type='text/css'>-->
        <link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">
        <title>Crear Tienda</title>
    </head>
    <body>
        <%HttpSession mySession = request.getSession();
            VendedorVO vo = (VendedorVO) mySession.getAttribute("vendedor");
        %>


        <%if (vo == null) {%>
        <META HTTP-EQUIV="REFRESH" CONTENT="0;URL=index.jsp">
        <%}%>
      
        
        
        <!--<img src="crearTienda_bg.jpg" class="background">-->
    <center>
        <p>Configura Tu Tienda</p>
    </center>
    <form>
        Nombre: <input type="text" id="nombre"/><br>
        Ruta de la imagen:<input type="text" id="Fond"/><br>
        <br><br>
        

    </form>
    <a href ="mostrarTiendaVendedor.jsp" class="btn" type="submit" id="login" value="Crear"><button>Crear</button></a>
</body>
</html>
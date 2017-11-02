<%-- 
    Document   : listarTiendas
    Created on : 02-oct-2017, 15:34:03
    Author     : Nicolas
--%>

<%@page import="vo.VendedorVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="listarTiendasAjax.js"></script>
        <link href="StyleBody.css" rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">
        <title>Nuestras Tiendas</title>
    </head>
    <body>
        <%HttpSession mySession = request.getSession();
            String correo = (String) mySession.getAttribute("correo");
        %>


        <%if (correo == null) {%>
        <META HTTP-EQUIV="REFRESH" CONTENT="0;URL=index.jsp">
        <%}%>
            <!--<img src="tiendas_bg.jpg" class="background">-->
        <img src="Pictures/barraInf.png"  class="background">
    <center>
         <img src="Pictures/Tiendas.png"  class="background" style="filter:brightness(1); width: 25% ; height: 30%; left: 37%; top: -8%;">
    </center>
         <img src="Pictures/AppuMartLogo.png"  class="background" style="filter:brightness(1); width: 8% ; height: 15%; top:87%; left:10%;">
        <img src="Pictures/AppuMartTextoBorde.png"  class="background" style="filter:brightness(1); width: 20% ; height: 30%; top:80%; left:75%;">
        
            <div style="  
    margin:auto;
    margin-top:10px;
    width:350px;
    height:150px;">
            </div>


        
        
        <div id="div"></div>
    </body>
</html>

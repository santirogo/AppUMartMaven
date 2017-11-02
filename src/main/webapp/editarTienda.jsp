<%-- 
    Document   : editarTienda
    Created on : 18/10/2017, 10:28:05 PM
    Author     : ayoro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script type="text/javascript" src="editarTiendaAjax.js"></script>
        <title>Editar Tienda</title>
    </head>
    <body>
        <% HttpSession mySession = request.getSession();
            String correo = (String) mySession.getAttribute("correo");
            String celular = (String) mySession.getAttribute("celular");
        %>
        
        <%if(correo==null){%>
            <META HTTP-EQUIV="REFRESH" CONTENT="0;URL=index.jsp">
        <%}%>
        
        <form>
            Nombre: <input type="text" id="nombre">  <input type="button" id="bNombre" value="Editar"><br><br>
            Id fondo: <input type="text" id="fondo">  <input type="button" id="bFondo" value="Editar"><br><br>
            <div id="mensaje"></div>
            <div id="celular" style="display:none"><%=celular%></div>
        </form>
    </body>
</html>

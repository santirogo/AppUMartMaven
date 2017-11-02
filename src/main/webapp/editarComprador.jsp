<%-- 
    Document   : editarUsuario
    Created on : 16/10/2017, 02:51:04 PM
    Author     : ayoro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script type="text/javascript" src="editarCompradorAjax.js"></script>
        <title>Editar Comprador</title>
    </head>
    <body>
        <% HttpSession mySession = request.getSession();
            String correo = (String) mySession.getAttribute("correo");
//            String correo = "diego@correo.usa.edu.co";
        %>
        
        <%if(correo==null){%>
            <META HTTP-EQUIV="REFRESH" CONTENT="0;URL=index.jsp">
        <%}%>
        
        <form>
            Nombre: <input type="text" id="nombre">  <input type="button" id="bNombre" value="Editar"><br><br>
            Celular: <input type="text" id="celular">  <input type="button" id="bCelular" value="Editar"><br><br>
            Contraseña: <input type="password" id="contrasena">  <input type="button" id="bContrasena" value="Editar"><br>
            <div id="mensaje"></div>
            <div id="correo" style="display:none"><%=correo%></div>
        </form>
        
    </body>
</html>

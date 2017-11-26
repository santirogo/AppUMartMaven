<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="CalificacionesAjax.js"></script>
        <title>Calificaciones</title>
    </head>
    <body>
        
        <% HttpSession mySession = request.getSession();
            String correo = (String) mySession.getAttribute("correo");
        %>
        
        <% if(correo==null){%>
            <META HTTP-EQUIV="REFRESH" CONTENT="0;URL=index.jsp">
        <%}%>
        
        <center><h1>Califica a tus vendedores!!</h1></center>
        
        <div id="pedidos">
            
        </div>
        
    </body>
</html>
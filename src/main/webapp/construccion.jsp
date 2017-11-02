<%-- 
    Document   : contruccion
    Created on : 7/09/2017, 02:46:49 PM
    Author     : ayoro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles.css" rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">
        <title>Estamos en construcción</title>
    </head>
    <body>
        <% HttpSession mySession = request.getSession();
            String correo = (String) mySession.getAttribute("correo");
//            String correo = "diego@correo.usa.edu.co";
            System.out.println("SESIÓN: "+correo);
        %>
        
        
    <center>
        <h1>Lo sentimos, estamos en construcción</h1>
        <img src="construccion.png" alt="Lo Sentimos">
    </center>
    </body>
</html>

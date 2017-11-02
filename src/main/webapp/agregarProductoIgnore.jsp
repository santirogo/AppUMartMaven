<%-- 
    Document   : agregarProducto
    Created on : 23/08/2017, 11:51:07 PM
    Author     : ayoro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Producto</title>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.js" type="text/javascript"></script>
        <script type="text/javascript" src="agregarProductoAjax.js"></script>
    </head>
    <body>
    <center>
        
        <h2>Agrega Productos A Tu Tienda</h2>
        <br><br><br><br><br>
        <form>
            
            Precio: <input type="text" id="precio">
            Cantidad: <input type="text" id="cantidad"><br><br>
            Celular <input type="text" id="celular"><br>
            <center><br>
                <input type="button" id="boton" value="Agregar a mi tienda">
                <br><br><br><br>
                <p id="ack">Agrega productos individualmente a tu tienda.</p>
                <br><br><br>
                <p>Producto:</p>

            <table>
                <tr>
                    <td>Papas Margarita BBQ</td><td><input type="button" id="marbbq" value="+"></td>
                    <td>Papas Margarita Limon </td><td><input type="button" id="marlimon" value="+"></td>
                </tr>
                
                <tr>
                    <td>Papas Margarita Natural </td> <td> <input type="button" id="marnatu" value="+"></td>
                    <td>Papas Margarita Pollo </td> <td> <input type="button" id="marpollo" value="+"></td>
                </tr>
                
                <tr>
                    <td>Mama Ia Ia </td> <td><input type="button" id="mamaia" value="+"></td>
                    <td>Trident Menta </td> <td><input type="button" id="menta" value="+"></td>
                </tr>
                
                <tr>
                    <td>Trident Canela </td> <td><input type="button" id="canela" value="+"></td>
                    <td>Trident Mora Azul </td> <td><input type="button" id="azul" value="+"></td>
                </tr>
                
                <tr>
                    <td>Cheetos</td> <td> <input type="button" id="cheetos" value="+"></td>
                    <td>Ponky </td> <td><input type="button" id="ponky" value="+"></td>
                </tr>
                
            </table>
            </center>
        </form>
        <p id="ack"> . </p>
    </center>
</body>
</html>

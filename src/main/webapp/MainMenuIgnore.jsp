<%-- 
    Document   : MainMenu
    Created on : 21/09/2017, 01:36:40 AM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Appu</title>
        <style>
            div {
                display: block;
            }
            .product-item {
                float: left;
                background: #F0F0F0;
                margin: 15px;
                padding: 5px;
            }
            .product-item div{
                text-align:center;	
                margin:10px;
            }
            .product-price {
                margin:10px 5px 15px 20px;
                height:10px;
                color:#F08426;
            }

            .product-image {
                height:100px;
            }
            div{
                display: table-row;
            }
        </style>

        <script type="text/javascript">
            $('.btn').on('click', function () {
                alert($(this).data("id"));
            });
        </script>

    </head>
    <body>
    <center>
        <form action="?id=1">
            <input type="text" value="">
            <input type="submit" value="Buscar">
        </form>

        <table>
            <tr>

                <td>
                    <div class="product-item">
                        <form>
                            <div class="product-image"><img src="http://www.carulla.com/images/products/140/0002526842677140/0002526843363661_xl_a.jpg"></div>
                            <div><strong>Papas de Pollo</strong></div>
                            <div class="product-price">$500</div>
                            <div><input type="text"value="0" size="1">
                                <input type="button" value="Añadir al Carrito" class="carrito" id="pollo">
                            </div></form>
                    </div>
                </td>

                <td><div class="product-item">
                        <form>
                            <div class="product-image"><img src="http://www.michorrito.com/wp-content/uploads/2016/11/margarita-limon.jpg"></div>
                            <div><strong>Papas de Limon</strong></div>
                            <div class="product-price">$7000</div>
                            <div><input type="text"value="0" size="1">
                                <input type="button" value="Añadir al Carrito" class="carrito" id="limon">
                            </div></form>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="product-item">
                        <form>
                            <div class="product-image"><img src="http://mercandoyap.com/wp-content/uploads/2016/10/Papas-margarita-bbq-x-30-g-600x600.jpg"></div>
                            <div><strong>Papas BBQ</strong></div>
                            <div class="product-price">$1500</div>
                            <div><input type="text"value="0" size="1">
                                <input type="button" value="Añadir al Carrito" class="carrito" id="bbq">
                            </div></form>
                    </div>
                </td>
                <td>
                    <div class="product-item">
                        <form>
                            <div class="product-image"><img src="http://www.carulla.com/images/products/144/0002526850677144/0002526851365393_xl_a.jpg"></div>
                            <div><strong>Papas Naturales</strong></div>
                            <div class="product-price">$300.000</div>
                            <div><input type="text"value="0" size="1">
                                <input type="button" value="Añadir al Carrito" class="carrito" id="naturales">
                            </div></form>
                    </div></td>
            </tr>
        </table>
    </center>
</body>
</html>

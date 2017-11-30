<%@page import="vo.VendedorVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="main.css" />
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script type="text/javascript" src="CreacionTiendaAjax.js"></script>
        <!--<link href="styles.css" rel='stylesheet' type='text/css'>-->
        <link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
        <title>Crear Tienda</title>


        <style>
            @media screen and (max-width: 480px) {
                div .content {
                    padding-bottom: 200px;
                }
                #header .content .inner {
                    -moz-transition: max-height 0.75s ease, padding 0.75s ease, opacity 0.325s ease-in-out;
                    -webkit-transition: max-height 0.75s ease, padding 0.75s ease, opacity 0.325s ease-in-out;
                    -ms-transition: max-height 0.75s ease, padding 0.75s ease, opacity 0.325s ease-in-out;
                    transition: max-height 0.75s ease, padding 0.75s ease, opacity 0.325s ease-in-out;
                    -moz-transition-delay: 0.25s;
                    -webkit-transition-delay: 0.25s;
                    -ms-transition-delay: 0.25s;
                    transition-delay: 0.25s;
                    padding: 3rem 2rem;
                    max-height: 40rem;
                    overflow: visible;
                }
                .top{
                    width: 200px;
                }
            }
            @font-face
            {
                font-family: 'carrito.ttf';
                src: url('Pictures/carrito.ttf');
            }
            body{
                background-color: #B4B4B4;
                background-color: #364044;
            }
        </style>


    </head>
    <!--   <body>
       <center>
           <p>Configura Tu Tienda</p>
       </center>
       <form>
           Nombre: <input type="text" id="nombre"/><br>
           Ruta de la imagen:<input type="text" id="Fond"/><br>
           <br><br>
       </form>
       <a href ="mostrarTiendaVendedor.jsp" class="btn" type="submit" id="login" value="Crear"><button>Crear</button></a>
   </body>-->


    <body>

        <%//HttpSession mySession = request.getSession();
            //VendedorVO vo = (VendedorVO) mySession.getAttribute("vendedor");
        %>


        <%//if (vo == null) {%>
        <!--<META HTTP-EQUIV="REFRESH" CONTENT="0;URL=index.jsp">-->
        <%//}%>
        <!-- Wrapper -->
        <div id="wrapper" style="padding-bottom: 0px">
            <!-- Header -->
            <div><img src="Pictures/AppuTexto.png" style="width: 300px; height: 100px;"></div>
            <header id="header">
                <div class="content">
                    <div class="inner" id="in">
                        <div id="nombre" style="margin-bottom: 50px;"><h1 style=" color: #087eac; opacity: 0.7;">Configuracion Inicial</h1></div>
                        <!-- Contact -->
                        <article id="contact">
                            <!--<h2 class="major">Producto Nuevo</h2>-->
                            <form style="z-index: 2000">
                                <div class="field">
                                    <label for="name">Nombre De La Tienda</label>
                                    <input type="text" name="name" id="nombre"/>
                                </div>
                                <div class="field">
                                    <label for="route">Direccion De La Imagen a Mostrar</label>
                                    <textarea name="ruta" id="Fond" rows="1"></textarea>
                                </div>
                                <ul class="actions">
                                    <li style="background-color: #087eac; padding-right: 0; margin-right: 10px;" class="sin"><a href ="mostrarTiendaVendedor.jsp" style=" text-decoration: none; "><input type="submit" value="Crear Tienda" id="login"/></a></li>
                                    <li style="background-color: #e30020" class="sin"><input type="reset" value="Reset" /></li>
                                </ul>
                            </form>
                        </article>
                    </div>
                </div>
                <!--<nav>
                    <ul>
                        <li><a href="mostrarTiendaVendedor.jsp"><i class="fa fa-arrow-circle-o-left"></i> Menu Principal</a></li>
                    </ul>
                </nav>-->
            </header>
            <!--Header-->
            <!-- Footer -->
            <footer id="footer" style="margin-top: 0px;">
                <!--<p class="copyright">&copy; Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>-->
                <img id='my' src="Pictures/AppuMartLogo.png" style=" width: 100px; height: 100px;">
            </footer>
        </div>
        <!-- BG -->
        <!--<div id="bg"></div>-->
        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
    </body>
</html>

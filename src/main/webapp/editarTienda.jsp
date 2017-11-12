<!DOCTYPE HTML>
<html>
    <head>
        <title id="titulo">Agregar Producto</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="main.css" />
        <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
        <!--<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>-->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script type="text/javascript" src="editarTiendaAjax.js"></script>
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">

        <style>
            @font-face
            {
                font-family: 'carrito.ttf';
                src: url('Pictures/carrito.ttf');
            }
            body{
                background-color: #B4B4B4;
            }

            .avatar{
                width:150px;
                height:150px;
                border-radius:100%;
                border:#fff 3px solid;
                box-shadow:rgba(0,0,0,0.4) 0px 2px 4px, inset rgba(0,0,0,0.4) 0px 3px 2px;
                overflow:hidden;
                background-image:-webkit-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/AppuMartLogo.png");
                background-image:-moz-linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/AppuMartLogo.png");
                background-image:linear-gradient(top left, rgba(255,255,255,0.9) 0%, rgba(255,255,255,0.3) 50%, rgba(255,255,255,0) 50%), url("Pictures/AppuMartLogo.png");
                background-size: auto, 100%;
                z-index: 2000;
                margin-bottom: 20px;
                position: absolute;
                margin: auto;
                margin-left: -33px;
                margin-top: -30px;
            }


            .div-img .img {
                -webkit-border-radius: 10px;
                -moz-border-radius: 10px;
                border-radius: 10px;
                transform: scale(1);
                -ms-transform: scale(1);
                -moz-transform: scale(1);
                -webkit-transform: scale(1);
                -o-transform: scale(1);
                -webkit-transition: all 500ms ease-in-out;
                -moz-transition: all 500ms ease-in-out;
                -ms-transition: all 500ms ease-in-out;
                -o-transition: all 500ms ease-in-out;
            }

            #nombre2{
                font-family: 'carrito.ttf';
            }
            #div{
                margin-bottom: 500px;
            }


            .row {
                margin: 10px -16px;
            }

            /* Add padding BETWEEN each column */
            .row,
            .row > .column {
                padding: 20px;
            }

            /* Create three equal columns that floats next to each other */
            .column {
                float: left;
                width: 33.33%;
            }

            /* Clear floats after rows */ 
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Content */
            .content1 {
                border-radius: 5px;
                background-color: transparent;                
                margin: 20px;
            }
            .content2 {
                padding: 5px;
                color: #000000;
                background-color: #fff;
            }

            /* The "show" class is added to the filtered elements */
            .show {
                display: block;
            }
            img {
                border-radius: 5px 5px 0 0;
            }

        </style>
    </head>
    <body>

        <% HttpSession mySession = request.getSession();
            String correo = (String) mySession.getAttribute("correo");
            String celular = (String) mySession.getAttribute("celular");
        %>

        <%if (correo == null) {%>
        <META HTTP-EQUIV="REFRESH" CONTENT="0;URL=index.jsp">
        <%}%>

        <!-- Wrapper -->
        <div id="wrapper" style="padding-bottom: 0px">

            <!-- Header -->
            <div><img src="Pictures/AppuTexto.png" style="width: 300px; height: 100px;"></div>
            <header id="header">
                <div class="content">
                    <div class="inner" id="in">
                        <div id="nombre" style="margin-bottom: 50px;"><h1>Editar Informacion</h1></div>

                        <!-- Contact -->
                        <article id="contact">
                            <!--<h2 class="major">Producto Nuevo</h2>-->
                            
                            <div class="field first" style="margin-bottom: 30px;">
                                    <label for="celular">Telefono Celular</label>
                                    <input type="text" name="celular" id="celular"/>
                                </div>
                            <form>
                                <div class="field half first">
                                    <label for="name">Nuevo Nombre De La Tienda</label>
                                    <input type="text" name="name" id="nombre"/>
                                </div>
                                <div class="field half" style="margin-bottom: 60px; margin-top: 52px;">
                                    <input type="submit" value="Cambiar Nombre" class="special" id="bNombre"/>
                                </div>
                            </form>

                            <form>
                                <div class="field half first">
                                    <label for="fondo">Nuevo Logo De La Tienda</label>
                                    <input type="text" name="fondo" id="fondo" placeholder="URL Imagen"/>
                                </div>
                                <div class="field half" style="margin-top: 35px;">
                                    <input type="submit" value="Cambiar Logo" class="special" id="bFondo"/>
                                </div>
                            </form>
                            <div id="mensaje"></div>
                        </article>


                    </div>
                </div>
                <nav>
                    <ul>
                        <li><a href="mostrarTiendaVendedor.jsp"><i class="fa fa-arrow-circle-o-left"></i> Menu Principal</a></li>
                    </ul>
                </nav>
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

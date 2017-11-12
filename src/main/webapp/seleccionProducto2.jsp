<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="seleccionProductoAjax.js"></script>
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">


        <title id="xx"></title>


        <style>
            @media screen and (max-width:560px) {
                #res {
                    width: 70%;
                    margin: auto;
                    float: none;
                }
                #encabezado{
                    padding-top: 10px;
                    padding-bottom: 20px;
                }
                #hc{
                    margin-bottom: 50px;
                }
                #perfilres{
                    float: none;
                    margin: auto;
                }
            }
            @font-face
            {
                font-family: 'carrito.ttf';
                src: url('Pictures/carrito.ttf');
            }
            @font-face
            {
                font-family: 'font.ttf';
                src: url('Pictures/font.ttf');
            }
            * {
                box-sizing: border-box;
                font-family: 'carrito.ttf';
            }

            body {
                background-color: #f1f1f1;
                padding: 10px;
                font-family: Arial;
            }

            /* Center website */
            .main {
                max-width: 800px;
                margin: auto;
            }

            h1 {
                font-size: 50px;
                word-break: break-all;
                font-family: 'font.ttf';
            }

            .row {
                margin: 10px -16px;
            }

            /* Add padding BETWEEN each column */
            .row,
            .row > .column {
                padding: 5px;
            }

            /* Create three equal columns that floats next to each other */
            .column {
                float: left;
                width: 33.33%;
                /*width: 70%;
                margin: auto;
                float: none;*/

                /*display: none;*/ /* Hide all elements by default */
            }

            /* Clear floats after rows */ 
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Content */
            .content {
                border-radius: 50px 50px 10px 10px;
                background-color: white;
                padding: 0px;
                box-shadow: 2px 2px 5px #999;  /*ESTE*/
            }
            .content2 {
                padding: 0 0 0 0;
            }

            /* The "show" class is added to the filtered elements */
            .show {
                display: block;
            }
            img {
                border-radius: 50px 50px 0 0;
            }

            .footer {
                position: fixed;
                left: 0;
                bottom: 0;
                width: 100%;
                background-color: red;
                color: white;
                text-align: center;
            }

            .vendedor{
                font-size: 10px
            }
            .puntuacion{
                color: #298cda;
                font-size: 30px;
                margin-top: 5px; /*ESTO*/
                margin-bottom: 0px; /*ESTO*/

            }
            .empresa{
                font-size: 25px;
                color: black;
                margin-top: 0px; /*ESTO*/
                margin-bottom: 0px; /*ESTO*/
            }
            a:link   
            {   
                text-decoration:none;   
                border-radius: 0px;
            } 
            hr {
                display: block;
                unicode-bidi: isolate;
                -webkit-margin-before: 0.5em;
                -webkit-margin-after: 0.5em;
                -webkit-margin-start: auto;
                -webkit-margin-end: auto;
                overflow: hidden;
                border-style: inset;
                border-width: 1px;
            }
            .footer {
                position: static;
                left: 0;
                bottom: 0;
                width: 100%;
                background-color: #087eac;
                border-radius: 15%;
                color: white;
                text-align: center;
                margin-top: 50px;
            }
            .sticky {
                position: -webkit-sticky;
                position: sticky;
                top: 0px;
                padding: 5px;
                text-align: center;
                /*background-color: #cae8ca;
                border: 2px solid #4CAF50;*/
            }
            .perfil{
                /*display:block;*/
                /*margin-left: 3%;*/
                width:200px;
                height:200px;
                border-radius:100%;
                border:#fff 3px solid;
                box-shadow:rgba(0,0,0,0.4) 0px 2px 4px, inset rgba(0,0,0,0.4) 0px 3px 2px;
                overflow: hidden;
                float: left;
                -webkit-transition:all 500ms ease;
                -o-transition:all 500ms ease;
                transition:all 500ms ease; /* Establecemos una transición a todas las propiedades */
                /*position: absolute;
                top: 5%;*/
            }
            .perfil:hover{
                /*display:block;*/
                -moz-transform: rotate(360deg);
                -webkit-transform: rotate(360deg); 
                transform: rotate(360deg);
                -moz-transition: all 1.5s; -webkit-transition: all 1.5s; transition: all 1.5s; 
            }
            .TituloEmpresa{
                font-size: 80px;
            }
            .pass{
                display: inline-table;
                margin-left: 80px;
                padding-bottom: 0px;
                width:30px;
                height: 30px;
                border-radius:3px;
                border:#CCC 1px solid;
                text-align: center;
                /*onclick='this.value""'*/
            } 

            /*Move Return Tiendas*/
            .container {
                /*width: 200px;
                height: 200px;*/
                position: relative;
                z-index: 2000;
                /*background-color: black;*/
            }
            .div-img {
                margin-left: auto;
                margin-right: auto;
            }
            .div-img.hidden {
                overflow: hidden;
            }
            .div-img .img {

                margin-left: auto;
                margin-right: auto;
                width: 100%;
                background-color: #087eac;
                transform: translate(0px, 0px);
                -ms-transform: translate(0px, 0px);
                -moz-transform: translate(0px, 0px);
                -webkit-transform: translate(0px, 0px);
                -o-transform: translate(0px, 0px);
                -webkit-transition: all 500ms ease-in-out;
                -moz-transition: all 500ms ease-in-out;
                -ms-transition: all 500ms ease-in-out;
                -o-transition: all 500ms ease-in-out;
            }
            .div-img .text {
                position: relative;
                z-index: -1;
                display: block;
                bottom: 80px;
                width: 100%;
                text-align: center;
                color: black;
            }
            .div-img:hover .img {
                transform: translate(0px, -100px);
                -ms-transform: translate(0px, -100px);
                -moz-transform: translate(0px, -100px);
                -webkit-transform: translate(0px, -100px);
                -o-transform: translate(0px, -100px);
            }
            /*.footer {
                position: static;
                left: 0;
                bottom: 0;
                width: 100%;
                height: 80px;
                background-color: #087eac;
                border-radius: 15%;
                color: white;
                text-align: center;
                margin-top: 50px;
            }*/
            /*Move Return*/
            /*Mensaje*/
            .tooltip {
                position: relative;
                display: inline-block;
            }

            .tooltip .tooltiptext {
                visibility: hidden;
                width: 120px;
                background-color: #555;
                color: #fff;
                text-align: center;
                border-radius: 6px;
                padding: 5px 0;
                position: absolute;
                z-index: 1;
                bottom: 125%;
                left: 50%;
                margin-left: -60px;
                opacity: 0;
                transition: opacity 1s;
                -moz-transition: all 1.5s; -webkit-transition: all 1.5s; transition: all 1.5s; 
            }

            .tooltip .tooltiptext::after {
                content: "";
                position: absolute;
                top: 100%;
                left: 50%;
                margin-left: -5px;
                border-width: 5px;
                border-style: solid;
                border-color: #555 transparent transparent transparent;
            }

            .tooltip:hover .tooltiptext {
                visibility: visible;
                opacity: 1;
            }
            /*Mensaje*/
            /*Carrito*/
            .social {
                position: fixed; /* Hacemos que la posición en pantalla sea fija para que siempre se muestre en pantalla*/
                right: 40px; /* Establecemos la barra en la izquierda */
                top: 40%; /* Bajamos la barra 200px de arriba a abajo */
                /*left: 95%;*/
                transform: translate(40%, 40%); 
                -webkit-transform: translate(40%, 40%);
                z-index: 2000; /* Utilizamos la propiedad z-index para que no se superponga algún otro elemento como sliders, galerías, etc */
            }
            .social ul {
                list-style: none;
            }
            .social ul li a {
                display: inline-block;
                color:#fff;
                background: none;
                margin-right: 10px;
                /*padding: 10px 15px;*/
                text-decoration: none;
                -webkit-transition:all 500ms ease;
                -o-transition:all 500ms ease;
                transition:all 500ms ease; /* Establecemos una transición a todas las propiedades */
            }
            .social ul li .icon-carrito {
                background:#3b5998;  
                border-radius: 100%;
            } /* Establecemos los colores de cada red social, aprovechando su class */
            .social ul li a:hover {
                background: none; /* Cambiamos el fondo cuando el usuario pase el mouse */
                /*padding: 10px 30px;*/ /* Hacemos mas grande el espacio cuando el usuario pase el mouse */
                -moz-transform: rotate(360deg);
                -webkit-transform: rotate(360deg);
                transform: rotate(360deg);
                -moz-transition: all 1.5s; -webkit-transition: all 1.5s; transition: all 1.5s; 
            }
            /*Carrito*/
        </style>
        <script>
            jQuery(document).ready(function () {
                jQuery("#loader").fadeOut("slow");
            });
            $(document).ready(function () {
                $(window).scroll(function () {
                    if ($('body').height() <= ($(window).height() + $(window).scrollTop())) {
                        $('#na').show();
                    } else {
                        $('#na').hide();
                    }
                });
            });
        </script>
    </head> 
    <body>

        <div class="social">
            <ul>
                <li>
                    <a href="InfoCarrito2.jsp" target="_blank"><img src="Pictures/Carrito.png" style="width: 100px; height: 100px"></a>
                </li>
            </ul>
        </div>

        <!--(WebSite Centrado) -->
        <div class="main">
            <div>
                <div id='Perfil'></div>
                <center><div id="encabezado" class="TituloEmpresa"></div></center>
            </div>

            <hr style="margin-bottom: 150px;" id="hc">

            <div class="row" id="div">
                <!-- END GRID -->
            </div>
            <p id="na" style="text-align: center;"><i class="fa fa-exclamation-circle"></i> No hay mas productos por mostrar <i class="fa fa-exclamation-circle"></i></p>

            <hr style="margin-top: 20px">

            <div class="footer">
                <div class="tooltip">
                    <!--<p>Footer</p>-->
                    <a href="listarTiendas.jsp"><img src="Pictures/AppuTexto.png" style="width: 30%; height: 30%; padding-top: 8px; border-radius: 0%;"></a>
                    <span class="tooltiptext">Volver Al Menu Principal</span>
                </div>
            </div>

        </div>
        <!--WebSite Fin -->
    </body>
</html>


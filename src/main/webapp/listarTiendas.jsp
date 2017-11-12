<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="listarTiendasAjax.js"></script>
        <link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.css" rel="stylesheet">
        <title>Tiendas AppuMart</title>


        <style>
            @media screen and (max-width:560px) {
                #res {
                    width: 70%;
                    margin: auto;
                    float: none;
                }
                #logo{
                    padding-top: 10px;
                    padding-bottom: 20px;
                }
                #tiendas{
                }
            }

            @font-face
            {
                font-family: 'carrito.ttf';
                src: url('Pictures/carrito.ttf');
            }

            * {
                box-sizing: border-box;
                font-family: 'carrito.ttf';
            }

            body {
                background-color: #f1f1f1;
                /*background-color: #4686a0;*/
                /*background-image: url(Pictures/bg.jpg);*/
                /*background: #1b1f22;*/
                /*background-color: #4686a0;
                color: rgba(255, 255, 255, 0.75);
                background-attachment: fixed,	fixed, fixed;
                background-image: linear-gradient(45deg, #9dc66b 5%, #4fa49a 30%, #4361c2);*/


                padding: 10px;
                font-family: Arial;
            }

            /*body {
                background-color: rgb(147, 93, 140);
                background-image: linear-gradient(45deg, rgb(227, 118, 130) 15%, rgb(95, 77, 147) 85%);

            }*/

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
                padding: 20px;
            }

            /* Create three equal columns that floats next to each other */
            .column {
                float: left;
                /*margin: auto;*/
                width: 33.33%;
                /*width: 60%;*/
            }

            /* Clear floats after rows */ 
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Content */
            .content {
                border-radius: 5px;
                background-color: white;
                box-shadow: 2px 2px 5px #999;
                padding: 0px;
                
            }
            .content2 {
                padding: 5px;
            }

            /* The "show" class is added to the filtered elements */
            .show {
                display: block;
            }
            img {
                border-radius: 5px 5px 0 0;
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
            .sticky {
                position: -webkit-sticky;
                position: sticky;
                top: 0px;
                padding: 5px;
                text-align: center;
                background-color: #cae8ca;
                border: 2px solid #4CAF50;
            }
            .vendedor{
                font-size: 10px
            }
            .puntuacion{
                padding-top: 5px;
                color: #298cda;
                /*font-size: 15px*/
            }
            .empresa{
                /*font-size: 25px;*/
                color: black;
                margin-top: 0px;
                margin-bottom: 0px;

            }
            a:link   
            {   
                text-decoration:none;   
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

        <!-- MAIN (Center website) -->
        <div class="main">

            <!--<h1 class="sticky" >AppuMart</h1>-->
            <!--<center><div><img src="Pictures/AppuTexto.png"></div></center>-->
            <center><div id="logo"><img src="Pictures/AppuMartLogo.png" style="width: 30%; height: 30%; margin-top: -45px; margin-bottom: -40px;"></div></center>
            <hr>

            <!--<h2>Nuestras Tiendas</h2>-->
            <center><div id="tiendas"><img src="Pictures/Tiendas2.png" style="width: 50%; height: 50%; padding: 20px"></div></center>
            <!--<input type="radio" onclick="filterSelection('all')" name="category" checked> Show all
            <input type="radio" onclick="filterSelection('nature')" name="category"> Nature
            <input type="radio" onclick="filterSelection('cars')" name="category"> Cars
            <input type="radio" onclick="filterSelection('people')" name="category"> People-->


            <div class="row" id="div">
                <!-- Portfolio Gallery Grid -->
                <!--<div class="column nature">
                    <div class="content">
                        <img src="Pictures/fondo1.png" alt="Mountains" style="width:100%; ">
                        <div class="content2">
                            <h4>McDonalds</h4>

                            <p class="puntuacion">Puntuacion: 5.0</p>
                            <p class="vendedor">Vendedor: 3203837680</p>
                        </div>
                    </div>
                </div>
                <div class="column nature">
                    <div class="content">
                        <img src="Pictures/fondo2.png" alt="Lights" style="width:100%">
                        <div class="content2">
                            <h4>Lights</h4>
                            <p>Lorem ipsum dolor..</p>
                        </div>
                    </div>
                </div>
                <div class="column nature">
                    <div class="content">
                        <img src="Pictures/fondo3.jpg" alt="Nature" style="width:100%;">
                        <div class="content2">
                            <h4>Forest</h4>
                            <p>Lorem ipsum dolor..</p>
                        </div>
                    </div>
                </div>

                <div class="column cars">
                    <div class="content">
                        <img src="Pictures/fondo4.gif" alt="Car" style="width:100%">
                        <div class="content2">
                            <h4>Retro</h4>
                            <p>Lorem ipsum dolor..</p>
                        </div>
                    </div>
                </div>
                <div class="column cars">
                    <div class="content">
                        <img src="Pictures/fondo5.jpg" alt="Car" style="width:100%">
                        <div class="content2">
                            <h4>Fast</h4>
                            <p>Lorem ipsum dolor..</p>
                        </div>
                    </div>
                </div>
                <div class="column cars">
                    <div class="content">
                        <img src="Pictures/fondo6.jpg" alt="Car" style="width:100%">
                        <div class="content2">
                            <h4>Classic</h4>
                            <p>Lorem ipsum dolor..</p>
                        </div>
                    </div>
                </div>

                <div class="column people">
                    <div class="content">
                        <img src="Pictures/fondo7.jpg" alt="Car" style="width:100%">
                        <div class="content2">
                            <h4>Girl</h4>
                            <p>Lorem ipsum dolor..</p>
                        </div>
                    </div>
                </div>
                <div class="column people">
                    <div class="content">
                        <img src="Pictures/fondo8.png" alt="Car" style="width:100%">
                        <div class="content2">
                            <h4>Man</h4>
                            <p>Lorem ipsum dolor..</p>
                        </div>
                    </div>
                </div>
                <div class="column people">
                    <div class="content">
                        <img src="Pictures/fondo9.gif" alt="Car" style="width:100%">
                        <div class="content2">
                            <h4>Woman</h4>
                            <p>Lorem ipsum dolor..</p>
                        </div>
                    </div>
                </div>-->
                <!--<div class='column nature'> <div class='content'> <img src='Pictures/fondo1.png' alt='Lights' style='width:100%'> <div class='content2'> <h4>" Hola1 "</h4> <p class='puntuacion'>Puntuación: " Hola2"</p> <p class='vendedor'>" Hola3"</p>  </div> </div> </div>
                -->
                <!-- END GRID -->
            </div>
            <p id="na" style="text-align: center;"><i class="fa fa-exclamation-circle"></i> No hay mas tiendas por mostrar <i class="fa fa-exclamation-circle"></i></p>

            <hr style="margin-top: 20px">
            <div class="footer">
                <!--<p>Footer</p>-->
                <img src="Pictures/AppuTexto.png" style="width: 30%; height: 30%; padding-top: 8px;">
            </div>

            <!-- END MAIN -->
        </div>

        <script>
            filterSelection("all")
            function filterSelection(c) {
                var x, i;
                x = document.getElementsByClassName("column");
                if (c == "all")
                    c = "";
                for (i = 0; i < x.length; i++) {
                    QuitarClase(x[i], "show");
                    if (x[i].className.indexOf(c) > -1)
                        AgregarClase(x[i], "show");
                }
            }

            function AgregarClase(element, name) {
                var i, arr1, arr2;
                arr1 = element.className.split(" ");
                arr2 = name.split(" ");
                for (i = 0; i < arr2.length; i++) {
                    if (arr1.indexOf(arr2[i]) == -1) {
                        element.className += " " + arr2[i];
                    }
                }
            }

            function QuitarClase(element, name) {
                var i, arr1, arr2;
                arr1 = element.className.split(" ");
                arr2 = name.split(" ");
                for (i = 0; i < arr2.length; i++) {
                    while (arr1.indexOf(arr2[i]) > -1) {
                        arr1.splice(arr1.indexOf(arr2[i]), 1);
                    }
                }
                element.className = arr1.join(" ");
            }
        </script>
    </body>
</html>

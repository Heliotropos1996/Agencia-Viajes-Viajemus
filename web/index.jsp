<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="">
    <!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
    <head>
        <title>TPFinal</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
        <LINK REL=StyleSheet HREF="styles.css" TYPE="text/css" MEDIA=screen>
    </head>
    <body id="top">
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <div class="wrapper row0">
            <div id="topbar" class="hoc clear">
                <div class="fl_left"> 
                    <!-- ################################################################################################ -->
                    <ul class="nospace">
                        <li><i class="fas fa-phone rgtspace-5"></i> +549 (221) 525 0772</li>
                        <li><i class="far fa-envelope rgtspace-5"></i> foschiniramiro@gmail.com</li>
                    </ul>
                    <!-- ################################################################################################ -->
                </div>
                <div class="fl_right"> 
                   
                    <ul class="nospace">
                        <li><a href="login.jsp" title="Login"><i class="fas fa-sign-in-alt"></i></a></li>
                        <li><a href="#" title="Sign Up"><i class="fas fa-edit"></i></a></li>
                        <li id="searchform">
                            <div>
                                <form action="#" method="post">
                                    <fieldset>
                                        <legend>Quick Search:</legend>
                                        <input type="text" placeholder="Enter search term&hellip;">
                                        <button type="submit"><i class="fas fa-search"></i></button>
                                    </fieldset>
                                </form>
                            </div>
                        </li>
                    </ul>

                </div>
            </div>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- Top Background Image Wrapper -->
        <div class="bgded" style="background-image:url('images/viajes-y-expediciones_cuadrada.jpg');"> 
            <!-- ################################################################################################ -->
            <div class="wrapper row1">
                <header id="header" class="hoc clear">
                    <div id="logo" class="fl_left"> 
                        <!-- ################################################################################################ -->
                        <h1><a href="index.jsp">Agencia de viajes Viajemus</a></h1>
                        <!-- ################################################################################################ -->
                    </div>
                    <nav id="mainav" class="fl_right"> 
                        <!-- ################################################################################################ -->
                        <ul class="clear">
                            <li class="active"><a href="CrearVentaServicio.jsp">Ventas</a></li>

                            <li><a href="Empleado.jsp">Empleados</a></li>
                            <li><a href="Cliente.jsp">Clientes</a></li>
                            <li><a href="CrearPaquete.jsp">Paquetes</a></li>
                            <li><a href="ServiciosCargar.jsp">Servicios</a></li>
                        </ul>
                        <!-- ################################################################################################ -->
                    </nav>
                </header>
            </div>
            <!-- ################################################################################################ -->
            <!-- ################################################################################################ -->
            <!-- ################################################################################################ -->
            <div class="overlay">
                <div id="pageintro" class="hoc clear"> 
                    <!-- ################################################################################################ -->
                    <article>
                        <h3 class="heading"></h3>
                        <p></p>
                        <footer> <br> </br>   <br> </br> </footer>
                    </article>
                    <!-- ################################################################################################ -->
                </div>
            </div>
            <!-- ################################################################################################ -->
        </div>
        <!-- End Top Background Image Wrapper -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->


        <div class="wrapper coloured">
            <section id="ctdetails" class="hoc clear"> 
                <!-- ################################################################################################ -->
                <ul class="nospace clear">
                    <li class="one_quarter first">
                        <div class="block clear"><a href="#"><i class="fas fa-phone"></i></a> <span><strong>Llamame :</strong> +54 9 (221) 525 0772</span></div>
                    </li>
                    <li class="one_quarter">
                        <div class="block clear"><a href="mailto:foschiniramiro@gmail.com"><i class="fas fa-envelope"></i></a> <span><strong>Enviame un mail:</strong> foschiniramiro@gmail.com </span></div>
                    </li>
                    <li class="one_quarter">
                        <div class="block clear"><a href="#"><i class="fas fa-clock"></i></a> <span><strong> Monday - Saturday:</strong> 08.00am - 18.00pm</span></div>
                    </li>
                    <li class="one_quarter">
                        <div class="block clear"><a href="https://goo.gl/maps/diQuXxwMb9zAU7uFA"><i class="fas fa-map-marker-alt"></i></a> <span><strong>Dónde me encuentras</strong>La Plata, Buenos Aires</span></div>
                    </li>
                </ul>
                <!-- ################################################################################################ -->
            </section>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->


        <div class="bgded overlay row4" style="background-image:url('images/50046209786_063e5475fe_b.jpg');">
            <footer id="footer" class="hoc clear"> 
                <!-- ################################################################################################ -->
                <div class="one_quarter first">
                    <h6 class="heading">Pellentesque dictum</h6>
                    <ul class="nospace linklist">
                        <li><a href="#">Servicios Turísticos</a></li>
                        <li><a href="#">Paquetes Turísticos</a></li>
                        <li><a href="#">Empleados</a></li>
                        <li><a href="#">Clientes</a></li>
                        <li><a href="#">Ventas</a></li>
                    </ul>
                </div>
                <div class="one_quarter">
                    <h6 class="heading">Fermentum pellentesque</h6>
                    <p class="nospace btmspace-15">Pede ullamcorper facilisis bibendum nulla elit gravida elit vel suscipit urna.</p>
                    <form action="#" method="post">
                        <fieldset>
                            <legend>Newsletter:</legend>
                            <input class="btmspace-15" type="text" value="" placeholder="Name">
                            <input class="btmspace-15" type="text" value="" placeholder="Email">
                            <button type="submit" value="submit">Submit</button>
                        </fieldset>
                    </form>
                </div>
                <div class="one_quarter">
                    <h6 class="heading">Nisi nunc velit aliquam</h6>
                    <ul class="nospace linklist">
                        <li>
                            <article>
                                <p class="nospace btmspace-10"><a href="#">Sapien sit amet tortor nulla vulputate odio in varius tristique nisi urna.</a></p>
                                <time class="block font-xs" datetime="2045-04-06">Friday, 6<sup>th</sup> April 2045</time>
                            </article>
                        </li>
                        <li>
                            <article>
                                <p class="nospace btmspace-10"><a href="#">Consequat erat id rutrum nisi magna vel tellus phasellus malesuada bibendum.</a></p>
                                <time class="block font-xs" datetime="2045-04-05">Thursday, 5<sup>th</sup> April 2045</time>
                            </article>
                        </li>
                    </ul>
                </div>
                <div class="one_quarter">
                    <h6 class="heading">Lacinia iaculis nunc</h6>
                    <ul class="nospace clear latestimg">
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                        <li><a class="imgover" href="#"><img src="images/demo/100x100.png" alt=""></a></li>
                    </ul>
                </div>
                <!-- ################################################################################################ -->
            </footer>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <div class="wrapper row5">
            <div id="copyright" class="hoc clear"> 
                <!-- ################################################################################################ -->
                <p class="fl_left">Copyright &copy; 2021 - All Rights Reserved - <a target="_blank" href="https://www.linkedin.com/in/ramirofoschini/">Ramiro Foschini</a></p>

                <!-- ################################################################################################ -->
            </div>
        </div>
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <!-- ################################################################################################ -->
        <a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
        <!-- JAVASCRIPTS -->
        <script src="layout/scripts/jquery.min.js"></script>
        <script src="layout/scripts/jquery.backtotop.js"></script>
        <script src="layout/scripts/jquery.mobilemenu.js"></script>
    </body>
</html>
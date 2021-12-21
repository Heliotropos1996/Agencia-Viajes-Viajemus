<%@page import="Logica.ServicioTuristico"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <title>Modificar Servicios</title>
        <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

    </head>
    <body id="top">
        <div class="bgded" style="background-image:url('images/viajes-y-expediciones_cuadrada.jpg');"> 
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
                            <li class="active"><a href="index.jsp">Inicio</a></li>

                            <li><a href="Empleado.jsp">Empleados</a></li>
                            <li><a href="Cliente.jsp">Clientes</a></li>
                            <li><a href="CrearPaquete.jsp">Paquetes</a></li>
                            <li><a href="ServiciosCargar.jsp">Servicios</a></li>
                        </ul>
                        <!-- ################################################################################################ -->
                    </nav>
                </header>
            </div>
        </div>

        <div class="bgded overlay row4" style="background-image:url('images/viajes-y-expediciones_cuadrada.jpg');">
            <footer id="footer" class="hoc clear"> 
                <div class="one_quarter">
                    <h5 class="heading"> Modificar Servicio </h5>
                    <form action="SvModificarServicio" method="get">
                        <% HttpSession misession = request.getSession();
                            ServicioTuristico ser = (ServicioTuristico) misession.getAttribute("servicio");
                        %>
                        <fieldset>

                            <input type="text" class="btmspace-15"  name="nombre" placeholder="Nombre" value = "<%=ser.getNombre()%>"> 



                            <input type="text" class="btmspace-15"   name="descrip" placeholder="Descripción" value = "<%=ser.getDescripción_breve()%>"">

                            <input type="text" class="btmspace-15"  name="destino" placeholder="Destino" value = "<%=ser.getDestino_servicio()%>">

                            <input type="text" class="btmspace-15"   name="fecha" placeholder="Fecha" value = "<%=ser.getFecha_servicio()%>">



                            <input type="text" class="btmspace-15"  name="costo" placeholder="Costo ($)" value = "<%=ser.getCosto_servicio()%>">



                            <input type="hidden" name="id" value="<%=ser.getCodigo_servicio()%>">



                            <button type="submit" class="btn btn-primary">Modificar</button> 


                        </fieldset>
                    </form>
                </div>

            </footer>
        </div>
    </body>
</html>
<%@page import="Logica.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <title>Gestion empleados</title>
        <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

    </head>
    <body id="top">
        <div class="bgded" style="background-image:url('images/viajes-y-expediciones_cuadrada.jpg');"> 
            <div class="wrapper row1">
                <header id="header" class="hoc clear">
                    <div id="logo" class="fl_left"> 
                        <!-- ################################################################################################ -->
                        <h1><a href="principal.jsp">Agencia de viajes Viajemus</a></h1>
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
                    <h5 class="heading"> Modificar Cliente </h5>
                    <form action="SvClienteMod" method="get">
                         <% HttpSession misession = request.getSession();
               Cliente clie = (Cliente) misession.getAttribute("cliente");
             %>

                        <fieldset>

                            <input type="text" class="btmspace-15"   name="nombre" placeholder="Nombre" value="<%=clie.getNombre()%>">

                            <input type="text" class="btmspace-15"   name="apellido" placeholder="Apellido" value="<%=clie.getApellido()%>">

                            <input type="text" class="btmspace-15"   name="direccion" placeholder="Direccion" value="<%=clie.getDirección()%>">

                            <input type="text" class="btmspace-15"   name="dni" placeholder="DNI" value="<%=clie.getDni()%>">

                            <input type="text" class="btmspace-15"   name="fecha_nac" placeholder="Fecha nacimiento" value="<%=clie.getFecha_nac()%>">

                            <input type="text" class="btmspace-15"   name="nacionalidad" placeholder="Nacionalidad" value="<%=clie.getNacionalidad()%>">

                            <input type="text" class="btmspace-15"   name="celular" placeholder="Celular" value="<%=clie.getCelular()%>">

                            <input type="text" class="btmspace-15"   name="email" placeholder="Correo" value="<%=clie.getEmail()%>">

                         <input type="hidden" name="id_cliente" value="<%=clie.getId_cliente()%>">
                            <button type="submit" class="btn btn-primary">Modificar</button> <br> </br>
                      

                        </fieldset>
                    </form>
                    
                </div>
                 

            </footer>
        </div>
    </body>
</html>
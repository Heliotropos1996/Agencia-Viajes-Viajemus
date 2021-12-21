<%@page import="Logica.Empleado"%>
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
                    <h5 class="heading"> Gestion Empleados </h5>
                    <form action="SvModificarEmple" method="get">
                        <% HttpSession misession = request.getSession();
                            Empleado emple = (Empleado) misession.getAttribute("empleado");
                        %>
                        <fieldset>

                            <input type="text" class="btmspace-15"  name="nombre" placeholder="Nombre" value = "<%=emple.getNombre()%>"> 

                            <input type="text" class="btmspace-15" name="apellido" placeholder="Apellido" value = "<%=emple.getApellido()%>">

                            <input type="text" class="btmspace-15"   name="direccion" placeholder="Direccion" value = "<%=emple.getDirección()%>"">

                            <input type="text" class="btmspace-15"  name="dni" placeholder="DNI" value = "<%=emple.getDni()%>">

                            <input type="text" class="btmspace-15"   name="fecha_nac" placeholder="Fecha nacimiento" value = "<%=emple.getFecha_nac()%>">

                            <input type="text" class="btmspace-15"  name="nacionalidad" placeholder="Nacionalidad" value = "<%=emple.getNacionalidad()%>">

                            <input type="text" class="btmspace-15"   name="celular" placeholder="Celular" value = "<%=emple.getCelular()%>">

                            <input type="text" class="btmspace-15"   name="email" placeholder="Correo" value = "<%=emple.getEmail()%>">

                            <input type="text" class="btmspace-15"  name="cargo" placeholder="Cargo" value = "<%=emple.getCargo()%>">

                            <input type="text" class="btmspace-15"  name="sueldo" placeholder="Sueldo ($)" value = "<%=emple.getSueldo()%>">
                            
                            <input type="text" class="btmspace-15"  name="usuario" placeholder="Usuario" value = "<%=emple.getUsu().getNombreUsu()%>"> 
                            
                            <input type="password" class="btmspace-15"  name="contrasenia" placeholder="Contraseña" value = "<%=emple.getUsu().getContrasenia()%>">

                            <input type="hidden" name="id" value="<%=emple.getId_empleado()%>">
                            
                            <input type="hidden" name="id_usu" value="<%=emple.getUsu().getId()%>">
                            
                            <button type="submit" class="btn btn-primary">Modificar</button> 


                        </fieldset>
                    </form>
                </div>

            </footer>
        </div>
    </body>
</html>
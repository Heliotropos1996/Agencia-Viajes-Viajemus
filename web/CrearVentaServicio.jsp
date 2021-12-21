<%@page import="Logica.Empleado"%>
<%@page import="Logica.Cliente"%>
<%@page import="Logica.ServicioTuristico"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Controladora"%>
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
                    <h5 class="heading"> Crear venta </h5>
                    <form action="SvCrearVenta" method="POST">

                        <fieldset>

                            <input type="text" class="btmspace-15"   name="fecha" placeholder="Fecha">

                            <input type="text" class="btmspace-15"   name="mediopago" placeholder="Medio de pago">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Descripción</th>
                                        <th>Destino</th>
                                        <th>Fecha</th>
                                        <th>Costo</th>

                                        <th colspan="4">Selección</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% Controladora control = new Controladora();
                                        List<ServicioTuristico> listaServicios = control.traerServicios(); //Defino una controladora y traigo la lista de servicios

                                        for (ServicioTuristico ser : listaServicios) {

                                    %>
                                    <tr>
                                        <% String nombre = ser.getNombre();%>
                                        <td> <%=nombre%> </td> 

                                        <%String descrip = ser.getDescripción_breve();%>
                                        <td><%= descrip%> </td>


                                        <%String destino = ser.getDestino_servicio();%>
                                        <td><%= destino%> </td>

                                        <%String fecha = ser.getFecha_servicio();%>
                                        <td><%= fecha%> </td>


                                        <%double costo = ser.getCosto_servicio();%>
                                        <td><%= costo%> </td>

                                        <%int idSer = ser.getCodigo_servicio();%>
                                        <td> 

                                            <form name="frmCrearVenta" action="SvCrearVenta" method="POST" style="display: inline">

                                                <input type="checkbox" name="idSer" value="<%=idSer%>">

                                                </td> 
                                                </tr>

                                                <%}%>

                                                </tbody> 
                                                <thead>
                                                    <tr>
                                                        <th>Nombre cliente</th>
                                                        <th>Apellido</th>
                                                        <th>Direccion</th>
                                                        <th>dni</th>
                                                        <th>fecha nac</th>

                                                        <th colspan="4">Selección</th>
                                                    </tr>
                                                </thead>
                                                <tbody> 
                                                    <%
                                                        List<Cliente> listaClientes = control.traerClientes();

                                                        for (Cliente cli : listaClientes) {

                                                    %> 
                                                    <tr> 
                                                        <% String nombre = cli.getNombre();%> 
                                                        <td> <%=nombre%> </td>  

                                                        <%String ap = cli.getApellido();%> 
                                                        <td><%= ap%> </td> 


                                                        <%String dir = cli.getDirección();%> 
                                                        <td><%= dir%> </td> 

                                                        <%String dni = cli.getDni();%>
                                                        <td><%= dni%> </td> 


                                                        <%String fech = cli.getFecha_nac();%> 
                                                        <td><%= fech%> </td> 

                                                        <%int idCli = cli.getId_cliente();%> 
                                                        <td>  

                                                            <form name="frmCrearPaquete" action="SvCrearVenta" method="POST" style="display: inline"> 

                                                                <input type="checkbox" name="idCli" value="<%=idCli%>"> 

                                                                </td>  
                                                           </tr> 

                                                                <%}%> 

                                                                </tbody>  

                                                                <thead>
                                                                    <tr>
                                                                        <th>Nombre Empleado</th>
                                                                        <th>Apellido</th>
                                                                        <th>Direccion</th>
                                                                        <th>dni</th>
                                                                        <th>fecha nac</th>

                                                                        <th colspan="4">Selección</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <%
                                                                        List<Empleado> listaEmpleados = control.traerEmpleados();

                                                                        for (Empleado emp : listaEmpleados) {

                                                                    %>
                                                                    <tr>
                                                                        <% String nombre = emp.getNombre();%>
                                                                        <td> <%=nombre%> </td> 

                                                                        <%String ap = emp.getApellido();%>
                                                                        <td><%= ap%> </td>


                                                                        <%String dir = emp.getDirección();%>
                                                                        <td><%= dir%> </td>

                                                                        <%String dni = emp.getDni();%>
                                                                        <td><%= dni%> </td>


                                                                        <%String fech = emp.getFecha_nac();%>
                                                                        <td><%= fech%> </td>

                                                                        <%int idEmp = emp.getId_empleado();%>
                                                                        <td> 

                                                                            <form name="frmCrearPaquete" action="SvCrearVenta" method="POST" style="display: inline">

                                                                                <input type="checkbox" name="idEmp" value="<%=idEmp%>">

                                                                                </td> 
                                                                                </tr>

                                                                                <%}%>

                                                                                </tbody> 

                                                                                </fieldset>


                                                                                </table>  
                                                                                <button type="submit" class="btn btn-primary">Crear Venta</button>
                                                                            </form>

                                                                            </div>


                                                                            </footer>
                                                                            </div>
                                                                            </body>
                                                                            </html>
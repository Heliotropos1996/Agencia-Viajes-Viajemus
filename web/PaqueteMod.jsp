<%@page import="Logica.PaqueteTuristico"%>
<%@page import="Logica.ServicioTuristico"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <title>
            Crear Paquete Turistico
        </title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
        <link href="estilostablaemple.css" rel="stylesheet" type="text/css" media="all">
    </head>


    <body>

        <h1><i class="fab fa-snapchat-ghost"></i> Lista Servicios Disponibles</h1> <br> </br> <h2> Seleccione al menos dos Servicios </h2>
        <div class="form">


        </div>
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
            <tbody id="player-table">
            <tbody>
                <form action="SvModificarPaquete" method="get">
                        <% HttpSession misession = request.getSession();
                            PaqueteTuristico paq = (PaqueteTuristico) misession.getAttribute("paquete");
                             Controladora control = new Controladora();
                    List<ServicioTuristico> listaServicios = control.traerServicios();
                            {%>
               

                            <% for (ServicioTuristico ser : listaServicios) {

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

                    <%int id = ser.getCodigo_servicio();%>
                    <% int idp = paq.getCodigo_paquete();%>
                    <td> 

                        <form name="frmCrearPaquete" action="SvCrearPaquete" method="POST" style="display: inline">

                            <input type="checkbox" name="id" value="<%=id%>">

                    </td> 
                            </tr>

                            <%}%>
<%}%>
               </tbody> 

                            <button type="submit" class="btn btn-primary">Crear</button>
                        </form>
        </table>
                            <button type="submit" class="btn btn-primary"> <a href="MostrarPaquetes.jsp">Mostrar Paquetes</a></button>
        <div id="winner"></div>

    </body>

</html>
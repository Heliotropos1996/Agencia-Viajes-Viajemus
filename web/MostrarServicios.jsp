<%@page import="Logica.ServicioTuristico"%>
<%@page import="java.util.List"%>

<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <title>
            Lista Servicios
        </title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
        <link href="estilostablaemple.css" rel="stylesheet" type="text/css" media="all">
    </head>


    <body>

        <h1><i class="fab fa-snapchat-ghost"></i> Lista Servicios</h1>
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
                   
                    <th colspan="4">Actions</th>
                </tr>
            </thead>
            <tbody id="player-table">
            <tbody>
                <% Controladora control = new Controladora();
                    List<ServicioTuristico> listaServicios = control.traerServicios(); 
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

                   

                    <%int id = ser.getCodigo_servicio();%>
                    <td> 

                        <form name="frmModificarServicio" action="SvModificarServicio" method="POST" style="display: inline">

                            <input type="hidden" name="id" value="<%=id%>">
                            <button type="submit" class="btn btn-primary" data-title="Edit" style="display: inline">Modificar</button>

                        </form>
                        <form name="frmModificarServicio" action="SvEliminarServicio" method="POST" style="display: inline">

                            <input type="hidden" name="id" value="<%=id%>">
                            <button type="submit" class="btn btn-primary" data-title="Edit" style="display: inline">Eliminar</button>

                        </form>
                    </td> 
                </tr>

                <%}%>
            </tbody>
        </table>
        <div id="winner"></div>

    </body>

</html>
<%@page import="Logica.ServicioTuristico"%>
<%@page import="java.util.List"%>
<%@page import="Logica.PaqueteTuristico"%>
<%@page import="Logica.Controladora"%>
<!DOCTYPE html>
<html>

    <head>

        <title>
            Lista Paquetes
        </title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
        
        <link href="estilostablaemple.css" rel="stylesheet" type="text/css" media="all">
         
    </head>


    <body>

        <h1><i class="fab fa-snapchat-ghost"></i> Lista Paquetes</h1>
        <div class="form">


        </div>
        <table>
            <thead>
                <tr>
                    <th>Servicio</th>
                    <th>Descripción Servicio</th>
                    <th>Destino</th>
                    <th>Fecha</th>
                    <th>Costo Paquete</th>

                    <th colspan="4">Actions</th>
                </tr>
            </thead>

            <tbody>
                <% Controladora control = new Controladora();
                    List<PaqueteTuristico> listaPaquetes = control.traerPaquetes();

                    for (PaqueteTuristico paq : listaPaquetes) {
                %>
                <tr>
                    <% List<ServicioTuristico> listaServi = paq.getServTuri();  %>

                    <td> <% for (ServicioTuristico serv : listaServi) {

                        %>

                        <% String nombre = serv.getNombre();%>
                        <%=nombre%>  <br></br>
                        <%}%></td>

                    <td> <% for (ServicioTuristico serv : listaServi) {

                        %>
                        <%String descrip = serv.getDescripción_breve();%>
                        <%= descrip%> <br></br>
                        <%}%></td>
                    <td> <% for (ServicioTuristico serv : listaServi) {

                        %>
                        <%String destino = serv.getDestino_servicio();%>
                        <%= destino%> <br></br>
                        <%}%></td>
                    <td> <% for (ServicioTuristico serv : listaServi) {

                        %>
                        <%String fecha = serv.getFecha_servicio();%>
                        <%= fecha%> <br></br>

                        <%}%></td>

                    <%double costo = paq.getCosto_paquete();%>
                    <td><%= costo%> </td>

                    <%int id = paq.getCodigo_paquete();%> 
                    <td> 
                        <form name="frmModificarServicio" action="SvModificarServicio" method="POST" style="display: inline">
                            <input type="hidden" name="id" value="<%=id%>">
                            <button type="submit" class="btn btn-primary" data-title="Edit" style="display: inline">Modificar</button>
                        </form>
                        <form name="frmEliminarPaquete" action="SvEliminarPaquete" method="POST" style="display: inline">
                            <input type="hidden" name="id" value="<%=id%>">
                            <button type="submit" class="btn btn-primary" data-title="Edit" style="display: inline">Eliminar</button>
                        </form>
                    </td> 


                    <%}%>
                </tr>


            </tbody>
        </table>
        <div id="winner"></div>

    </body>

</html>
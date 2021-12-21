


<%@page import="Logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="Logica.Cliente"%>
<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
        <link href="estilostablaemple.css" rel="stylesheet" type="text/css" media="all">
        <title>Lista Clientes</title>
    </head>
    <body>


        <h1><i class="fab fa-snapchat-ghost"></i> Lista clientes</h1>


        <table>
            <thead>
                <tr>
                    <th>Nombre y Apellido</th>
                    <th>Dirección</th>
                    <th>DNI</th>
                    <th>Fecha Nac</th>
                    <th>Nacionalidad</th>
                    <th>Celular</th>
                    <th>Correo</th>
                    <th colspan="4">Actions</th>
                </tr>
            </thead>

            <tbody id="player-table">

                <% Controladora control = new Controladora();
                    List<Cliente> listaClientes = control.traerClientes();

                    for (Cliente cli : listaClientes) {

                %>
                <tr>
                    <% String nombreComp = cli.getNombre() + " " + cli.getApellido();%>
                    <td> <%=nombreComp%> </td>

                    <%String direccion = cli.getDirección();%>
                    <td><%= direccion%> </td>


                    <%String dni = cli.getDni();%>
                    <td><%= dni%> </td>

                    <%String fecha_nac = cli.getFecha_nac();%>
                    <td><%= fecha_nac%> </td>

                    <%String nacionalidad = cli.getNacionalidad();%>
                    <td><%= nacionalidad%> </td>

                    <%String celular = cli.getCelular();%>
                    <td><%= celular%> </td>

                    <%String correo = cli.getEmail();%>
                    <td><%= correo%> </td>

                    <%int id = cli.getId_cliente();%>
                    <td> 

                        <form name="frmModificarEmple" action="SvClienteMod" method="POST" style="display: inline">

                            <input type="hidden" name="id" value="<%=id%>">
                            <button type="submit" class="btn btn-primary" data-title="Edit" style="display: inline">Modificar</button>

                        </form>
                        <form name="frmModificarEmple" action="SvEliminarCliente" method="POST" style="display: inline">

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

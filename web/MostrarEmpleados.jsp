
<%@page import="Logica.Empleado"%>
<%@page import="java.util.List"%>

<%@page import="Logica.Controladora"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <title>
            Lista empleados
        </title>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css">
        <link href="estilostablaemple.css" rel="stylesheet" type="text/css" media="all">
    </head>


    <body>

        <h1><i class="fab fa-snapchat-ghost"></i> Lista empleados</h1>
        <div class="form">


        </div>
        <table>
            <thead>
                <tr>
                    <th>Nombre y apellido</th>
                    <th>Direccion</th>
                    <th>DNI</th>
                    <th>Fecha Nac.</th>
                    <th>Nacionalidad</th>
                    <th>Celular</th>
                    <th>Email</th>
                    <th>Cargo</th>
                    <th>Sueldo</th>
                    <th>Usuario</th>
                    <th>Contraseña</th> 
                    <th colspan="4">Actions</th>
                </tr>
            </thead>
            <tbody id="player-table">
            <tbody>
                <% Controladora control = new Controladora();
                    List<Empleado> listaEmpleados = control.traerEmpleados(); //Defino una controladora y traigo la lista de empleados

                    for (Empleado emple : listaEmpleados) {

                %>
                <tr>
                    <% String nombreComp = emple.getNombre() + " " + emple.getApellido();%>
                    <td> <%=nombreComp%> </td> 

                    <%String direccion = emple.getDirección();%>
                    <td><%= direccion%> </td>


                    <%String dni = emple.getDni();%>
                    <td><%= dni%> </td>

                    <%String fecha_nac = emple.getFecha_nac();%>
                    <td><%= fecha_nac%> </td>

                    <%String nacionalidad = emple.getNacionalidad();%>
                    <td><%= nacionalidad%> </td>

                    <%String celular = emple.getCelular();%>
                    <td><%= celular%> </td>

                    <%String correo = emple.getEmail();%>
                    <td><%= correo%> </td>

                    <%String cargo = emple.getCargo();%>
                    <td><%= cargo%> </td>

                    <%double sueldo = emple.getSueldo();%>
                    <td><%= sueldo%> </td>

                    <%String nomUsu = emple.getUsu().getNombreUsu();%>
                    <td><%=nomUsu%> </td>

                    <%String contrasenia = emple.getUsu().getContrasenia();%>
                    <td ><%=contrasenia%> </td> 

                    <%int id = emple.getId_empleado();%>
                    <td> 

                        <form name="frmModificarEmple" action="SvModificarEmple" method="POST" style="display: inline">

                            <input type="hidden" name="id" value="<%=id%>">
                            <button type="submit" class="btn btn-primary" data-title="Edit" style="display: inline">Modificar</button>

                        </form>
                        <form name="frmModificarEmple" action="SvEliminarEmple" method="POST" style="display: inline">

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
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Logica.Controladora;
import Logica.Empleado;
import Logica.Usuario;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "SvModificarEmple", urlPatterns = {"/SvModificarEmple"})
public class SvModificarEmple extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        int id_usu = Integer.parseInt(request.getParameter("id_usu"));
        int id = Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String direccion = request.getParameter("direccion");
        String dni = request.getParameter("dni");
        String fecha_nac = request.getParameter("fecha_nac");
        String nacionalidad = request.getParameter("nacionalidad");
        String celular = request.getParameter("celular");
        String email = request.getParameter("email");
        String cargo = request.getParameter("cargo");
        Double sueldo = Double.parseDouble(request.getParameter("sueldo"));
        String nomUsu = request.getParameter("usuario");
        String contrasenia = request.getParameter("contrasenia");
        
        Empleado emple = control.traerEmple(id);
        
        Usuario usu = control.traerUsuario(id_usu);
        
        
        usu.setNombreUsu(nomUsu);
        usu.setContrasenia(contrasenia);
        emple.setNombre(nombre);
        emple.setApellido(apellido);
        emple.setDirección(direccion);
        emple.setDni(dni);
        emple.setFecha_nac(fecha_nac);
        emple.setNacionalidad(nacionalidad);
        emple.setCelular(celular);
        emple.setEmail(email);
        emple.setCargo(cargo);
        emple.setSueldo(sueldo);
        emple.setUsu(usu);

        control.modificarEmpleado(emple);
        control.modificarUsuario(usu);

        request.getSession().setAttribute("listaEmpleados", control.traerEmpleados());
        response.sendRedirect("MostrarEmpleados.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        int id = Integer.parseInt(request.getParameter("id"));
        Empleado emple = control.traerEmple(id);
        HttpSession misession = request.getSession();
        misession.setAttribute("empleado", emple);
        response.sendRedirect("EmpleMod.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

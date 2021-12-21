
package Servlets;

import Logica.Cliente;
import Logica.Controladora;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "SvClienteMod", urlPatterns = {"/SvClienteMod"})
public class SvClienteMod extends HttpServlet {
Controladora control = new Controladora ();
  

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        int id_cliente = Integer.parseInt(request.getParameter("id_cliente"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String direccion = request.getParameter("direccion");
        String dni = request.getParameter("dni");
        String fecha_nac = request.getParameter("fecha_nac");
        String nacionalidad = request.getParameter("nacionalidad");
        String celular = request.getParameter("celular");
        String email = request.getParameter("email");
       
      
        Cliente cli = control.traerCliente(id_cliente);
         
        cli.setNombre(nombre);
        cli.setApellido(apellido);
        cli.setDirección(direccion);
        cli.setDni(dni);
        cli.setFecha_nac(fecha_nac);
        cli.setNacionalidad(nacionalidad);
        cli.setCelular(celular);
        cli.setEmail(email);
        
        control.modificarCliente(cli);
         request.getSession().setAttribute("listaClientes", control.traerClientes());
        response.sendRedirect("MostrarClientes.jsp");
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        int id = Integer.parseInt(request.getParameter("id"));
             Cliente cli = control.traerCliente (id);
             HttpSession misession = request.getSession();
             misession.setAttribute("cliente", cli);
             response.sendRedirect("ClieMod.jsp");
    }

 
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

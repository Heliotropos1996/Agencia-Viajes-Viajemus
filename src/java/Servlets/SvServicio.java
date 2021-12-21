
package Servlets;


import Logica.Controladora;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SvServicio", urlPatterns = {"/SvServicio"})
public class SvServicio extends HttpServlet {
Controladora control = new Controladora ();
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String nombre = request.getParameter("nombre");
        String descrip = request.getParameter("descrip");
        String destino = request.getParameter("destino");
        String fecha = request.getParameter("fecha");
        double costo = Double.parseDouble(request.getParameter("costo"));
        
        
        control.crearServicio(nombre, descrip, destino, fecha, costo);
        response.sendRedirect("ServiciosCargar.jsp");
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

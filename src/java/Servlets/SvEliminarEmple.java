
package Servlets;

import Logica.Controladora;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SvEliminarEmple", urlPatterns = {"/SvEliminarEmple"})
public class SvEliminarEmple extends HttpServlet {
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
         int id = Integer.parseInt(request.getParameter("id"));
        control.eliminarEmple(id);
        response.sendRedirect("MostrarEmpleados.jsp");
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

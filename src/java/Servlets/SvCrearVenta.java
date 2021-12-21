
package Servlets;

import Logica.Controladora;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ramip
 */
@WebServlet(name = "SvCrearVenta", urlPatterns = {"/SvCrearVenta"})
public class SvCrearVenta extends HttpServlet {


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
        Controladora control = new Controladora();
        
        String fecha = request.getParameter("fecha");
        String pago = request.getParameter("mediopago");
        int idSer = Integer.parseInt(request.getParameter("idSer"));
        
         int idCli = Integer.parseInt(request.getParameter("idCli"));
        int idEmp = Integer.parseInt(request.getParameter("idEmp"));
        
        control.crearVentaSer(fecha, pago, idSer, idCli, idEmp);
       
        response.sendRedirect("CrearVentaServicio.jsp");
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}

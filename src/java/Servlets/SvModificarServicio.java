
package Servlets;

import Logica.Controladora;
import Logica.ServicioTuristico;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "SvModificarServicio", urlPatterns = {"/SvModificarServicio"})
public class SvModificarServicio extends HttpServlet {
Controladora control = new Controladora();
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        int id = Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        String descrip = request.getParameter("descrip");
        String destino = request.getParameter("destino");
        String fecha = request.getParameter("fecha");
        double costo = Double.parseDouble(request.getParameter("costo"));
        
        ServicioTuristico ser = control.traerServicio(id);
        
        ser.setNombre(nombre);
        ser.setDescripción_breve(descrip);
        ser.setDestino_servicio(destino);
        ser.setFecha_servicio(fecha);
        ser.setCosto_servicio(costo);
        
        control.modificarServicio(ser);
        
        request.getSession().setAttribute("listaServicios", control.traerServicios());
        response.sendRedirect("MostrarServicios.jsp");
                
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
         int id = Integer.parseInt(request.getParameter("id"));
       ServicioTuristico ser = control.traerServicio(id);
        HttpSession misession = request.getSession();
        misession.setAttribute("servicio", ser);
        response.sendRedirect("ServiciosMod.jsp");
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

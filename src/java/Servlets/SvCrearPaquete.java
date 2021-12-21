
package Servlets;

import Logica.Controladora;
import Logica.ServicioTuristico;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SvCrearPaquete", urlPatterns = {"/SvCrearPaquete"})
public class SvCrearPaquete extends HttpServlet {
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
 
      
        
      String [] servId = request.getParameterValues("id");
     
      List <ServicioTuristico> servicios = new ArrayList<>();     
     
        double costoPaquete = 0;
      
      for (String id : servId){
        int ids = Integer.parseInt(id);
        ServicioTuristico servi;
        
         servi = control.traerServicio(ids);
         servicios.add(servi);
         costoPaquete += servi.getCosto_servicio();
    
     }
      
      control.crearPaquete(servicios, costoPaquete);
     
response.sendRedirect("CrearPaquete.jsp");
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

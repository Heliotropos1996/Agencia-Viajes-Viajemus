package Servlets;

import Logica.Controladora;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ramip
 */
@WebServlet(name = "SvLogin", urlPatterns = {"/SvLogin"})
public class SvLogin extends HttpServlet {

    Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

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

        String usuario = request.getParameter("user");
        String contra = request.getParameter("contra");
        boolean verificar = control.verificarUsuario(usuario, contra);

        if (verificar == true) {
            HttpSession misession = request.getSession(true);
            misession.setAttribute("usuario", usuario);
            misession.setAttribute("contra", contra);

            response.sendRedirect("index.jsp");
        } else {
          
          
            response.sendRedirect("login.jsp");
            

        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

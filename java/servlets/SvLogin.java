
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.ControladoraNegocio;


@WebServlet(name = "SvLogin", urlPatterns = {"/SvLogin"})
public class SvLogin extends HttpServlet {
    
      ControladoraNegocio control = new ControladoraNegocio();
 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String usuario = request.getParameter("user");
        String contrasenia = request.getParameter("password");
        
        boolean validacion = false;
        validacion = control.comprobarIngreso(usuario,contrasenia);
        
        if(validacion){
            HttpSession miSession = request.getSession(true);
            miSession.setAttribute("usuario", usuario);
            response.sendRedirect("index.jsp");
        }else{
            response.sendRedirect("loginError.jsp");
        }
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}

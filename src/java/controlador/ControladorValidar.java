
package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Usuario;
import modelo.UsuarioDao;


public class ControladorValidar extends HttpServlet {
    
    UsuarioDao udao = new UsuarioDao();
    Usuario us = new Usuario();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       String accion=request.getParameter("accion");
        if(accion.equalsIgnoreCase("Ingresar")){
            String usuario=request.getParameter("txtuser");
            String password=request.getParameter("txtpassword");
            us=udao.validar(usuario, password);
            if(us.getUsuario()!=null){
                request.setAttribute("usuario", us);
                request.getRequestDispatcher("controlador?menu=Principal").forward(request, response);
            } else {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
            }
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
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

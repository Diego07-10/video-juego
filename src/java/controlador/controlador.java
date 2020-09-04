
package controlador;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Cliente;
import modelo.ClienteDao;
import modelo.Juego;
import modelo.juegoDao;
import modelo.Usuario;
import modelo.UsuarioDao;
import java.io.IOException;
import java.util.List;


public class controlador extends HttpServlet {
    
    Usuario us=new Usuario();
    UsuarioDao udao=new UsuarioDao();
    Cliente c=new Cliente();
    ClienteDao cdao=new ClienteDao();
    Juego ju=new Juego();
    juegoDao jdao=new juegoDao();
    int ide;
    int cod;

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            String menu=request.getParameter("menu");
            String accion=request.getParameter("accion");
            if(menu.equals("Principal")){
                request.getRequestDispatcher("principal.jsp").forward(request, response);
            }  
            if(menu.equals("regClientes")){      
              switch (accion){
                    case "Agregar":
                          String cedula=request.getParameter("txtced");
                          String nombre=request.getParameter("txtnom");
                          String telefono=request.getParameter("txttel");
                          String correo=request.getParameter("txtcor");
                          String edad=request.getParameter("txtedad");
                          String direccion=request.getParameter("txtdir");
                          c.setCedula(cedula);
                          c.setNombre(nombre);
                          c.setTelefono(telefono);
                          c.setCorreo(correo);
                          c.setEdad(edad);
                          c.setDireccion(direccion);
                          cdao.agregar(c);
                          request.getRequestDispatcher("controlador?menu=regClientes").forward(request, response);
                          break;

                         default:
                          throw new AssertionError();
                  }
                request.getRequestDispatcher("regClientes.jsp").forward(request, response);
            }  
            if(menu.equals("listaClientes")){
                switch (accion) {
                      case "Listar":
                          List lista=cdao.listar();
                          request.setAttribute("cliente", lista);
                          break;

                      case "Delete":

                      default:
                          throw new AssertionError();
                }
                request.getRequestDispatcher("listaClientes.jsp").forward(request, response);
            }

             if(menu.equals("regJuegos")){
                           
              switch (accion){
                    case "Agregar":
                          String codigo=request.getParameter("txtcod");
                          String titulo=request.getParameter("txttit");
                          String protagonista=request.getParameter("txtpro");
                          String director=request.getParameter("txtdir");
                          String marca=request.getParameter("txtmar");
                          String consola=request.getParameter("txtcon");
                          String cantidad=request.getParameter("txtcan");
                          String precio=request.getParameter("txtpre");
                          ju.setCodigo(codigo);
                          ju.setTitulo(titulo);
                          ju.setProtagonista(protagonista);
                          ju.setDirector(director);
                          ju.setMarca(marca);
                          ju.setConsola(consola);
                          ju.setCantidad(cantidad);
                          ju.setPrecio(precio);
                          jdao.agregar(ju);
                          request.getRequestDispatcher("controlador?menu=regJuegos").forward(request, response);
                          break;
                          
                          default:
                          throw new AssertionError();  
            }  
              request.getRequestDispatcher("regJuegos.jsp").forward(request, response);
            }
   
              if(menu.equals("lisJuegos")){
                 switch (accion){
                      case "Listar":
                          List lista=jdao.listar();
                          request.setAttribute("juego", lista);
                          break;

                      default:
                          throw new AssertionError();
                  }
                request.getRequestDispatcher("lisJuegos.jsp").forward(request, response);
            }
              if(menu.equals("infJuegos")){
                request.getRequestDispatcher("infJuegos.jsp").forward(request, response);
            }
              if(menu.equals("regAlquiler")){
                 
                request.getRequestDispatcher("regAlquiler.jsp").forward(request, response);
            }
   
             if(menu.equals("consultas")){
                request.getRequestDispatcher("consultas.jsp").forward(request, response);
            }
             if(menu.equals("conTitulo")){
                request.getRequestDispatcher("conTitulo.jsp").forward(request, response);
            }
             if(menu.equals("conMarca")){
                request.getRequestDispatcher("conMarca.jsp").forward(request, response);
            }
             if(menu.equals("ventas")){
                request.getRequestDispatcher("ventas.jsp").forward(request, response);
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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

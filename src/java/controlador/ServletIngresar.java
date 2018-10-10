
package controlador;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import modelo.Ingresardatos;
import modelo.ingresoGSusu;

/**
 *
 * @author Usuario
 */
@WebServlet(name = "ServletIngresar", urlPatterns = {"/ServletIngresar"})
@MultipartConfig
public class ServletIngresar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        if (request.getParameter("registrar")!=null){
            
           
          String n,a,d,f,u,c,t,co;
          int i,r;
          i=Integer.parseInt(request.getParameter("id"));
          n=request.getParameter("nombre");
          a=request.getParameter("apellido");
          f=request.getParameter("fecha");
          u=request.getParameter("usuario");
          c=request.getParameter("clave");         
          t=request.getParameter("telefono");
          d=request.getParameter("direccion");
          co=request.getParameter("correo");
          Part fo=request.getPart("foto");
          r=Integer.parseInt(request.getParameter("rol"));
          
          String nomfoto=fo.getSubmittedFileName();
          
          String nombre=n+"_"+nomfoto;
          
          String Url="E:\\SENA\\PROFE NUR\\netbeans\\atam\\web\\imagenes\\"+nombre;
          String Url2="imagenes/"+nombre;
          
            InputStream file= fo.getInputStream();
            File fi= new File(Url);
            FileOutputStream sali=new FileOutputStream(fi);
            int num=file.read();
            
            while(num != -1){
            
            sali.write(num);
            num=file.read();
            
            
               
        }
          
          
          ingresoGSusu ingss = new ingresoGSusu(i, n, a, f, u, c, t, d, co, Url2, r);
            Ingresardatos ing=new Ingresardatos();
          ing.ingresar(ingss);
          
          request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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

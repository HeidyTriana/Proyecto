/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import modelo.Login;
import modelo.ingresoGSusu;

/**
 *
 * @author Usuario
 */
@WebServlet(name = "ServletCargar", urlPatterns = {"/ServletCargar"})
public class ServletCargar extends HttpServlet {
    private String n,a,fe,u,cla,t,d,co,fo;
    private int id,r;

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
        
        if(request.getParameter("modificar") !=null){
            this.Modificar(request,response);
        
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
        protected void Modificar(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
       
        
        
        ingresoGSusu in = new ingresoGSusu();
        Login log = new Login();
        ArrayList<ingresoGSusu> arreglo= new ArrayList<>();       
        arreglo=log.Todo(in);
                  
         if(arreglo.size()>0){
              
            for(int i=0; i<arreglo.size();i++){
                
                in=arreglo.get(i);
                
                id=in.getId();
                n=in.getNombre();
                a=in.getApellido();
                fe=in.getFecha();
                u=in.getUsuario();
                cla=in.getClave();
                t=in.getTelefono();
                d=in.getDireccion();
                co=in.getCorreo();
                fo=in.getFoto();
                r=in.getRol();              
               
            }  
        
        }
            
            HttpSession dat=request.getSession();
            int iden=id;
            String nomb=n;
            String apel=a;
            String fecn=fe;
            String usua=u;
            String clav=cla;
            String tele=t;
            String dire=d;
            String corr=co;
            String foto=fo;
            int roll=r;
            
            
           dat.setAttribute("env1", iden);
           dat.setAttribute("env2", nomb);
           dat.setAttribute("env3", apel);
           dat.setAttribute("env4", fecn);
           dat.setAttribute("env5", usua);
           dat.setAttribute("env6", clav);
           dat.setAttribute("env7", tele);
           dat.setAttribute("env8", dire);
           dat.setAttribute("env9", corr);
           dat.setAttribute("env10", foto);
           dat.setAttribute("env11", roll);
           
           
         response.sendRedirect("Configurarper.jsp");
        
  }
        
}



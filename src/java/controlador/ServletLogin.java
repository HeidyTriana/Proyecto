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
@WebServlet(name = "ServletLogin", urlPatterns = {"/ServletLogin"})
public class ServletLogin extends HttpServlet {
    private String n,a,fe,u,cla,t,d,co,fo;
    private int i,r;
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
        
        if(request.getParameter("ingresar") !=null){
            this.Ingresar(request,response);
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
    
    protected void Ingresar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String us,cl;
        
        us=request.getParameter("usu");
        cl=request.getParameter("clave");
        
        ingresoGSusu in = new ingresoGSusu(us, cl);
        Login log = new Login();
        ArrayList<ingresoGSusu> arreglo= new ArrayList<>();
        
        arreglo=log.Usuario(in);
        if(arreglo.size()>0){
            
            for(int i=0; i<arreglo.size();i++){
                
                in=arreglo.get(i);
                
                i=in.getId();
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
            
            if(u.equals(us) && (cla.equals(cl))){
                if(r==2){
                     
                    response.sendRedirect("menu_ciudadano.jsp");
                }
            
                else {
                    
                    response.sendRedirect("menu_administrador.jsp");
                }
            }
        }
            else{
                JOptionPane.showMessageDialog(null, "Vuelva a digitar los datos" );
            }
        
            String nom=log.Nombre();
            HttpSession datt=request.getSession();
            datt.setAttribute("envnom",nom);

         

            
        }

}

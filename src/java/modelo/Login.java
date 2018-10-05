
package modelo;

import controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;


public class Login {
    
    Conexion con=new Conexion();
    Connection cnn=con.conexion();
    PreparedStatement ps=null;
    ResultSet rs=null;
    private static String doc;
   
    
    public ArrayList<ingresoGSusu> Usuario(ingresoGSusu igs){
        
        ArrayList<ingresoGSusu> arreglo= new ArrayList<>();
         
        try {
            ps=cnn.prepareStatement("SELECT * FROM Usuario where usuario= '"+igs.getUsuario()+"' AND clave= '"+igs.getClave()+"'");
            rs=ps.executeQuery();
            
            while(rs.next()){
                
                ingresoGSusu ingg = new ingresoGSusu(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getInt(11));
                arreglo.add(ingg);
                
                doc=rs.getString(1);
                                
            }        
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        
        return arreglo;
    }
    
    public String Nombre()
    {
       
        String nombre=null;
        String apellido=null;
        
        
        try {
            ps=cnn.prepareStatement("select nombre,apellido from Usuario  WHERE ID='"+doc+"'");
            rs=ps.executeQuery();
            
            if(rs.next()){
                
                nombre=rs.getString(1);
                apellido=rs.getString(2);
                
  
                
            }
        } catch (Exception e) {
            
            JOptionPane.showMessageDialog(null, e);
        }
        return nombre;
    }
        public ArrayList<ingresoGSusu> Todo(ingresoGSusu igs){
        
        ArrayList<ingresoGSusu> arreglo= new ArrayList<>();
         
        try {
            ps=cnn.prepareStatement("SELECT * FROM Usuario where ID="+doc+"");
            rs=ps.executeQuery();
            
            while(rs.next()){
                
                ingresoGSusu ingg = new ingresoGSusu(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10),rs.getInt(11));
                arreglo.add(ingg);               
                                
            }        
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        
        return arreglo;
        
    }
       }

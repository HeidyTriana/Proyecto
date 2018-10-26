
package modelo;

import controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;


public class Ingresardatos {
    
    Conexion con=new Conexion();
    Connection cnn=con.conexion();
    PreparedStatement ps=null;
    
    
    public void ingresar (ingresoGSusu inggs){
        
        try {
            ps=cnn.prepareStatement("INSERT INTO Usuario VALUES (?,?,?,?,?,?,?,?,?,?,?)");
            ps.setInt(1, inggs.getId());
            ps.setString(2, inggs.getNombre());     
            ps.setString(3, inggs.getApellido());
            ps.setString(4, inggs.getFecha());
            ps.setString(5, inggs.getUsuario());
            ps.setString(6, inggs.getClave());
            ps.setString(7, inggs.getTelefono());
            ps.setString(8, inggs.getDireccion());
            ps.setString(9, inggs.getCorreo());
            ps.setString(10, inggs.getFoto());
            ps.setInt(11, inggs.getRol());
            
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Datos Ingresados");
            

        } catch (Exception e) {
            
             JOptionPane.showMessageDialog(null,e);
        }
        

        
    }
    
}

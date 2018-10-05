
package modelo;

import controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.swing.JOptionPane;


public class actualizar {
    
    Conexion con=new Conexion();
    Connection cnn=con.conexion();
    PreparedStatement ps=null;
    
    public int ConfiPerfil(ingresoGSusu ing){
         
        int x=0;
        
        try {
             
            ps=cnn.prepareStatement("UPDATE Usuario SET nombre='"+ing.getNombre()+"', apellido='"+ing.getApellido()+"',f_nacimiento='"+ing.getFecha()+"',usuario='"+ing.getUsuario()+"',clave='"+ing.getClave()+"',telefono='"+ing.getTelefono()+"',direccion='"+ing.getDireccion()+"',correo='"+ing.getCorreo()+"',foto='"+ing.getFoto()+"',rol="+ing.getRol()+" where ID="+ing.getId()+" ");
            x=ps.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "datos actualizados" );
         
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
       return x; 
    }
        
        
        
        
    }

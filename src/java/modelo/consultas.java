
package modelo;

import controlador.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;


public class consultas {
    
        
    Conexion con=new Conexion();
    Connection cnn=con.conexion();
    PreparedStatement ps=null;
    ResultSet rs=null;
    
    
        public ArrayList<ingresoGSani> consultaani(){
        
        ArrayList<ingresoGSani> arreglo=new ArrayList<ingresoGSani>();
        
        try {
            
            ps=cnn.prepareStatement("SELECT * FROM Mascota");
            
            rs=ps.executeQuery();
            while(rs.next()){
                
                ingresoGSani getset=new ingresoGSani(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getString(6));
                arreglo.add(getset);
            }
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        
        return arreglo;
    }
    
}

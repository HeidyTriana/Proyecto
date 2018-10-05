
package controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;


public class Conexion {
    
    Connection cnn;
    
    public Connection conexion(){
            
            try {
                
                Class.forName("com.mysql.jdbc.Driver");
                cnn=DriverManager.getConnection("jdbc:mysql://localhost/ATAM","root","heidy123");
                JOptionPane.showMessageDialog(null,"Conexion Exitosa ");
                
            } catch (Exception e) {
                
                System.out.println("ERROR DE CONEXION"+e);
            }
            
            return cnn;
    
}
}

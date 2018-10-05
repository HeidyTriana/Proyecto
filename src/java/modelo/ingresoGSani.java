
package modelo;


public class ingresoGSani {
    
    private int micro;
    private String nombre;
    private String edad;
    private String color;
    private String raza;
    private String foto;

    public ingresoGSani(int micro, String nombre, String edad, String color, String raza, String foto) {
        this.micro = micro;
        this.nombre = nombre;
        this.edad = edad;
        this.color = color;
        this.raza = raza;
        this.foto = foto;
    }

    public ingresoGSani() {
    }

    public ingresoGSani(int micro) {
        this.micro = micro;
    }
  

    public int getMicro() {
        return micro;
    }

    public void setMicro(int micro) {
        this.micro = micro;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEdad() {
        return edad;
    }

    public void setEdad(String edad) {
        this.edad = edad;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getRaza() {
        return raza;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }
    
    
    
    
}

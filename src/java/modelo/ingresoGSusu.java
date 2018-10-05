
package modelo;


public class ingresoGSusu {
    
    private int id;
    private String nombre;
    private String apellido;
    private String fecha;
    private String usuario;
    private String clave;
    private String telefono;
    private String direccion;
    private String correo;
    private String foto;
    private int rol;

    public ingresoGSusu(int id, String nombre, String apellido, String fecha, String usuario, String clave, String telefono, String direccion, String correo, String foto, int rol) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.fecha = fecha;
        this.usuario = usuario;
        this.clave = clave;
        this.telefono = telefono;
        this.direccion = direccion;
        this.correo = correo;
        this.foto = foto;
        this.rol = rol;
    }

    public ingresoGSusu(int id) {
        this.id = id;
    }

    public ingresoGSusu() {
    }

    public ingresoGSusu(String usuario, String clave) {
        this.usuario = usuario;
        this.clave = clave;
    }

  
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
    }
    
    
    
}

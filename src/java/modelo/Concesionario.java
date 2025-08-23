package modelo;

public class Concesionario {
    private int codigoConcesionario;
    private String nombreConcesionario;
    private String correoConcesionario;
    private String telefonoConcesionario;
    private String direccionConcesionario;
    private int codigoInventario;

    public Concesionario() {
    }
    
    public Concesionario(int codigoConcesionario, String nombreConcesionario, String correoConcesionario, String telefonoConcesionario, String direccionConcesionario, int codigoInventario) {
        this.codigoConcesionario = codigoConcesionario;
        this.nombreConcesionario = nombreConcesionario;
        this.correoConcesionario = correoConcesionario;
        this.telefonoConcesionario = telefonoConcesionario;
        this.direccionConcesionario = direccionConcesionario;
        this.codigoInventario = codigoInventario;
    }

    public int getCodigoConcesionario() {
        return codigoConcesionario;
    }

    public void setCodigoConcesionario(int codigoConcesionario) {
        this.codigoConcesionario = codigoConcesionario;
    }

    public String getNombreConcesionario() {
        return nombreConcesionario;
    }

    public void setNombreConcesionario(String nombreConcesionario) {
        this.nombreConcesionario = nombreConcesionario;
    }

    public String getCorreoConcesionario() {
        return correoConcesionario;
    }

    public void setCorreoConcesionario(String correoConcesionario) {
        this.correoConcesionario = correoConcesionario;
    }

    public String getTelefonoConcesionario() {
        return telefonoConcesionario;
    }

    public void setTelefonoConcesionario(String telefonoConcesionario) {
        this.telefonoConcesionario = telefonoConcesionario;
    }

    public String getDireccionConcesionario() {
        return direccionConcesionario;
    }

    public void setDireccionConcesionario(String direccionConcesionario) {
        this.direccionConcesionario = direccionConcesionario;
    }

    public int getCodigoInventario() {
        return codigoInventario;
    }

    public void setCodigoInventario(int codigoInventario) {
        this.codigoInventario = codigoInventario;
    }
    
    
    
}

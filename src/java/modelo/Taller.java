
package modelo;

/**
 *
 * @author emili
 */
public class Taller {
    private int notaller;
    private String ubicacion;
    private String repuestos;
    private String herramientas;
    private String estadoCarro;

    public Taller() {
    }

    public Taller(int notaller, String ubicacion, String repuestos, String herramientas, String estadoCarro) {
        this.notaller = notaller;
        this.ubicacion = ubicacion;
        this.repuestos = repuestos;
        this.herramientas = herramientas;
        this.estadoCarro = estadoCarro;
    }

    public int getNotaller() {
        return notaller;
    }

    public void setNotaller(int notaller) {
        this.notaller = notaller;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getRepuestos() {
        return repuestos;
    }

    public void setRepuestos(String repuestos) {
        this.repuestos = repuestos;
    }

    public String getHerramientas() {
        return herramientas;
    }

    public void setHerramientas(String herramientas) {
        this.herramientas = herramientas;
    }

    public String getEstadoCarro() {
        return estadoCarro;
    }

    public void setEstadoCarro(String estadoCarro) {
        this.estadoCarro = estadoCarro;
    }
    
    
    
}

    


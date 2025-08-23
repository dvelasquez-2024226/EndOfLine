
package modelo;


public class Carro {
    private int codigoCarro;
    private String marca;
    private String modelo;
    private String color;
    private String anio;
    private String estado;
    private int codigoinventario;
    private int codigoProveedor;

    public Carro() {
    }

    public Carro(int codigoCarro, String marca, String modelo, String color, String anio, String estado, int codigoinventario, int codigoProveedor) {
        this.codigoCarro = codigoCarro;
        this.marca = marca;
        this.modelo = modelo;
        this.color = color;
        this.anio = anio;
        this.estado = estado;
        this.codigoinventario = codigoinventario;
        this.codigoProveedor = codigoProveedor;
    }

    public int getCodigoCarro() {
        return codigoCarro;
    }

    public void setCodigoCarro(int codigoCarro) {
        this.codigoCarro = codigoCarro;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getAnio() {
        return anio;
    }

    public void setAnio(String anio) {
        this.anio = anio;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public int getCodigoinventario() {
        return codigoinventario;
    }

    public void setCodigoinventario(int codigoinventario) {
        this.codigoinventario = codigoinventario;
    }

    public int getCodigoProveedor() {
        return codigoProveedor;
    }

    public void setCodigoProveedor(int codigoProveedor) {
        this.codigoProveedor = codigoProveedor;
    }
    
    
}

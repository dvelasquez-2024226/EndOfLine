package modelo;

public class Carrito {
    private Integer item;
    private Integer codigoContrato;
    private String Calusula;
    private Double precio;
    private Integer cantidad;
    private Double subTotal;

    public Carrito() {
    }

    public Carrito(Integer item, Integer codigoContrato, String Calusula, Double precio, Integer cantidad, Double subTotal) {
        this.item = item;
        this.codigoContrato = codigoContrato;
        this.Calusula = Calusula;
        this.precio = precio;
        this.cantidad = cantidad;
        this.subTotal = subTotal;
    }

    public Integer getItem() {
        return item;
    }

    public void setItem(Integer item) {
        this.item = item;
    }

    public Integer getCodigoContrato() {
        return codigoContrato;
    }

    public void setCodigoContrato(Integer codigoContrato) {
        this.codigoContrato = codigoContrato;
    }

    public String getCalusula() {
        return Calusula;
    }

    public void setCalusula(String Calusula) {
        this.Calusula = Calusula;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
        this.precio = precio;
    }

    public Integer getCantidad() {
        return cantidad;
    }

    public void setCantidad(Integer cantidad) {
        this.cantidad = cantidad;
    }

    public Double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(Double subTotal) {
        this.subTotal = subTotal;
    }
}

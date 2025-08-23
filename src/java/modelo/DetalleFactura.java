package modelo;

public class DetalleFactura {
    private int codigoDetalleFactura;
    private int cantidad;
    private Double subTotal;
    private Double precioUnitario;
    private String observaciones;
    private int codigoContrato;

    public DetalleFactura() {
    }

    public DetalleFactura(int codigoDetalleFactura, int cantidad, Double subTotal, Double precioUnitario, String observaciones, int codigoContrato) {
        this.codigoDetalleFactura = codigoDetalleFactura;
        this.cantidad = cantidad;
        this.subTotal = subTotal;
        this.precioUnitario = precioUnitario;
        this.observaciones = observaciones;
        this.codigoContrato = codigoContrato;
    }
    
    public int getCodigoDetalleFactura() {
        return codigoDetalleFactura;
    }

    public void setCodigoDetalleFactura(int codigoDetalleFactura) {
        this.codigoDetalleFactura = codigoDetalleFactura;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Double getSubTotal() {
        return subTotal;
    }

    public void setSubTotal(Double subTotal) {
        this.subTotal = subTotal;
    }

    public Double getPrecioUnitario() {
        return precioUnitario;
    }

    public void setPrecioUnitario(Double precioUnitario) {
        this.precioUnitario = precioUnitario;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public int getCodigoContrato() {
        return codigoContrato;
    }

    public void setCodigoContrato(int codigoContrato) {
        this.codigoContrato = codigoContrato;
    }
}

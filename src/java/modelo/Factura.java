package modelo;

import java.sql.Date;

public class Factura {
    private Integer codigoFactura;
    private Date fechaEmision;
    private Double total;
    private String estado;
    private String metodoPago;
    private Integer codigoDetalleFactura;
    private Integer carne;
    private Integer codigoCliente;

    public Factura() {
    }

    public Factura(Integer codigoFactura, Date fechaEmision, Double total, String estado, String metodoPago, Integer codigoDetalleFactura, Integer carne, Integer codigoCliente) {
        this.codigoFactura = codigoFactura;
        this.fechaEmision = fechaEmision;
        this.total = total;
        this.estado = estado;
        this.metodoPago = metodoPago;
        this.codigoDetalleFactura = codigoDetalleFactura;
        this.carne = carne;
        this.codigoCliente = codigoCliente;
    }

    public Integer getCodigoFactura() {
        return codigoFactura;
    }

    public void setCodigoFactura(Integer codigoFactura) {
        this.codigoFactura = codigoFactura;
    }

    public Date getFechaEmision() {
        return fechaEmision;
    }

    public void setFechaEmision(Date fechaEmision) {
        this.fechaEmision = fechaEmision;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getMetodoPago() {
        return metodoPago;
    }

    public void setMetodoPago(String metodoPago) {
        this.metodoPago = metodoPago;
    }

    public Integer getCodigoDetalleFactura() {
        return codigoDetalleFactura;
    }

    public void setCodigoDetalleFactura(Integer codigoDetalleFactura) {
        this.codigoDetalleFactura = codigoDetalleFactura;
    }

    public Integer getCarne() {
        return carne;
    }

    public void setCarne(Integer carne) {
        this.carne = carne;
    }

    public Integer getCodigoCliente() {
        return codigoCliente;
    }

    public void setCodigoCliente(Integer codigoCliente) {
        this.codigoCliente = codigoCliente;
    }

    
}

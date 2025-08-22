package modelo;

import java.sql.Date;


public class Membresia {
    private int codigoMembresia;
    private String tipoMembresia;
    private Date fechaPago;
    private Double mensualidad;
    private Date fechaVencimiento;

    public Membresia() {
    }

    public Membresia(int codigoMembresia, String tipoMembresia, Date fechaPago, Double mensualidad, Date fechaVencimiento) {
        this.codigoMembresia = codigoMembresia;
        this.tipoMembresia = tipoMembresia;
        this.fechaPago = fechaPago;
        this.mensualidad = mensualidad;
        this.fechaVencimiento = fechaVencimiento;
    }

    public int getCodigoMembresia() {
        return codigoMembresia;
    }

    public void setCodigoMembresia(int codigoMembresia) {
        this.codigoMembresia = codigoMembresia;
    }

    public String getTipoMembresia() {
        return tipoMembresia;
    }

    public void setTipoMembresia(String tipoMembresia) {
        this.tipoMembresia = tipoMembresia;
    }

    public Date getFechaPago() {
        return fechaPago;
    }

    public void setFechaPago(Date fechaPago) {
        this.fechaPago = fechaPago;
    }

    public Double getMensualidad() {
        return mensualidad;
    }

    public void setMensualidad(Double mensualidad) {
        this.mensualidad = mensualidad;
    }

    public Date getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(Date fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }
    
    
}


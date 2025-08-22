
package modelo;

import java.sql.Date;



public class Contrato {
    private int codigoContrato;
    private String clausula;
    private double precio;
    private Date fechaInicio;
    private Date fechaFin;
    private int codigoConcesionario;
    
    public Contrato(){
    
    }

    public Contrato(int codigoContrato, String clausula, double precio, Date fechaInicio, Date fechaFin, int codigoConcesionario) {
        this.codigoContrato = codigoContrato;
        this.clausula = clausula;
        this.precio = precio;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.codigoConcesionario = codigoConcesionario;
    }

    public int getCodigoContrato() {
        return codigoContrato;
    }

    public void setCodigoContrato(int codigoContrato) {
        this.codigoContrato = codigoContrato;
    }

    public String getClausula() {
        return clausula;
    }

    public void setClausula(String clausula) {
        this.clausula = clausula;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public Date getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }

    public int getCodigoConcesionario() {
        return codigoConcesionario;
    }

    public void setCodigoConcesionario(int codigoConcesionario) {
        this.codigoConcesionario = codigoConcesionario;
    }
    
    
    
}

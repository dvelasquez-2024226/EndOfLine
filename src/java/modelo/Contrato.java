package modelo;

import java.sql.Date;

public class Contrato {
    private Integer codigoContrato;
    private String clausula;
    private Double precio;
    private Date fechaInicio;
    private Date fechaFin;
    private Integer codigoConcecionario;

    public Contrato() {
    }

    public Contrato(Integer codigoContrato, String clausula, Double precio, Date fechaInicio, Date fechaFin, Integer codigoConcecionario) {
        this.codigoContrato = codigoContrato;
        this.clausula = clausula;
        this.precio = precio;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.codigoConcecionario = codigoConcecionario;
    }

    public Integer getCodigoContrato() {
        return codigoContrato;
    }

    public void setCodigoContrato(Integer codigoContrato) {
        this.codigoContrato = codigoContrato;
    }

    public String getClausula() {
        return clausula;
    }

    public void setClausula(String clausula) {
        this.clausula = clausula;
    }

    public Double getPrecio() {
        return precio;
    }

    public void setPrecio(Double precio) {
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

    public Integer getCodigoConcecionario() {
        return codigoConcecionario;
    }

    public void setCodigoConcecionario(Integer codigoConcecionario) {
        this.codigoConcecionario = codigoConcecionario;
    }
}

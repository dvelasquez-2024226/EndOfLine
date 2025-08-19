
package modelo;

import java.sql.Date;


public class Publicidad {
    private int codigoPublicidad;
    private Date fechaInicio;
    private Date fechaFin;
    private Double costos;
    private String colaboradores;
    private int codigoCarro;

    public Publicidad() {
    }

    public Publicidad(int codigoPublicidad, Date fechaInicio, Date fechaFin, Double costos, String colaboradores, int codigoCarro) {
        this.codigoPublicidad = codigoPublicidad;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.costos = costos;
        this.colaboradores = colaboradores;
        this.codigoCarro = codigoCarro;
    }

    public int getCodigoPublicidad() {
        return codigoPublicidad;
    }

    public void setCodigoPublicidad(int codigoPublicidad) {
        this.codigoPublicidad = codigoPublicidad;
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

    public Double getCostos() {
        return costos;
    }

    public void setCostos(Double costos) {
        this.costos = costos;
    }

    public String getColaboradores() {
        return colaboradores;
    }

    public void setColaboradores(String colaboradores) {
        this.colaboradores = colaboradores;
    }

    public int getCodigoCarro() {
        return codigoCarro;
    }

    public void setCodigoCarro(int codigoCarro) {
        this.codigoCarro = codigoCarro;
    }
    

    
}

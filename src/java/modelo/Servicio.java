package modelo;

import java.sql.Date;



/**
 *
 * @author yo
 */
public class Servicio {
   private int noServicio;
   private Date fechaIngreso;
   private String detalles;
   private String tipoServicio;
   private Date fechaSalida;
   private int carne;
   private int noTaller;
   
   public Servicio(){
   
   }

    public Servicio(int noServicio, Date fechaIngreso, String detalles, String tipoServicio, Date fechaSalida, int carne, int noTaller) {
        this.noServicio = noServicio;
        this.fechaIngreso = fechaIngreso;
        this.detalles = detalles;
        this.tipoServicio = tipoServicio;
        this.fechaSalida = fechaSalida;
        this.carne = carne;
        this.noTaller = noTaller;
    }

    public int getNoServicio() {
        return noServicio;
    }

    public void setNoServicio(int noServicio) {
        this.noServicio = noServicio;
    }

    public Date getFechaIngreso() {
        return fechaIngreso;
    }

    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public String getDetalles() {
        return detalles;
    }

    public void setDetalles(String detalles) {
        this.detalles = detalles;
    }

    public String getTipoServicio() {
        return tipoServicio;
    }

    public void setTipoServicio(String tipoServicio) {
        this.tipoServicio = tipoServicio;
    }

    public Date getFechaSalida() {
        return fechaSalida;
    }

    public void setFechaSalida(Date fechaSalida) {
        this.fechaSalida = fechaSalida;
    }

    public int getCarne() {
        return carne;
    }

    public void setCarne(int carne) {
        this.carne = carne;
    }

    public int getNotaller() {
        return noTaller;
    }

    public void setNotaller(int notaller) {
        this.noTaller = notaller;
    }
   
   
} 
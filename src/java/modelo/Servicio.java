package modelo;

import java.sql.Date;



/**
 *
 * @author yo
 */
public class Servicio {
   private int noServicios;
   private Date fechaIngreso;
   private String detalles;
   private String tipoServicios;
   private Date fechaSalida;
   private int empleados_carne;
   private int taller_notaller;
   
   public Servicio(){
   
   }

    public Servicio(int noServicios, Date fechaIngreso, String detalles, String tipoServicios, Date fechaSalida, int empleados_carne, int taller_notaller) {
        this.noServicios = noServicios;
        this.fechaIngreso = fechaIngreso;
        this.detalles = detalles;
        this.tipoServicios = tipoServicios;
        this.fechaSalida = fechaSalida;
        this.empleados_carne = empleados_carne;
        this.taller_notaller = taller_notaller;
    }

    public int getNoServicios() {
        return noServicios;
    }

    public void setNoServicios(int noServicios) {
        this.noServicios = noServicios;
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

    public String getTipoServicios() {
        return tipoServicios;
    }

    public void setTipoServicios(String tipoServicios) {
        this.tipoServicios = tipoServicios;
    }

    public Date getFechaSalida() {
        return fechaSalida;
    }

    public void setFechaSalida(Date fechaSalida) {
        this.fechaSalida = fechaSalida;
    }

    public int getEmpleados_carne() {
        return empleados_carne;
    }

    public void setEmpleados_carne(int empleados_carne) {
        this.empleados_carne = empleados_carne;
    }

    public int getTaller_notaller() {
        return taller_notaller;
    }

    public void setTaller_notaller(int taller_notaller) {
        this.taller_notaller = taller_notaller;
    }

   
}


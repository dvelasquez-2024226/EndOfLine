package modelo;

import java.sql.Date;

public class Empleado {
    private int carne;
    private String nombreEmpleado;
    private String apellidoEmpleado;
    private String correoEmpleado;
    private String telefonoEmpleado;
    private Date fechaIngreso;
    private int codigoConcesionario;

    public Empleado() {
    }

    public Empleado(int carne, String nombreEmpleado, String apellidoEmpleado, String correoEmpleado, String telefonoEmpleado, Date fechaIngreso, int codigoConcesionario) {
        this.carne = carne;
        this.nombreEmpleado = nombreEmpleado;
        this.apellidoEmpleado = apellidoEmpleado;
        this.correoEmpleado = correoEmpleado;
        this.telefonoEmpleado = telefonoEmpleado;
        this.fechaIngreso = fechaIngreso;
        this.codigoConcesionario = codigoConcesionario;
    }

    public int getCarne() {
        return carne;
    }

    public void setCarne(int carne) {
        this.carne = carne;
    }

    public String getNombreEmpleado() {
        return nombreEmpleado;
    }

    public void setNombreEmpleado(String nombreEmpleado) {
        this.nombreEmpleado = nombreEmpleado;
    }

    public String getApellidoEmpleado() {
        return apellidoEmpleado;
    }

    public void setApellidoEmpleado(String apellidoEmpleado) {
        this.apellidoEmpleado = apellidoEmpleado;
    }

    public String getCorreoEmpleado() {
        return correoEmpleado;
    }

    public void setCorreoEmpleado(String correoEmpleado) {
        this.correoEmpleado = correoEmpleado;
    }

    public String getTelefonoEmpleado() {
        return telefonoEmpleado;
    }

    public void setTelefonoEmpleado(String telefonoEmpleado) {
        this.telefonoEmpleado = telefonoEmpleado;
    }

    public Date getFechaIngreso() {
        return fechaIngreso;
    }

    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public int getCodigoConcesionario() {
        return codigoConcesionario;
    }

    public void setCodigoConcesionario(int codigoConcesionario) {
        this.codigoConcesionario = codigoConcesionario;
    }
    
    
}


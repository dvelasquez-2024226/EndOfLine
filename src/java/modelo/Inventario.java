package modelo;

import java.sql.Date;


public class Inventario {
    
    private int codigoInventario;
    private int stock;
    private Date fechaIngreso;
    private Date fechaSalida;
    private int carne;

    public Inventario() {
    }

    public Inventario(int codigoInventario, int stock, Date fechaIngreso, Date fechaSalida, int carne) {
        this.codigoInventario = codigoInventario;
        this.stock = stock;
        this.fechaIngreso = fechaIngreso;
        this.fechaSalida = fechaSalida;
        this.carne = carne;
    }

    public int getCodigoInventario() {
        return codigoInventario;
    }

    public void setCodigoInventario(int codigoInventario) {
        this.codigoInventario = codigoInventario;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public Date getFechaIngreso() {
        return fechaIngreso;
    }

    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
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
    
}

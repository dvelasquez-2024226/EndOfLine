package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class InventarioDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    //MÉTODOS DEL CRUD
    
    //MÉTODO LISTAR  
    public List listar(){
        String sql = "select * from Inventarios";
        List<Inventario> listaInventario = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Inventario inventario = new Inventario();
                inventario.setCodigoInventario(rs.getInt(1));
                inventario.setStock(rs.getInt(2));
                inventario.setFechaIngreso(rs.getDate(3));
                inventario.setFechaSalida(rs.getDate(4));
                inventario.setCarne(rs.getInt(5));
                listaInventario.add(inventario);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaInventario;
    }
    
    
    //MÉTODO AGREGAR
    public int agregar(Inventario inventario){
        String sql = "insert into Inventarios (stock, fechaIngreso, fechaSalida, carne) values (?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, inventario.getCodigoInventario());
            ps.setDate(2, inventario.getFechaIngreso());
            ps.setDate(3, inventario.getFechaSalida());
            ps.setInt(4, inventario.getCarne());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
    
    
    //BUSCÁR POR CÓDIGO
    public Inventario listarCodigoInventario(int id){
        //Instanciar un bojeto de tipo empleado
        Inventario inventario = new Inventario();
        String sql = "Select * from Inventarios where codigoInventario = "+id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                inventario.setStock(rs.getInt(2));
                inventario.setFechaIngreso(rs.getDate(3));
                inventario.setFechaSalida(rs.getDate(4));
                inventario.setCarne(rs.getInt(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return inventario;
    }
    
    
    //MÉTODO EDITAR
    public int actualizar(Inventario inventario){
        String sql = "update Inventarios set stock = ?,"
                + "fechaIngreso = ?,"
                + "fechaSalida = ?,"
                + "carne = ? where codigoInventario = ?";
        
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, inventario.getStock());
            ps.setDate(2, inventario.getFechaIngreso());
            ps.setDate(3, inventario.getFechaSalida());
            ps.setInt(4, inventario.getCarne());
            ps.setInt(5, inventario.getCodigoInventario());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
    
    
    //MÉTODO ELIMINAR
    public void eliminar(int id){
        String sql = "delete from Inventarios where codigoInventario = "+id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    
}

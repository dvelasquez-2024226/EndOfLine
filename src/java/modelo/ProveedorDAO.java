package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProveedorDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    
    // CRUD
    // LISTAR
    public List listar(){
        String sql = "select * from proveedores";
        List<Proveedor> listaProveedor = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Proveedor prov = new Proveedor();
                prov.setCodigoProveedor(rs.getInt(1));
                prov.setNombreProveedor(rs.getString(2));
                prov.setApellidoProveedor(rs.getString(3));
                prov.setCorreoProveedor(rs.getString(4));
                prov.setTelefonoProveedor(rs.getString(5));
                listaProveedor.add(prov);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaProveedor;
    }
    
    // AGREGAR
    public int agregar(Proveedor prove) {
        String sql = "insert into Proveedores(nombreProveedor, apellidoProveedor, correoProveedor, telefonoProveedor) values (?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, prove.getNombreProveedor());
            ps.setString(2, prove.getApellidoProveedor());
            ps.setString(3, prove.getCorreoProveedor());
            ps.setString(4, prove.getTelefonoProveedor());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
    
    // BUSCAR
    public Proveedor listarCodigoProveedor(int id){
        Proveedor prove = new Proveedor();
        String sql = "select * from proveedores where codigoProveedor = "+id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                prove.setNombreProveedor(rs.getString(2));
                prove.setApellidoProveedor(rs.getString(3));
                prove.setCorreoProveedor(rs.getString(4));
                prove.setTelefonoProveedor(rs.getString(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return prove;
    }
    
    // EDITAR
    public int actualizar(Proveedor prove){
        String sql = "update proveedores set nombreProveedor = ?, "
                + "apellidoProveedor = ?, correoProveedor = ?, "
                + "telefonoProveedor = ? where codigoProveedor = ?";
        
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, prove.getNombreProveedor());
            ps.setString(2, prove.getApellidoProveedor());
            ps.setString(3, prove.getCorreoProveedor());
            ps.setString(4, prove.getTelefonoProveedor());
            ps.setInt(5, prove.getCodigoProveedor());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
    
    // ELIMINAR
    public void eliminar(int id){
        String sql = "delete from proveedores where codigoProveedor = "+id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

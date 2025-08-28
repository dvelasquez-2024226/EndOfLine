package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FacturaDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    //CRUD
    //Listar
    public List listar(){
        String sql = "Select * from facturas";
        List<Factura> listaFactura = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Factura fac = new Factura();
                fac.setCodigoFactura(   rs.getInt(1));
                fac.setFechaEmision(rs.getDate(2));
                fac.setTotal(rs.getDouble(3));
                fac.setEstado(rs.getString(4));
                fac.setMetodoPago(rs.getString(5));
                fac.setCodigoDetalleFactura(rs.getInt(6));
                fac.setCarne(rs.getInt(7));
                fac.setCodigoCliente(rs.getInt(8));
                listaFactura.add(fac);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaFactura;
    }
    
    //Agregar
    public int agregar (Factura fac){
        String sql = "insert into Facturas (fechaEmision, total, estado, metodoPago, codigoDetalleFactura, carne, codigoCliente) values (?,?,?,?,?,?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setDate(1, fac.getFechaEmision());
            ps.setDouble(2, fac.getTotal());
            ps.setString(3, fac.getEstado());
            ps.setString(4, fac.getMetodoPago());
            ps.setInt(5, fac.getCodigoDetalleFactura());
            ps.setInt(6, fac.getCarne());
            ps.setInt(7, fac.getCodigoCliente());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    //Buscar
    public Factura listarCodigoFactura(int idFactura){
        Factura fac = new Factura();
        String sql = "Select * from facturas where codigoFactura = "+idFactura;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                fac.setFechaEmision(rs.getDate(2));
                fac.setTotal(rs.getDouble(3));
                fac.setEstado(rs.getString(4));
                fac.setMetodoPago(rs.getString(5));
                fac.setCodigoDetalleFactura(rs.getInt(6));
                fac.setCarne(rs.getInt(7));
                fac.setCodigoCliente(rs.getInt(8));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return fac;
    }

    //Editar
    public int actualizar(Factura fac){
        String sql = "update facturas set fechaEmision = ?, total = ?, estado = ?, metodoPago = ? where codigoFactura = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setDate(1, fac.getFechaEmision());
            ps.setDouble(2, fac.getTotal());
            ps.setString(3, fac.getEstado());
            ps.setString(4, fac.getMetodoPago());
            ps.setInt(5, fac.getCodigoFactura());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    //Eliminar
    public void eliminar(int idFactura){
        String sql = "delete from Facturas where codigoFactura = "+idFactura;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}

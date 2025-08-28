package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DetalleFacturaDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    //Crud
    //Listar
    public List listar(){
        String sql = "Select * from DetalleFactura";
        List<DetalleFactura> listaDetalleFactura = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                DetalleFactura detaFac = new DetalleFactura();
                detaFac.setCantidad(rs.getInt(1));
                detaFac.setSubTotal(rs.getDouble(2));
                detaFac.setPrecioUnitario(rs.getDouble(3));
                detaFac.setObservaciones(rs.getString(4));
                detaFac.setCodigoContrato(rs.getInt(5));
                listaDetalleFactura.add(detaFac);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaDetalleFactura;
    }
    
    //Agregar
    public int agregar (DetalleFactura detaFac){
        String sql = "insert into DetalleFactura (cantidad, subTotal, precioUnitario, observaciones, codigoContrato) values (?,?,?,?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, detaFac.getCantidad());
            ps.setDouble(2, detaFac.getSubTotal());
            ps.setDouble(3, detaFac.getPrecioUnitario());
            ps.setString(4, detaFac.getObservaciones());
            ps.setInt(5, detaFac.getCodigoContrato());
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    //Buscar
    public DetalleFactura listarCodigoDetalleFactura(int idDetaFac){
        DetalleFactura detaFac = new DetalleFactura();
        String sql = "Select * from DetalleFactura where codigoDetalleFactura = "+idDetaFac;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                detaFac.setCantidad(rs.getInt(1));
                detaFac.setSubTotal(rs.getDouble(2));
                detaFac.setPrecioUnitario(rs.getDouble(3));
                detaFac.setObservaciones(rs.getString(4));
                detaFac.setCodigoContrato(rs.getInt(5));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return detaFac;
    }
    
    //Editar
    public int actualizar(DetalleFactura detaFac){
        String sql = "update DetalleFactura set cantidad = ?, subTotal = ?,"
                + " precioUnitario = ?, observaciones = ? where codigoDetalleFactura = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, detaFac.getCantidad());
            ps.setDouble(2, detaFac.getSubTotal());
            ps.setDouble(3, detaFac.getPrecioUnitario());
            ps.setString(4, detaFac.getObservaciones());
            ps.setInt(5, detaFac.getCodigoDetalleFactura());
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    //Eliminar
    public void eliminar(int idDetaFac){
        String sql = "delete * from DetalleFactura = "+idDetaFac;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}

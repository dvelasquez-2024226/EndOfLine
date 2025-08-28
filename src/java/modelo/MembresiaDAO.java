package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class MembresiaDAO {
   Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    public int agregar(Membresia m){
        String sql = "INSERT INTO Membresias (tipoMembresia, fechaPago, mensualidad, fechaVencimiento) VALUES (?,?,?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, m.getTipoMembresia());
            ps.setDate(2, m.getFechaPago());
            ps.setDouble(3, m.getMensualidad());
            ps.setDate(4, m.getFechaVencimiento());
            resp = ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();   
        }
        return resp;          
    }
    
    public List<Membresia> listarMembresias() { 
        List<Membresia> listaMembresia = new ArrayList<>();
        String sql = "SELECT * FROM Membresias";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Membresia m = new Membresia();
                m.setCodigoMembresia(rs.getInt(1));
                m.setTipoMembresia(rs.getString(2));
                m.setFechaPago(rs.getDate(3));
                m.setMensualidad(rs.getDouble(4));
                m.setFechaVencimiento(rs.getDate(5));
                listaMembresia.add(m);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaMembresia;       
    }

    //Método para buscar          
    public Membresia listarCodigoMembresia(int id){
        Membresia m = new Membresia();
        String sql = "Select * from Membresias where codigoMembresia ="+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                m.setTipoMembresia(rs.getString(2));
                m.setFechaPago(rs.getDate(3));
                m.setMensualidad(rs.getDouble(4));
                m.setFechaVencimiento(rs.getDate(5));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return m;
    }
    
    public int actualizar(Membresia mem){
        String sql = "update membresias set tipoMembresia = ?, fechaPago = ?,"
                + "mensualidad = ?, fechaVencimiento = ? where codigoMembresia = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, mem.getTipoMembresia());
            ps.setDate(2, mem.getFechaPago());
            ps.setDouble(3, mem.getMensualidad());
            ps.setDate(4, mem.getFechaVencimiento());
            ps.setInt(5, mem.getCodigoMembresia());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    public void eliminar(int id){
        String sql = "delete from membresias where codigoMembresia ="+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}


package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Time;
import java.time.LocalDate;


public class PublicidadDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    //MÉTODOS DEL CRUD
    
    //MÉTODO LISTAR  
    public List listar(){
        String sql = "select * from Publicidad";
        List<Publicidad> listaPublicidad = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Publicidad publi = new Publicidad();
                publi.setCodigoPublicidad(rs.getInt(1));
                publi.setFechaInicio(rs.getDate(2));
                publi.setFechaFin(rs.getDate(3));
                publi.setCostos(rs.getDouble(4));
                publi.setColaboradores(rs.getString(5));
                publi.setCodigoCarro(rs.getInt(6));
                listaPublicidad.add(publi);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaPublicidad;
    }
    
    
    //MÉTODO AGREGAR
    public int agregar(Publicidad publi){
        String sql = "insert into Publicidad (fechaInicio, fechaFin, costos, colaboradores, codigoCarro) values (?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setDate(1,publi.getFechaInicio());
            ps.setDate(2,publi.getFechaFin());
            ps.setDouble(3,publi.getCostos());
            ps.setString(4,publi.getColaboradores());
            ps.setInt(5, publi.getCodigoCarro());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
    
    
    //BUSCÁR POR CÓDIGO
    public Publicidad listarCodigoPublicidad(int id){
        //Instanciar un bojeto de tipo empleado
        Publicidad publi = new Publicidad();
        String sql = "Select * from Publicidad where codigoPublicidad = "+id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                publi.setFechaInicio(rs.getDate(2));
                publi.setFechaFin(rs.getDate(3));
                publi.setCostos(rs.getDouble(4));
                publi.setColaboradores(rs.getString(5));
                publi.setCodigoCarro(rs.getInt(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return publi;
    }
    
    
    //MÉTODO EDITAR
    public int actualizar(Publicidad publi){
        String sql = "update Publicidad set fechaInicio = ?,"
                + "fechaFin = ?,"
                + "costos = ?,"
                + "colaboradores = ?,"
                + "codigoCarro = ? where codigoPublicidad = ?";
        
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setDate(1, publi.getFechaInicio());
            ps.setDate(2, publi.getFechaFin());
            ps.setDouble(3,publi.getCostos());
            ps.setString(4, publi.getColaboradores());
            ps.setInt(5, publi.getCodigoCarro());
            ps.setInt(6, publi.getCodigoPublicidad());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
    
    
    //MÉTODO ELIMINAR
    public void eliminar(int id){
        String sql = "delete from Publicidad where codigoPublicidad = "+id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}

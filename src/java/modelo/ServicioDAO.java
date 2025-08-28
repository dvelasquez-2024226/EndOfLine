package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



/**
 *
 * @author yo
 */
public class ServicioDAO {
    
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs; 
    int resp;
    
    public List listar(){
        String sql = "select * from servicios";
        List<Servicio> listaServicio = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement (sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Servicio se = new Servicio();
                se.setNoServicio(rs.getInt(1));
                se.setFechaIngreso(rs.getDate(2));
                se.setDetalles(rs.getString(3));
                se.setTipoServicio(rs.getString(4));
                se.setFechaSalida(rs.getDate(5));
                se.setCarne(rs.getInt(6));
                se.setNotaller(rs.getInt(7));
                listaServicio.add(se);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaServicio;
    }
    
    
    //MÉTODO AGREGAR
    public int agregar(Servicio ser) {
        String sql = "insert into servicios (fechaIngreso, detalles, tipoServicio, fechaSalida, carne, noTaller) values (?,?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            
            ps.setDate(1, ser.getFechaIngreso());
            ps.setString(2, ser.getDetalles());
            ps.setString(3, ser.getTipoServicio());
            ps.setDate(4, ser.getFechaSalida());
            ps.setInt(5, ser.getCarne());
            ps.setInt(6, ser.getNotaller());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
    
    
    //BUSCAR POR CODIGO
    public Servicio listarCodigoServicio(int id) {
        //Instanciamos un objeto de tipo empleado
        Servicio ser = new Servicio();
        String sql = "Select * from servicios where noServicio ="+id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                ser.setNoServicio(rs.getInt(2));
                ser.setFechaIngreso(rs.getDate(3));
                ser.setDetalles(rs.getString(4));
                ser.setTipoServicio(rs.getString(5));
                ser.setFechaSalida(rs.getDate(6));
                ser.setCarne(rs.getInt(7));
                ser.setNotaller(rs.getInt(8));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ser;
    }
    
    
    //MÉTODO EDITAR
   public int actualizar(Servicio ser){
       String sql = "update servicios set"
               + "fechaIngreso = ?, detalles = ?,"
               + "tipoServicio = ?, fechaSalida = ? where noServicio = ?";

        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, ser.getNoServicio());
            ps.setDate(2, ser.getFechaIngreso());
            ps.setString(3, ser.getDetalles());
            ps.setString(4, ser.getTipoServicio());
            ps.setDate(5, ser.getFechaSalida());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
   } 
   
   
   //    //MÉTODO ELIMINAR
       public void eliminar (int id){
           String sql= "delete from servicios where noServicio ="+id;
           try{
               con = cn.Conexion();
               ps = con.prepareStatement(sql);
               ps.executeUpdate();
               
           }catch(Exception e){
               e.printStackTrace();
           }
       }
    
    
}


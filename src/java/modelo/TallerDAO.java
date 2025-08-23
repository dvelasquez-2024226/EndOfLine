
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author emili
 */
public class TallerDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    public List listar(){
        String sql = "select * from Talleres";
        List<Taller> listaTaller = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Taller tar = new Taller();
                tar.setNotaller(rs.getInt(1));
                tar.setUbicacion(rs.getString(2));
                tar.setRepuestos(rs.getString(3));
                tar.setHerramientas(rs.getString(4));
                tar.setEstadoCarro(rs.getString(5));
                listaTaller.add(tar);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaTaller;
    }
    
    public int agregar(Taller tar){
        String sql = "insert into Talleres (ubicacion,repuestos,herramientas,estadoCarro) values (?,?,?,?)";
        
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1,tar.getUbicacion());
            ps.setString(2, tar.getRepuestos());
            ps.setString(3, tar.getHerramientas());
            ps.setString(4, tar.getEstadoCarro());
            ps.executeUpdate();
        } catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    public Taller listarCodigoTaller(int id){
        Taller tar = new Taller();
        String sql = "select * from Talleres where noTaller = " + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()){
                tar.setUbicacion(rs.getString(2));
                tar.setRepuestos(rs.getString(3));
                tar.setHerramientas(rs.getString(4));
                tar.setEstadoCarro(rs.getString(5));
            }
        } catch (Exception e){
            e.printStackTrace(); 
        }
        return tar;
    }
    
    //editar
    
    public int actualizar(Taller tar){
        String sql = "update talleres set ubicacion = ?,"
                +"repuestos = ?, herramientas = ?,"
                 + "estadoCarro = ? where noTaller = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, tar.getUbicacion());
            ps.setString(2, tar.getRepuestos());
            ps.setString(3, tar.getHerramientas());
            ps.setString(4, tar.getEstadoCarro());
            ps.setInt(5, tar.getNotaller());
            ps.executeUpdate();
            
            
        } catch (Exception e){
            e.printStackTrace();
        }
         return resp;
             
    }
    
    
    public void eliminar (int id){
        String sql= "delete from talleres where noTaller ="+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    
}
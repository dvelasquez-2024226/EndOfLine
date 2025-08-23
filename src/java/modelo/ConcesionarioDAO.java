package modelo;
 
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
 
public class ConcesionarioDAO {
 
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
// CRUD //
 
//LISTAR
    public List listar() {
        String sql = "select * from concesionarios";
        List<Concesionario> listaConcesionario = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Concesionario co = new Concesionario();
                co.setCodigoConcesionario(rs.getInt(1));
                co.setNombreConcesionario(rs.getString(2));
                co.setCorreoConcesionario(rs.getString(3));
                co.setTelefonoConcesionario(rs.getString(4));
                co.setDireccionConcesionario(rs.getString(5));
                co.setCodigoInventario(rs.getInt(6));
 
                listaConcesionario.add(co);
 
            }
        } catch (Exception e) {
            e.printStackTrace();
 
        }
        return listaConcesionario;
    }
 
// AGREGAR
    public int agregar(Concesionario co) {
        String sql = "insert into concesionarios (nombreConcesionario, correoConcesionario, telefonoConcesionario, direccionConcesionario, codigoInventario) values (?, ?, ?, ?, ?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, co.getNombreConcesionario());
            ps.setString(2, co.getCorreoConcesionario());
            ps.setString(3, co.getTelefonoConcesionario());
            ps.setString(4, co.getDireccionConcesionario());
            ps.setInt(5, co.getCodigoInventario());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
 
    //BUSCAR POR CODIGO
    public Concesionario listarCodigoConcesionario(int id) {
        //instanciar objeto
        Concesionario co = new Concesionario();
        String sql = "Select * from Concesionarios where codigoConcesionario =" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                co.setNombreConcesionario(rs.getString(2));
                co.setCorreoConcesionario(rs.getString(3));
                co.setTelefonoConcesionario(rs.getString(4));
                co.setDireccionConcesionario(rs.getString(5));
                co.setCodigoInventario(rs.getInt(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return co;
    }
 
    //EDITAR
    public int actualizar(Concesionario co) {
        String sql = "update concesionarios set "
                + "nombreConcesionario = ?,correoConcesionario = ?,"
                + "telefonoConcesionario = ?, direccionConcesionario = ?,"
                + "codigoInventario = ? where codigoConcesionario = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, co.getNombreConcesionario());
            ps.setString(2, co.getCorreoConcesionario());
            ps.setString(3, co.getTelefonoConcesionario());
            ps.setString(4, co.getDireccionConcesionario());
            ps.setInt(5, co.getCodigoInventario());
            ps.setInt(6, co.getCodigoConcesionario());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
 
    //ELIMINAR
    public void eliminar(int id) {
        String sql = "delete from concesionarios where codigoConcesionario=" + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
 
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
 
}
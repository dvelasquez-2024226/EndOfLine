package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class EmpleadoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    //CRUD
    //LISTAR
    public List listar(){
        String sql = "select * from empleados";
        List<Empleado> listaEmpleado = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Empleado em = new Empleado();
                em.setCarne(rs.getInt(1));
                em.setNombreEmpleado(rs.getString(2));
                em.setApellidoEmpleado(rs.getString(3));
                em.setCorreoEmpleado(rs.getString(4));
                em.setTelefonoEmpleado(rs.getString(5));
                em.setFechaIngreso(rs.getDate(6));
                em.setUsuarioEmpleado(rs.getString(7));
                em.setContraseniaEmpleado(rs.getString(8));
                em.setCodigoConcesionario(rs.getInt(9));
                listaEmpleado.add(em);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaEmpleado;
    }
    
    //AGREGAR
    public int agregar(Empleado emp){
        String sql = "insert into Empleados(nombreEmpleado, apellidoEmpleado, correoEmpleado, telefonoEmpleado, fechaIngreso, usuarioEmpleado, contraseniaEmpleado, codigoConcesionario) values (?,?,?,?,?,?,?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, emp.getNombreEmpleado());
            ps.setString(2, emp.getApellidoEmpleado());
            ps.setString(3, emp.getCorreoEmpleado());
            ps.setString(4, emp.getTelefonoEmpleado());
            ps.setDate(5, emp.getFechaIngreso());
            ps.setString(6, emp.getUsuarioEmpleado());
            ps.setString(7, emp.getContraseniaEmpleado());
            ps.setInt(8, emp.getCodigoConcesionario());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    //BUSCAR
    public  Empleado listarCodigoEmpleado(int id){
        Empleado emp = new Empleado();
        String sql = "select * Empleados where carne = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                emp.setNombreEmpleado(rs.getString(2));
                emp.setApellidoEmpleado(rs.getString(3));
                emp.setCorreoEmpleado(rs.getString(4));
                emp.setTelefonoEmpleado(rs.getString(5));
                emp.setFechaIngreso(rs.getDate(6));
                emp.setUsuarioEmpleado(rs.getString(7));
                emp.setContraseniaEmpleado(rs.getString(8));
                emp.setCodigoConcesionario(rs.getInt(9));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return emp;
    }
    
    //EDITAR
    public int actualizar(Empleado emp){
        String sql = "update empleados set nombreEmpleado = ?,"
                + "apellidoEmpleado = ?, correoEmpleado = ?,"
                + "telefonoEmpleado = ?, fechaIngreso = ?, usuarioEmpleado= ?,"
                + "contraseniaEmpleado = ? where carne = ?";
        try{
            ps.setString(1, emp.getNombreEmpleado());
            ps.setString(2, emp.getApellidoEmpleado());
            ps.setString(3, emp.getCorreoEmpleado());
            ps.setString(4, emp.getTelefonoEmpleado());
            ps.setDate(5, emp.getFechaIngreso());
            ps.setString(6, emp.getUsuarioEmpleado());
            ps.setString(7, emp.getContraseniaEmpleado());
            ps.setInt(8, emp.getCarne());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    //Eliminar
    public void eliminar(int id){
        String sql = "delete from empleados where carne ="+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
}

package modelo;

import config.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

public class EmpleadoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    public Empleado validar(String usuarioEmpleado, String contraseniaEmpleado) {
        Empleado empleado = new Empleado();
        String sql = "select * from Empleados where usuarioEmpleado = ? and contraseniaEmpleado = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, usuarioEmpleado);
            ps.setString(2, contraseniaEmpleado);
            rs = ps.executeQuery();
            while (rs.next()) {
                empleado.setCarne(rs.getInt("carne"));
                empleado.setNombreEmpleado(rs.getString("nombreEmpleado"));
                empleado.setApellidoEmpleado(rs.getString("apellidoEmpleado"));
                empleado.setCorreoEmpleado(rs.getString("correoEmpleado"));
                empleado.setTelefonoEmpleado(rs.getString("telefonoEmpleado"));
                empleado.setFechaIngreso(rs.getDate("fechaIngreso"));
                empleado.setUsuarioEmpleado(rs.getString("usuarioEmpleado"));
                empleado.setContraseniaEmpleado(rs.getString("contraseniaEmpleado"));
                empleado.setCodigoConcesionario(rs.getInt("codigoConcesionario"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return empleado;
    }
    
    
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
                em.setFoto(rs.getBinaryStream(9));
                em.setCodigoConcesionario(rs.getInt(10));
                listaEmpleado.add(em);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaEmpleado;
    }
    
    public void listarImg(int carne , HttpServletResponse response){
        String sql = "select * from Empleados where carne ="+carne;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("image/*");
        try {
            outputStream=response.getOutputStream();
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            if(rs.next()){
                inputStream=rs.getBinaryStream("foto");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i= 0;
            while((i=bufferedInputStream.read())!=-1){
                bufferedOutputStream.write(i);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
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
        String sql = "select * from Empleados where carne = "+id;
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
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
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

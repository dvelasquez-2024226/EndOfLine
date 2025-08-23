    
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ContratoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
   int resp;
   
    public List listar(){
        String sql = "select * from contratos";
        List<Contrato> listaContrato = new ArrayList<>();
        try{
            con =cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Contrato cont = new Contrato();
                cont.setCodigoContrato(rs.getInt(1));
                cont.setClausula(rs.getString(2));
                cont.setPrecio(rs.getDouble(3));
                cont.setFechaInicio(rs.getDate(4));
                cont.setFechaFin(rs.getDate(5));
                cont.setCodigoConcecionario(rs.getInt(6));
                listaContrato.add(cont);
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return listaContrato;
    }
   
   public int agregar(Contrato cont){
       String sql = "insert into Contratos (clausula, precio, fechaInicio, fechaFin, codigoConcesionario) values (?, ?, ?, ?, ?)";
       try{
           con = cn.Conexion();
           ps = con.prepareStatement(sql);
           ps.setString(1, cont.getClausula());
           ps.setDouble(2, cont.getPrecio());
           ps.setDate(3, cont.getFechaInicio());
           ps.setDate(4, cont.getFechaFin());
           ps.setInt(5, cont.getCodigoConcecionario());
           ps.executeUpdate();
                   
       }catch(Exception e){
           e.printStackTrace();
       }
       return resp;
   }
   
    public Contrato listarCodigoContrato(int codCont){
        Contrato cont = new Contrato();
        String sql = "select * from contratos where codigoContrato ="+codCont;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                cont.setClausula(rs.getString(2));
                cont.setPrecio(rs.getDouble(3));
                cont.setFechaInicio(rs.getDate(4));
                cont.setFechaFin(rs.getDate(5));
                cont.setCodigoConcecionario(rs.getInt(6));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return cont;
    }
   
    public int actualizar(Contrato cont){
        String sql = "update Contratos set clausula = ?,"
               + " precio = ?,"
               + " fechaInicio = ?,"
               + " fechaFin = ? where codigoContrato = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, cont.getClausula());
            ps.setDouble(2, cont.getPrecio());
            ps.setDate(3, cont.getFechaInicio());
            ps.setDate(4, cont.getFechaFin());
            ps.setInt(5, cont.getCodigoContrato());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    public void eliminar(int codCont){
        String sql = "delete from Contratos where codigoContrato ="+codCont;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}

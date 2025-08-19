
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class CarroDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs; 
    int resp;
    
    
    public List listar(){
        String sql ="select * from carros";
        List<Carro> listaCarro = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Carro em = new Carro();
                em.setCodigoCarro(rs.getInt(1));
                em.setMarca(rs.getString(2));
                em.setModelo(rs.getString(3));
                em.setColor(rs.getString(4));
                em.setAnio(rs.getString(5));
                em.setEstado(rs.getString(6));
                em.setCodigoinventario(rs.getInt(7));
                em.setCodigoProveedor(rs.getInt(8));
                
                listaCarro.add(em);
                
            }
            
        }catch(Exception e){
            e.printStackTrace();
            
            
        }
        return listaCarro;
        
    }
    
    
    public int agregar(Carro co){
        String sql ="insert into Carro (marca, modelo, color, anio, estado) values (?, ?, ?, ?, ?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, co.getMarca());
            ps.setString(2, co.getModelo());
            ps.setString(3, co.getColor());
            ps.setString(4, co.getAnio());
            ps.setString(5, co.getEstado());
            ps.executeUpdate();
            
        }catch(Exception e){
            
            e.printStackTrace();
        }
                
                
        return resp;
    }
    
    
    public Carro listarCodigoCarro(int id){
        
        Carro co = new Carro();
        String sql = "Select * from carros where codigoCarro ="+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                co.setMarca(rs.getString(2));
                co.setModelo(rs.getString(3));
                co.setColor(rs.getString(4));
                co.setAnio(rs.getString(5));
                co.setEstado(rs.getString(6));
                
        }
            
        }catch(Exception e){
            
            e.printStackTrace();
        }
        
        return co;
    }
    
    
    public int actualizar(Carro co){
        String sql ="update carros set marca = ?," + "modelo = ?," + "color = ?," + "anio = ?, estado = ? where codigoCarro = ?";
        
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, co.getCodigoCarro());
            ps.setString(2, co.getMarca());
            ps.setString(3, co.getModelo());
            ps.setString(4, co.getColor());
            ps.setString(5, co.getAnio());
            ps.setString(6, co.getEstado());
            ps.setInt(7, co.getCodigoinventario());
            ps.setInt(8, co.getCodigoProveedor());
            ps.executeUpdate();
            
        }catch(Exception e){
            
            e.printStackTrace();
        }
                
                
        return resp;
    
     } 
    
    
    public int eliminar(int id){
        String sql ="delete from carros where codigoCarro ="+id;
        
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            
        }catch(Exception e){
            
            e.printStackTrace();
        }
                
                
        return resp;
    
     } 
    
}

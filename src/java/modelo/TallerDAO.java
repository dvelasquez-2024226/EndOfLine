
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
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
    
    
    
     //Métodos del CRUD
    //LISTAR
    public List listar(){
        String sql= "select * from Taller";
        List<Taller> listaEmpleado = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Taller em = new Taller();
                em.setCodigoTaller(rs.getInt(1));
                em.setUbicacion(rs.getString(2));
                em.setRepuestos(rs.getString(3));
                em.setHerramientas(rs.getString(4));
                em.setEstadoCarro(rs.getString(5));
                
                listaEmpleado.add(em);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return listaEmpleado;
    }
    
    //AGREGAR
    public int agregar(Taller emp){
      String sql = "insert into Taller ( Ubicacion, Repuestos, Herramientas, EstadoCarro) values (?,?,?,?)";
      
      try{
          con = cn.Conexion();
          ps = con.prepareStatement(sql);
          ps.setString(1, emp.getUbicacion());
          ps.setString(2, emp.getRepuestos());
          ps.setString(3, emp.getHerramientas());
          ps.setString(4, emp.getEstadoCarro());
          ps.executeUpdate();
          
          
      }catch(Exception e){
          e.printStackTrace();
      }
        
        return resp;
    } 
    
    //BUSCAR POR CÓDIGO
    public Taller listarCodigoTaller(int id){
        //intanciar un objeto de tipo Empleado
        Taller emp = new Taller();
        String sql = "Select * from Taller where codigoTaller = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                emp.setUbicacion(rs.getString(2));
                emp.setRepuestos(rs.getString(3));
                emp.setHerramientas(rs.getString(4));
                emp.setEstadoCarro(rs.getString(5));
               
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return emp; 
    }
    
    
    //ACTUALIZAR
    public int actualizar(Taller emp){
        String sql = "Update Taller set getUbicacion = ?, getRepuestos = ?, getHerramientas = ?, getEstadoCarro = ? where codigoTaller = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, emp.getUbicacion());
            ps.setString(2, emp.getRepuestos());
            ps.setString(3, emp.getHerramientas());
            ps.setString(4, emp.getEstadoCarro());
            ps.setInt(5, emp.getCodigoTaller());
            ps.executeUpdate();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    
    //ELIMINAR
    
    //ELIMINAR
    
    public void eliminar(int id){
        String sql = "delete from taller where codigoTaller ="+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        
    }
}


package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    public Cliente validar(String apellidoCliente, String telefonoCliente) {
        Cliente cliente = new Cliente();
        String sql = "select * from clientes where apellidoCliente = ? and telefonoCliente = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, apellidoCliente);
            ps.setString(2, telefonoCliente);
            rs = ps.executeQuery();
            while (rs.next()) {
                cliente.setCodigoCliente(rs.getInt("codigoCliente"));
                cliente.setNombreCliente(rs.getString("nombreCliente"));
                cliente.setApellidoCliente(rs.getString("apellidoCliente"));
                cliente.setCorreoCliente(rs.getString("correoCliente"));
                cliente.setTelefonoCliente(rs.getString("telefonoCliente"));
                cliente.setDireccionCliente(rs.getString("direccionCliente"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return cliente;
    }
    
     // MÉTODO LISTAR
    public List<Cliente> listar() {
        String sql = "SELECT * FROM Clientes";
        List<Cliente> listaClientes = new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Cliente c = new Cliente();
                c.setCodigoCliente(rs.getInt(1));
                c.setNombreCliente(rs.getString(2));
                c.setApellidoCliente(rs.getString(3));
                c.setCorreoCliente(rs.getString(4));
                c.setTelefonoCliente(rs.getString(5));
                c.setDireccionCliente(rs.getString(6));
                listaClientes.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaClientes;
    }

    // MÉTODO AGREGAR
    public int agregar(Cliente c) {
        String sql = "INSERT INTO Clientes (nombreCliente, apellidoCliente, correoCliente, telefonoCliente, direccionCliente) "
                   + "VALUES (?,?,?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, c.getNombreCliente());
            ps.setString(2, c.getApellidoCliente());
            ps.setString(3, c.getCorreoCliente());
            ps.setString(4, c.getTelefonoCliente());
            ps.setString(5, c.getDireccionCliente());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    // MÉTODO BUSCAR POR CÓDIGO
    public Cliente listarCodigoCliente(int id) {
        Cliente c = new Cliente();
        String sql = "SELECT * FROM Clientes WHERE codigoCliente = " + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                c.setNombreCliente(rs.getString(2));
                c.setApellidoCliente(rs.getString(3));
                c.setCorreoCliente(rs.getString(4));
                c.setTelefonoCliente(rs.getString(5));
                c.setDireccionCliente(rs.getString(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return c;
    }

    // MÉTODO ACTUALIZAR
    public int actualizar(Cliente c) {
        String sql = "UPDATE Clientes SET "
                   + "nombreCliente = ?, "
                   + "apellidoCliente = ?, "
                   + "correoCliente = ?, "
                   + "telefonoCliente = ?, "
                   + "direccionCliente = ? "
                   + "WHERE codigoCliente = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, c.getNombreCliente());
            ps.setString(2, c.getApellidoCliente());
            ps.setString(3, c.getCorreoCliente());
            ps.setString(4, c.getTelefonoCliente());
            ps.setString(5, c.getDireccionCliente());
            ps.setInt(6, c.getCodigoCliente());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

    // MÉTODO ELIMINAR
    public void eliminar(int id) {
        String sql = "DELETE FROM Clientes WHERE codigoCliente = " + id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}

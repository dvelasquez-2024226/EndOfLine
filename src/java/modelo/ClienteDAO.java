package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ClienteDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;

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

}

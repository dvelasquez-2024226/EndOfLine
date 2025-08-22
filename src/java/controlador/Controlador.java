/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Carro;
import modelo.CarroDAO;
import modelo.Cliente;
import modelo.ClienteDAO;
import modelo.Contrato;
import modelo.ContratoDAO;
import modelo.DetalleFactura;
import modelo.DetalleFacturaDAO;
import modelo.Empleado;
import modelo.EmpleadoDAO;
import modelo.Factura;
import modelo.FacturaDAO;
import modelo.Inventario;
import modelo.InventarioDAO;
import modelo.Proveedor;
import modelo.ProveedorDAO;
import modelo.Publicidad;
import modelo.PublicidadDAO;

/**
 *
 * @author ISAAC
 */
public class Controlador extends HttpServlet {

    Empleado empleado = new Empleado();
    EmpleadoDAO empleadoDao = new EmpleadoDAO();
    Publicidad publicidad = new Publicidad();
    PublicidadDAO publicidadDao = new PublicidadDAO();
    Proveedor proveedor = new Proveedor();
    ProveedorDAO proveedorDao = new ProveedorDAO();
    Inventario inventario = new Inventario();
    InventarioDAO inventarioDAO = new InventarioDAO();
    Factura factura = new Factura();
    FacturaDAO facturaDao = new FacturaDAO();
    Carro carro = new Carro();
    CarroDAO carroDao = new CarroDAO();
    Cliente cliente       = new Cliente();
    ClienteDAO clienteDao = new ClienteDAO();
    Contrato contrato = new Contrato();
    ContratoDAO contratoDao = new ContratoDAO();
    DetalleFactura detaFactura = new DetalleFactura();
    DetalleFacturaDAO detaFacturaDao = new DetalleFacturaDAO();
    int codDetaFactura;
    int codContrato;
    int codCarro;
    int codFactura;
    int codEmpleado;
    int codPublicidad;
    int codProveedor;
    int codInventario;
    int codCliente;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if (menu.equals("Principal")) {
            request.getRequestDispatcher("Principal.jsp").forward(request, response);
        } else if (menu.equals("Empleado")) {
            request.getRequestDispatcher("Empleado.jsp").forward(request, response);
        } else if (menu.equals("PrincipalEmpleado")) {
            request.getRequestDispatcher("PrincipalEmpleados.jsp").forward(request, response);
        } else if (menu.equals("Publicidad")) {
            switch (accion) {
                case "Listar":
                    List listaPublicidad = publicidadDao.listar();
                    request.setAttribute("publicidades", listaPublicidad);
                    break;
                case "Agregar":
                    String fInicio = request.getParameter("txtFechaInicio");
                    java.sql.Date fechaInicio = java.sql.Date.valueOf(fInicio);
                    String fFin = request.getParameter("txtFechaFin");
                    java.sql.Date fechaFin = java.sql.Date.valueOf(fFin);
                    Double cost = Double.valueOf(request.getParameter("txtCostos"));
                    String colab = request.getParameter("txtColaboradores");
                    int carro = Integer.valueOf(request.getParameter("txtCodigoCarro"));
                    publicidad.setFechaInicio(fechaInicio);
                    publicidad.setFechaFin(fechaFin);
                    publicidad.setCostos(cost);
                    publicidad.setColaboradores(colab);
                    publicidad.setCodigoCarro(carro);
                    publicidadDao.agregar(publicidad);
                    request.getRequestDispatcher("Controlador?menu=Publicidad&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    codPublicidad = Integer.parseInt(request.getParameter("codigoPublicidad"));
                    Publicidad p = publicidadDao.listarCodigoPublicidad(codPublicidad);
                    request.setAttribute("publicidad", p);
                    request.getRequestDispatcher("Controlador?menu=Publicidad&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String fInicioPu = request.getParameter("txtFechaInicio");
                    java.sql.Date fechaInicioPu = java.sql.Date.valueOf(fInicioPu);
                    String fFinPu = request.getParameter("txtFechaFin");
                    java.sql.Date fechaFinPu = java.sql.Date.valueOf(fFinPu);
                    Double costPu = Double.valueOf(request.getParameter("txtCostos"));
                    String colabPu = request.getParameter("txtColaboradores");
                    int carroPu = Integer.valueOf(request.getParameter("txtCodigoCarro"));
                    publicidad.setFechaInicio(fechaInicioPu);
                    publicidad.setFechaFin(fechaFinPu);
                    publicidad.setCostos(costPu);
                    publicidad.setColaboradores(colabPu);
                    publicidad.setCodigoCarro(carroPu);
                    publicidad.setCodigoPublicidad(codPublicidad);
                    publicidadDao.actualizar(publicidad);
                    request.getRequestDispatcher("Controlador?menu=Publicidad&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    codPublicidad = Integer.parseInt(request.getParameter("codigoPublicidad"));
                    publicidadDao.eliminar(codPublicidad);
                    request.getRequestDispatcher("Controlador?menu=Publicidad&accion=Listar").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("Publicidad.jsp").forward(request, response);
        } else if (menu.equals("ProveedorNV")) {
            switch (accion) {
                case "Listar":
                    List<Proveedor> listaProveedores = proveedorDao.listar();
                    request.setAttribute("proveedores", listaProveedores);
                    break;
                case "Agregar":
                    String nombre = request.getParameter("txtNombreProveedor");
                    String apellido = request.getParameter("txtApellidoProveedor");
                    String correo = request.getParameter("txtCorreoProveedor");
                    String telefono = request.getParameter("txtTelefonoProveedor");
                    proveedor.setNombreProveedor(nombre);
                    proveedor.setApellidoProveedor(apellido);
                    proveedor.setCorreoProveedor(correo);
                    proveedor.setTelefonoProveedor(telefono);
                    proveedorDao.agregar(proveedor);
                    request.getRequestDispatcher("Controlador?menu=ProveedorNV&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    codProveedor = Integer.parseInt(request.getParameter("codigoProveedor"));
                    Proveedor p = proveedorDao.listarCodigoProveedor(codProveedor);
                    request.setAttribute("proveedor", p);
                    request.getRequestDispatcher("Controlador?menu=ProveedorNV&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String nombres = request.getParameter("txtNombreProveedor");
                    String apellidos = request.getParameter("txtApellidoProveedor");
                    String correos = request.getParameter("txtCorreoProveedor");
                    String telefonos = request.getParameter("txtTelefonoProveedor");
                    proveedor.setNombreProveedor(nombres);
                    proveedor.setApellidoProveedor(apellidos);
                    proveedor.setCorreoProveedor(correos);
                    proveedor.setTelefonoProveedor(telefonos);
                    proveedor.setCodigoProveedor(codProveedor);
                    proveedorDao.actualizar(proveedor);
                    request.getRequestDispatcher("Controlador?menu=ProveedorNV&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    codProveedor = Integer.parseInt(request.getParameter("codigoProveedor"));
                    proveedorDao.eliminar(codProveedor);
                    request.getRequestDispatcher("Controlador?menu=ProveedorNV&accion=Listar").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("ProveedorNV.jsp").forward(request, response);
        } else if (menu.equals("ProveedorVC")) {
            switch (accion) {
                case "Listar":
                    List<Proveedor> listaProveedores = proveedorDao.listar();
                    request.setAttribute("proveedores", listaProveedores);
                    break;
            }
            request.getRequestDispatcher("ProveedorVC.jsp").forward(request, response);
        } else if (menu.equals("Inventario")) {
             switch (accion) {
                case "Listar":
                    List listaInventario = inventarioDAO.listar();
                    request.setAttribute("inventario", listaInventario);
                    break;
                case"Agregar":
                    int stock = Integer.valueOf(request.getParameter("txtStock"));
                    String fIngreso = request.getParameter("txtFechaIngreso");
                    java.sql.Date fechaIngreso = java.sql.Date.valueOf(fIngreso);
                    String fSalida = request.getParameter("txtFechaSalida");
                    java.sql.Date fechaSalida = java.sql.Date.valueOf(fSalida);
                    int carne = Integer.valueOf(request.getParameter("txtCarne"));
                    inventario.setStock(stock);
                    inventario.setFechaIngreso(fechaIngreso);
                    inventario.setFechaSalida(fechaSalida);
                    inventario.setCarne(carne);
                    inventarioDAO.agregar(inventario);
                    request.getRequestDispatcher("Controlador?menu=Inventario&accion=Listar").forward(request, response);
                    return;
                    
                case"Editar":
                    codInventario = Integer.parseInt(request.getParameter("codigoInventario"));
                    Inventario inven = inventarioDAO.listarCodigoInventario(codInventario);
                    request.setAttribute("inventarioSeleccionado", inven);
                    break;
                case"Actualizar":
                    int codIn = Integer.parseInt(request.getParameter("txtCodigoInventario")); // Obtiene el ID del formulario.
                    int stockIn = Integer.valueOf(request.getParameter("txtStock"));
                    String fIngresoIn = request.getParameter("txtFechaIngreso");
                    java.sql.Date fechaIngresoIn = java.sql.Date.valueOf(fIngresoIn);
                    String fSalidaIn = request.getParameter("txtFechaSalida");
                    java.sql.Date fechaSalidaIn = java.sql.Date.valueOf(fSalidaIn);
                    int carneIn = Integer.valueOf(request.getParameter("txtCarne"));

                    inventario.setCodigoInventario(codIn); // Usa la variable local `codIn`.
                    inventario.setStock(stockIn);
                    inventario.setFechaIngreso(fechaIngresoIn);
                    inventario.setFechaSalida(fechaSalidaIn);
                    inventario.setCarne(carneIn);
                    inventarioDAO.actualizar(inventario);
                    request.getRequestDispatcher("Controlador?menu=Inventario&accion=Listar").forward(request, response);
                    return;
                    
                case"Eliminar":
                    codInventario = Integer.parseInt(request.getParameter("codigoInventario"));
                    inventarioDAO.eliminar(codInventario);
                    request.getRequestDispatcher("Controlador?menu=Inventario&accion=Listar").forward(request, response);
                    return;
            
            }
            request.getRequestDispatcher("Inventario.jsp").forward(request, response);
        } else if (menu.equals("InventarioCl")) {
             switch (accion) {
                case "Listar":
                    List listaInventario = inventarioDAO.listar();
                    request.setAttribute("inventario", listaInventario);
                    break;
             }
             request.getRequestDispatcher("InventarioCl.jsp").forward(request, response);
        } else if (menu.equals("Empleados")) {
             switch (accion) {
                case "Listar":
                    List listaEmpleados = empleadoDao.listar();
                    request.setAttribute("empleados", listaEmpleados);
                    break;
                case"Agregar":
                    String nombres = request.getParameter("txtNombreEmpleado");
                    String apellido = request.getParameter("txtApellidoEmpleado");
                    String correo = request.getParameter("txtCorreoEmpleado");
                    String teleofno = request.getParameter("txtTelefonoEmpleado");
                    String fecha = request.getParameter("txtFechaIngreso");
                    java.sql.Date fechaIngreso = java.sql.Date.valueOf(fecha);
                    String usuario = request.getParameter("txtUsuarioEmpleado");
                    String contra = request.getParameter("txtContraseniaEmpleado");
                    int codConcesonario = Integer.valueOf(request.getParameter("txtCodigoConcesionario"));
                    empleado.setNombreEmpleado(nombres);
                    empleado.setApellidoEmpleado(apellido);
                    empleado.setCorreoEmpleado(correo);
                    empleado.setTelefonoEmpleado(teleofno);
                    empleado.setFechaIngreso(fechaIngreso);
                    empleado.setUsuarioEmpleado(usuario);
                    empleado.setContraseniaEmpleado(contra);
                    empleado.setCodigoConcesionario(codConcesonario);
                    empleadoDao.agregar(empleado);
                    request.getRequestDispatcher("Controlador?menu=Empleados&accion=Listar").forward(request, response);
                break;
                case "Editar":
                    codEmpleado = Integer.parseInt(request.getParameter("carne"));
                    Empleado e = empleadoDao.listarCodigoEmpleado(codEmpleado);
                    request.setAttribute("empleado", e);
                    request.getRequestDispatcher("Controlador?menu=Empleados&accion=Listar").forward(request, response);
                break;
                case "Actualizar":
                    String nom = request.getParameter("txtNombreEmpleado");
                    String apell = request.getParameter("txtApellidoEmpleado");
                    String corr = request.getParameter("txtCorreoEmpleado");
                    String teleof = request.getParameter("txtTelefonoEmpleado");
                    String fech = request.getParameter("txtFechaIngreso");
                    java.sql.Date fechaIngres = java.sql.Date.valueOf(fech);
                    String usua = request.getParameter("txtUsuarioEmpleado");
                    String contr = request.getParameter("txtContraseniaEmpleado");
                    int codConcesonar = Integer.valueOf(request.getParameter("txtCodigoConcesionario"));
                    empleado.setNombreEmpleado(nom);
                    empleado.setApellidoEmpleado(apell);
                    empleado.setCorreoEmpleado(corr);
                    empleado.setTelefonoEmpleado(teleof);
                    empleado.setFechaIngreso(fechaIngres);
                    empleado.setUsuarioEmpleado(usua);
                    empleado.setContraseniaEmpleado(contr);
                    empleado.setCarne(codEmpleado);
                    empleadoDao.actualizar(empleado);
                    request.getRequestDispatcher("Controlador?menu=Empleados&accion=Listar").forward(request, response);
                    break;
                    case"Eliminar":
                    codEmpleado = Integer.parseInt(request.getParameter("carne"));
                    empleadoDao.eliminar(codEmpleado);
                    request.getRequestDispatcher("Controlador?menu=Empleados&accion=Listar").forward(request, response);
                    break;
        }
             request.getRequestDispatcher("Empleado.jsp").forward(request, response);
        }else if(menu.equals("Factura")){
            switch(accion){
                case"Listar":
                    List lsitaFactura = facturaDao.listar();
                    request.setAttribute("facturas", lsitaFactura);
                break;
                case"Agregar":
                    Date fechaEmision = Date.valueOf(request.getParameter("txtFechaEmision"));
                    Double total = Double.parseDouble(request.getParameter("txtTotal"));
                    String estado = request.getParameter("txtEstado");
                    String metodoPago = request.getParameter("txtMetodoPago");
                    Integer codigoDetalleFactura = Integer.parseInt(request.getParameter("txtCodigoDetalleFactura"));
                    Integer carne = Integer.parseInt(request.getParameter("txtCarne"));
                    Integer codigoCliente = Integer.parseInt(request.getParameter("txtCodigoCliente"));
                    factura.setFechaEmision(fechaEmision);
                    factura.setTotal(total);
                    factura.setEstado(estado);
                    factura.setMetodoPago(metodoPago);
                    factura.setCodigoDetalleFactura(codigoDetalleFactura);
                    factura.setCarne(carne);
                    factura.setCodigoCliente(codigoCliente);
                    facturaDao.agregar(factura);
                    request.getRequestDispatcher("Controlador?menu=Factura&accion=Listar").forward(request, response);
                break;
                case"Editar":
                    codFactura = Integer.parseInt(request.getParameter("codigoFactura"));
                    Factura f = facturaDao.listarCodigoFactura(codFactura);
                    request.setAttribute("factura", f);
                    request.getRequestDispatcher("Controlador?menu=Factura&accion=Listar").forward(request, response);
                break;
                case"Actualizar":
                    Date fechaEmisionFac = Date.valueOf(request.getParameter("txtFechaEmision"));
                    Double totalFac = Double.parseDouble(request.getParameter("txtTotal"));
                    String estadoFac = request.getParameter("txtEstado");
                    String metodoPagoFac = request.getParameter("txtMetodoPago");
                    factura.setFechaEmision(fechaEmisionFac);
                    factura.setTotal(totalFac);
                    factura.setEstado(estadoFac);
                    factura.setMetodoPago(metodoPagoFac);
                    factura.setCodigoFactura(codFactura);
                    facturaDao.actualizar(factura);
                    request.getRequestDispatcher("Controlador?menu=Factura&accion=Listar").forward(request, response);
                break;
                case"Eliminar":
                    codFactura = Integer.parseInt(request.getParameter("codigoFactura"));
                    facturaDao.eliminar(codFactura);
                    request.getRequestDispatcher("Controlador?menu=Factura&accion=Listar").forward(request, response);
                break;
            }
            request.getRequestDispatcher("FacturaEmpleado.jsp").forward(request, response);
            } else if (menu.equals("Carro")) {

            switch (accion) {
                case "Listar":
                    List listaCarros = carroDao.listar();
                    request.setAttribute("carros", listaCarros);
                    
                    break;
                case "Agregar":
                    String marca = request.getParameter("txtMarca");
                    String modelo = request.getParameter("txtModelo");
                    String color = request.getParameter("txtColor");
                    String anio = request.getParameter("txtAnio");
                    String estado = request.getParameter("txtEstado");
                    String codigoinventario = request.getParameter("txtCodigoinventario");
                    String codigoproveedor = request.getParameter("txtCodigoProveedor");
                    int codInventario = Integer.parseInt(codigoinventario);
                    int codProveedor = Integer.parseInt(codigoproveedor);
                    carro.setMarca(marca);
                    carro.setModelo(modelo);
                    carro.setColor(color);
                    carro.setAnio(anio);
                    carro.setEstado(estado);
                    carro.setCodigoinventario(codInventario);
                    carro.setCodigoProveedor(codProveedor);
                    carroDao.agregar(carro);
                    request.getRequestDispatcher("Controlador?menu=Carro&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    codCarro = Integer.parseInt(request.getParameter("codigoCarro"));
                    Carro c = carroDao.listarCodigoCarro(codCarro);
                    request.setAttribute("carro", c);
                    request.getRequestDispatcher("Controlador?menu=Carro&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String marcaEmp = request.getParameter("txtMarca");
                    String modeloEmp = request.getParameter("txtModelo");
                    String colorEmp = request.getParameter("txtColor");
                    String anioEmp = request.getParameter("txtAnio");
                    String estadoEmp = request.getParameter("txtEstado");
                    String codigoinv = request.getParameter("txtCodigoinventario");
                    String codigopro = request.getParameter("txtCodigoProveedor");
                    int codInv = Integer.parseInt(codigoinv);
                    int codPro = Integer.parseInt(codigopro);
                    carro.setCodigoCarro(codCarro);
                    carro.setMarca(marcaEmp);
                    carro.setModelo(modeloEmp);
                    carro.setColor(colorEmp);
                    carro.setAnio(anioEmp);
                    carro.setEstado(estadoEmp);
                    carro.setCodigoinventario(codInv);
                    carro.setCodigoProveedor(codPro);
                    carroDao.actualizar(carro);
                    request.getRequestDispatcher("Controlador?menu=Carro&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    codCarro = Integer.parseInt(request.getParameter("codigoCarro"));
                    carroDao.eliminar(codCarro);
                    request.getRequestDispatcher("Controlador?menu=Carro&accion=Listar").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("CarroEmpleado.jsp").forward(request, response);
        } else if (menu.equals("CarroCl")) {
            switch (accion) {
                case "Listar":
                    List listaCarros = carroDao.listar();
                    request.setAttribute("carros", listaCarros);
                    
                    break;
            }
            request.getRequestDispatcher("CarroCl.jsp").forward(request, response);
            
            
        } else if (menu.equals("Cliente")) {
            switch (accion) {
                case "Listar":
                    List listaClientes = clienteDao.listar();
                    request.setAttribute("clientes", listaClientes);
                    break;
                case "Agregar":
                    String nom   = request.getParameter("txtNombreCliente");
                    String ape   = request.getParameter("txtApellidoCliente");
                    String correo= request.getParameter("txtCorreoCliente");
                    String tel   = request.getParameter("txtTelefonoCliente");
                    String dir   = request.getParameter("txtDireccionCliente");
                    
                    cliente.setNombreCliente(nom);
                    cliente.setApellidoCliente(ape);
                    cliente.setCorreoCliente(correo);
                    cliente.setTelefonoCliente(tel);
                    cliente.setDireccionCliente(dir);
                    clienteDao.agregar(cliente);
                    
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar")
                           .forward(request, response);
                    break;
                case "Editar":
                    codCliente = Integer.parseInt(request.getParameter("codigoCliente"));
                    Cliente c   = clienteDao.listarCodigoCliente(codCliente);
                    request.setAttribute("cliente", c);
                    
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar")
                           .forward(request, response);
                    break;
                case "Actualizar":
                    String nomU    = request.getParameter("txtNombreCliente");
                    String apeU    = request.getParameter("txtApellidoCliente");
                    String correoU = request.getParameter("txtCorreoCliente");
                    String telU    = request.getParameter("txtTelefonoCliente");
                    String dirU    = request.getParameter("txtDireccionCliente");
                    
                    cliente.setNombreCliente(nomU);
                    cliente.setApellidoCliente(apeU);
                    cliente.setCorreoCliente(correoU);
                    cliente.setTelefonoCliente(telU);
                    cliente.setDireccionCliente(dirU);
                    cliente.setCodigoCliente(codCliente);
                    clienteDao.actualizar(cliente);
                    
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar")
                           .forward(request, response);
                    break;
                case "Eliminar":
                    codCliente = Integer.parseInt(request.getParameter("codigoCliente"));
                    clienteDao.eliminar(codCliente);
                    
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar")
                           .forward(request, response);
                    break;
            }
            request.getRequestDispatcher("ClienteEmpleado.jsp").forward(request, response);
        }else if(menu.equals("Contrato")){
            switch(accion){
                case "Listar":
                    List listaContratos = contratoDao.listar();
                    request.setAttribute("contratos", listaContratos);
                    break;
                case "Agregar":
                    String cla = request.getParameter("txtClausula");
                    Double pre = Double.parseDouble(request.getParameter("txtPrecio"));
                    String feIni = request.getParameter("txtFechaInicio");
                    java.sql.Date fechaIni = java.sql.Date.valueOf(feIni);
                    String feFin = request.getParameter("txtFechaFin");
                    java.sql.Date fechaFin = java.sql.Date.valueOf(feFin);
                    int codConcesonario = Integer.valueOf(request.getParameter("txtCodigoConcesionario"));
                    contrato.setClausula(cla);
                    contrato.setPrecio(pre);
                    contrato.setFechaInicio(fechaIni);
                    contrato.setFechaFin(fechaFin);
                    contrato.setCodigoConcesionario(codConcesonario);
                    contratoDao.agregar(contrato);
                    request.getRequestDispatcher("Controlador?menu=Contrato&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    codContrato = Integer.parseInt(request.getParameter("codigoContrato"));
                    Contrato c = contratoDao.listarCodigoContrato(codContrato);
                    request.setAttribute("contrato", c);
                    request.getRequestDispatcher("Controlador?menu=Contrato&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String claCon = request.getParameter("txtClausula");
                    Double preCon = Double.parseDouble(request.getParameter("txtPrecio"));
                    String feIniCon = request.getParameter("txtFechaInicio");
                    java.sql.Date fechaIniCon = java.sql.Date.valueOf(feIniCon);
                    String feFinCon = request.getParameter("txtFechaFin");
                    java.sql.Date fechaFinCon = java.sql.Date.valueOf(feFinCon);
                    int codConce = Integer.valueOf(request.getParameter("txtCodigoConcesionario"));
                    contrato.setClausula(claCon);
                    contrato.setPrecio(preCon);
                    contrato.setFechaInicio(fechaIniCon);
                    contrato.setFechaFin(fechaFinCon);
                    contrato.setCodigoContrato(codContrato);
                    contratoDao.actualizar(contrato);
                    request.getRequestDispatcher("Controlador?menu=Contrato&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    codContrato = Integer.parseInt(request.getParameter("codigoContrato"));
                    contratoDao.eliminar(codContrato);
                    request.getRequestDispatcher("Controlador?menu=Contrato&accion=Listar").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("Contrato.jsp").forward(request, response);
        }else if(menu.equals("DetalleFactura")){
            switch(accion){
                case"Listar":
                    List lsitaDetalleFactura = detaFacturaDao.listar();
                    request.setAttribute("detaFacturas", lsitaDetalleFactura);
                break;
                case"Agregar":
                    Integer cantidad = Integer.parseInt(request.getParameter("txtCantida"));
                    Double subTotal = Double.parseDouble(request.getParameter("txtSubTotal"));
                    Double precioUnitario = Double.parseDouble(request.getParameter("txtPrecioUnitario"));
                    String observaciones = request.getParameter("txtObservaciones");
                    Integer codigoContrato = Integer.parseInt(request.getParameter("txtCodigoContrato"));
                    detaFactura.setCantidad(cantidad);
                    detaFactura.setSubTotal(subTotal);
                    detaFactura.setPrecioUnitario(precioUnitario);
                    detaFactura.setObservaciones(observaciones);
                    detaFactura.setCodigoContrato(codigoContrato);
                    detaFacturaDao.agregar(detaFactura);
                    request.getRequestDispatcher("Controlador?menu=DetalleFactura&accion=Listar").forward(request, response);
                break;
                case"Editar":
                    codDetaFactura = Integer.parseInt(request.getParameter("codigoDetalleFactura"));
                    DetalleFactura df = detaFacturaDao.listarCodigoDetalleFactura(codDetaFactura);
                    request.setAttribute("detalleFactura", df );
                    request.getRequestDispatcher("Controlador?menu=DetalleFactura&accion=Listar").forward(request, response);
                break;
                case"Actualizar":
                    Integer cantidadDeFa = Integer.parseInt(request.getParameter("txtCantida"));
                    Double subTotalDeFa = Double.parseDouble(request.getParameter("txtSubTotal"));
                    Double precioUnitarioDeFa = Double.parseDouble(request.getParameter("txtPrecioUnitario"));
                    String observacionesDeFa = request.getParameter("txtObservaciones");
                    detaFactura.setCantidad(cantidadDeFa);
                    detaFactura.setSubTotal(subTotalDeFa);
                    detaFactura.setPrecioUnitario(precioUnitarioDeFa);
                    detaFactura.setObservaciones(observacionesDeFa);
                    detaFacturaDao.actualizar(detaFactura);
                    request.getRequestDispatcher("Controlador?menu=DetalleFactura&accion=Listar").forward(request, response);
                break;
                case"Eliminar":
                    codDetaFactura = Integer.parseInt(request.getParameter("codigoDetalleFactura"));
                    detaFacturaDao.eliminar(codDetaFactura);
                    request.getRequestDispatcher("Controlador?menu=DetalleFactura&accion=Listar").forward(request, response);
                break;
            }
            request.getRequestDispatcher("DetalleFacturaEmpleado.jsp").forward(request, response);
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}

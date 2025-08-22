<%-- 
    Document   : Proveedor
    Created on : 18 ago 2025, 17:46:46
    Author     : diego
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
        <title>Facturas</title>  
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">  

        <style>
            body {
                background: #f4f6f9;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }
            .header-bar {
                background-color: #1a237e; /* Azul oscuro como en tu menú principal */
                color: white;
                padding: 15px;
                text-align: center;
                font-weight: bold;
                font-size: 1.5rem;
                border-radius: 0 0 15px 15px;
                margin-bottom: 25px;
            }
            .card {
                border-radius: 15px;
                box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            }
            .card-body label {
                color: #1a237e;
            }
            .btn-info {
                background-color: #1a237e;
                border: none;
            }
            .btn-info:hover {
                background-color: #0d164e;
            }
            .table thead {
                background-color: #1a237e;
                color: white;
            }
            .table tbody tr:hover {
                background-color: #e3e6f0;
            }
        </style>  
    </head>  
    <body>  

        <div class="header-bar">Gestión de Factuas</div>  

        <div class="container-fluid">  
            <div class="row">  
                <!-- Formulario -->  
                <div class="col-md-4 mb-4">  
                    <div class="card">  
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Datos de la Factura</h5>  
                            <form action="Controlador?menu=Factura" method="POST"}>  
                                <div class="form-group">
                                    <label><strong>Fecha de Emision:</strong></label>
                                    <input type="date" value="${factura.getFechaEmision()}" name="txtFechaEmision" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Total:</strong></label>
                                    <input type="text" value="${factura.getTotal()}" name="txtTotal" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Estado:</strong></label>
                                    <input type="text" value="${factura.getEstado()}" name="txtEstado" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Metodo de Pago:</strong></label>
                                    <input type="text" value="${factura.getMetodoPago()}" name="txtMetodoPago" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Codigo del Detalle Factura:</strong></label>
                                    <input type="text" value="${factura.getCodigoDetalleFactura()}" name="txtCodigoDetalleFactura" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Carne de Empleado:</strong></label>
                                    <input type="text" value="${factura.getCarne()}" name="txtCarne" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Codigo del Cliente</strong></label>
                                    <input type="text" value="${factura.getCodigoCliente()}" name="txtCodigoCliente" class="form-control">
                                </div>
                                <div class="d-flex justify-content-between">  
                                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">  
                                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success">  
                                </div>  
                            </form>  
                        </div>  
                    </div>  
                </div>  

                <!-- Tabla -->  
                <div class="col-md-8">  
                    <div class="card">  
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Lista de Facturas</h5>  
                            <table class="table table-hover">  
                                <thead>
                                    <tr>
                                        <th>CODIGO</th>
                                        <th>FECHA DE EMISION</th>
                                        <th>TOTAL</th>
                                        <th>ESTADO</th>
                                        <th>METODO DE PAGO</th>
                                        <th>CODIGO DETALLE FACTURA</th>
                                        <th>CARNE</th>
                                        <th>CODIGO CLIENTE</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="factura" items="${facturas}">
                                        <tr>
                                            <td>${factura.getCodigoFactura()}</td>
                                            <td>${factura.getFechaEmision()}</td>
                                            <td>${factura.getTotal()}</td>
                                            <td>${factura.getEstado()}</td>
                                            <td>${factura.getMetodoPago()}</td>
                                            <td>${factura.getCodigoDetalleFactura()}</td>
                                            <td>${factura.getCarne()}</td>
                                            <td>${factura.getCodigoCliente()}</td>
                                            <td>
                                                <a class="btn btn-warning" href="Controlador?menu=Factura&accion=Editar&codigoFactura=${factura.getCodigoFactura()}">Editar</a>
                                                <a class="btn btn-danger" href="Controlador?menu=Factura&accion=Eliminar&codigoFactura=${factura.getCodigoFactura()}"> Eliminar</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>  
                        </div>  
                    </div>  
                </div>  
            </div>  
        </div>  

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>  
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>  
    </body>  
</html>
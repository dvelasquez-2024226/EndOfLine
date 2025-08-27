<%-- 
    Document   : DetalleFacturaEmpleado
    Created on : 22 ago 2025, 0:17:00
    Author     : diego
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
        <title>Detalle Factura</title>  
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

        <div class="header-bar">Gestión de Detella Factura</div>  

        <div class="container-fluid">  
            <div class="row">  
                <!-- Formulario -->  
                <div class="col-md-4 mb-4">  
                    <div class="card">  
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Datos del Detalle Factura</h5>  
                            <form action="Controlador?menu=DetalleFactura" method="POST"}>  
                                <div class="form-group">
                                    <label><strong>Cantidad:</strong></label>
                                    <input type="date" value="${detaFactura.getCantidad()}" name="txtCantida" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>SubTotal:</strong></label>
                                    <input type="text" value="${detaFactura.getSubTotal()}" name="txtSubTotal" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Precio Unitario:</strong></label>
                                    <input type="text" value="${detaFactura.getPrecioUnitario()}" name="txtPrecioUnitario" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Obervaciones:</strong></label>
                                    <input type="text" value="${detaFactura.getObservaciones()}" name="txtObservaciones" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Codigo del Contrato:</strong></label>
                                    <input type="text" value="${detaFactura.getCodigoContrato()}" name="txtCodigoContrato" class="form-control">
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
                            <h5 class="card-title text-center text-primary">Lista de Detalle Factura</h5>  
                            <table class="table table-hover">  
                                <thead>
                                    <tr>
                                        <th>CODIGO</th>
                                        <th>CANTIDAD</th>
                                        <th>SUBTOTAL</th>
                                        <th>PRECIO UNITAIO</th>
                                        <th>OBSERVACIONES</th>
                                        <th>CODIGO CONTRATO</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="detaFactura" items="${detaFacturas}">
                                        <tr>
                                            <td>${detaFactura.getCodigoDetalleFactura()}</td>
                                            <td>${detaFactura.getCantidad()}</td>
                                            <td>${detaFactura.getSubTotal()}</td>
                                            <td>${detaFactura.getPrecioUnitario()}</td>
                                            <td>${detaFactura.getObservaciones()}</td>
                                            <td>${detaFactura.getCodigoContrato()}</td>
                                            <td>
                                                <a class="btn btn-warning" href="Controlador?menu=DetalleFactura&accion=Editar&codigoDetalleFactura=${detaFactura.getCodigoDetalleFactura()}">Editar</a>
                                                <a class="btn btn-danger" href="Controlador?menu=DetalleFactura&accion=Eliminar&codigoDetalleFactura=${detaFactura.getCodigoDetalleFactura()}"> Eliminar</a>
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

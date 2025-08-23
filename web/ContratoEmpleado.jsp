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
        <title>Gestión de Empleados</title>  
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

        <div class="header-bar">Gestión de Contratos</div>  

        <div class="container-fluid">  
            <div class="row">  
                <!-- Formulario -->  
                <div class="col-md-4 mb-4">  
                    <div class="card">  
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Datos del Contrato</h5>  
                            <form action="Controlador?menu=Contrato" method="POST"}>  
                                <div class="form-group">
                                    <label><strong>CLAUSULA:</strong></label>
                                    <input type="text" value="${contrato.getClausula()}" name="txtClausula" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>PRECIO:</strong></label>
                                    <input type="text" value="${contrato.getPrecio()}" name="txtPrecio" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>FECHA INICIO:</strong></label>
                                    <input type="date" value="${contrato.getFechaInicio()}" name="txtFechaInicio" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>FECHA FIN:</strong></label>
                                    <input type="date" value="${contrato.getFechaFin()}" name="txtFechaFin" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>COD CONCESIONARIO:</strong></label>
                                    <input type="text" value="${contrato.getCodigoConcesionario()}" name="txtCodigoConcesionario" class="form-control">
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
                            <h5 class="card-title text-center text-primary">Lista de Contratos</h5>  
                            <table class="table table-hover">  
                                <thead>
                                    <tr>
                                        <th>CODIGO</th>
                                        <th>CLAUSULA</th>
                                        <th>PRECIO</th>
                                        <th>FECHA INICIO</th>
                                        <th>FECHA FIN</th>
                                        <th>COD CONCESIONARIO</th>                            
                                        <th>ACCIONES</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="contrato" items="${contratos}">
                                        <tr>
                                            <td>${contrato.getCodigoContrato()}</td>
                                            <td>${contrato.getClausula()}</td>
                                            <td>${contrato.getPrecio()}</td>
                                            <td>${contrato.getFechaInicio()}</td>
                                            <td>${contrato.getFechaFin()}</td>
                                            <td>${contrato.getCodigoConcecionario()}</td>                                
                                            <td>
                                                <a class="btn btn-warning" href="Controlador?menu=Contrato&accion=Editar&codigoContrato=${contrato.getCodigoContrato()}">Editar</a>
                                                <a class="btn btn-danger" href="Controlador?menu=Contrato&accion=Eliminar&codigoContrato=${contrato.getCodigoContrato()}">Eliminar</a>
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

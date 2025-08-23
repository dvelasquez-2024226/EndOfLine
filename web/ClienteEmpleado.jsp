<%-- 
    Document   : Cliente
    Created on : 20 ago 2025, 14:58:08
    Author     : boror
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

        <div class="header-bar">Gestión de Clientes</div>  

        <div class="container-fluid">  
            <div class="row">  
                <!-- Formulario -->  
                <div class="col-md-4 mb-4">  
                    <div class="card">  
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Datos del Clientes</h5>  
                            <form action="Controlador?menu=Cliente" method="POST">
                                <div class="form-group">
                                    <label><strong>Nombre Cliente:</strong></label>
                                    <input type="text" value="${cliente.nombreCliente}" name="txtNombreCliente" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Apellido Cliente:</strong></label>
                                    <input type="text" value="${cliente.apellidoCliente}" name="txtApellidoCliente" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Correo Cliente:</strong></label>
                                    <input type="text" value="${cliente.correoCliente}" name="txtCorreoCliente" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Teléfono Cliente:</strong></label>
                                    <input type="text" value="${cliente.telefonoCliente}" name="txtTelefonoCliente" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Dirección Cliente:</strong></label>
                                    <input type="text" value="${cliente.direccionCliente}" name="txtDireccionCliente" class="form-control">
                                </div>
                                <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                                <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                            </form>
                        </div>  
                    </div>  
                </div>  

                <!-- Tabla -->  
                <div class="col-md-8">  
                    <div class="card">  
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Lista de Clientes</h5>  
                            <table class="table table-hover">  
                                <thead>
                                    <tr>
                                        <th>CODIGO</th>
                                        <th>Nombre</th>
                                        <th>Apellido</th>
                                        <th>Correo</th>
                                        <th>Teléfono</th>
                                        <th>Dirección</th>
                                        <th>ACCIONES</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="cliente" items="${clientes}">
                                        <tr>
                                            <td>${cliente.getCodigoCliente()}</td>
                                            <td>${cliente.getNombreCliente()}</td>
                                            <td>${cliente.getApellidoCliente()}</td>
                                            <td>${cliente.getCorreoCliente()}</td>
                                            <td>${cliente.getTelefonoCliente()}</td>
                                            <td>${cliente.getDireccionCliente()}</td>
                                            <td>
                                                <a class="btn btn-warning" href="Controlador?menu=Cliente&amp;accion=Editar&amp;codigoCliente=${cliente.getCodigoCliente()}">Editar</a>
                                                <a class="btn btn-danger" href="Controlador?menu=Cliente&amp;accion=Eliminar&amp;codigoCliente=${cliente.getCodigoCliente()}">Eliminar</a>
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

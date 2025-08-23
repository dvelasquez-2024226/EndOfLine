
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

        <div class="header-bar">Gestión de Publicidad</div>  

        <div class="container-fluid">  
            <div class="row">  
                <!-- Formulario -->  
                <div class="col-md-4 mb-4">  
                    <div class="card">  
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Datos de la Publicidad</h5>  
                            <form action="Controlador?menu=Publicidad" method="POST">
                                <div class="form-group">
                                    <label><strong>Fecha Inicio:</strong></label>
                                    <input type="date" value="${publicidad.fechaInicio}" name="txtFechaInicio" class="form-control" min="2025-01-01">
                                </div>
                                <div class="form-group">
                                    <label><strong>Fecha Fin:</strong></label>
                                    <input type="date" value="${publicidad.fechaFin}" name="txtFechaFin" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Costos:</strong></label>
                                    <input type="number" value="${publicidad.costos}" name="txtCostos" class="form-control" min="0">
                                </div>
                                <div class="form-group">
                                    <label><strong>Colaboradores:</strong></label>
                                    <input type="text" value="${publicidad.colaboradores}" name="txtColaboradores" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Codigo Carro:</strong></label>
                                    <input type="number" value="${publicidad.codigoCarro}" name="txtCodigoCarro" class="form-control" min="0">
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
                            <h5 class="card-title text-center text-primary">Lista de Publicidad</h5>  
                            <table class="table table-hover">  
                                <thead class="">
                                    <tr>
                                        <th>CODIGO</th>
                                        <th>Fecha Inicio</th>
                                        <th>Fecha Fin</th>
                                        <th>Costos</th>
                                        <th>Colaboradores</th>
                                        <th>Carro</th>
                                        <th>ACCIONES</th>
                                    </tr>
                                </thead>    
                                <tbody>
                                    <c:forEach var="publicidad" items="${publicidades}">


                                        <tr>
                                            <td>${publicidad.getCodigoPublicidad()}</td>
                                            <td>${publicidad.getFechaInicio()}</td>
                                            <td>${publicidad.getFechaFin()}</td>
                                            <td>${publicidad.getCostos()}</td>
                                            <td>${publicidad.getColaboradores()}</td>
                                            <td>${publicidad.getCodigoCarro()}</td>
                                            <td>
                                                <a class="btn btn-warning" href="Controlador?menu=Publicidad&accion=Editar&codigoPublicidad=${publicidad.getCodigoPublicidad()}">Editar</a>
                                                <a class="btn btn-danger " href="Controlador?menu=Publicidad&accion=Eliminar&codigoPublicidad=${publicidad.getCodigoPublicidad()}">Eliminar</a>
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
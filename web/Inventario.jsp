<%--
    Document : Inventario
    Created on : 19/08/2025, 14:04:15
    Author : informatica
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
html>  
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

    <div class="header-bar">Gestión de Inventario</div>  

    <div class="container-fluid">  
        <div class="row">  
            <!-- Formulario -->  
            <div class="col-md-4 mb-4">  
                <div class="card">  
                    <div class="card-body">  
                        <h5 class="card-title text-center text-primary">Datos del Inventario</h5>  
                        <form action="Controlador?menu=Inventario" method="POST">
                            <div class="form-group">
                                <label><strong>Stock:</strong></label>

                                <input type="number" value="${inventarioSeleccionado.stock}" name="txtStock" class="form-control" min="0">
                            </div>
                            <div class="form-group">
                                <label><strong>Fecha Ingreso:</strong></label>

                                <input type="date" value="${inventarioSeleccionado.fechaIngreso}" name="txtFechaIngreso" class="form-control">
                            </div>
                            <div class="form-group">
                                <label><strong>Fecha Salida:</strong></label>

                                <input type="date" value="${inventarioSeleccionado.fechaSalida}" name="txtFechaSalida" class="form-control">
                            </div>
                            <div class="form-group">
                                <label><strong>Carne:</strong></label>

                                <input type="number" value="${inventarioSeleccionado.carne}" name="txtCarne" class="form-control" min="0">
                            </div>

                            <input type="hidden" name="txtCodigoInventario" value="${inventarioSeleccionado.codigoInventario}">
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
                        <h5 class="card-title text-center text-primary">Lista de Inventario</h5>  
                        <table class="table table-hover">  
                            <thead class="">
                                <tr>
                                    <th>CODIGO</th>
                                    <th>Stock</th>
                                    <th>Fecha Ingreso</th>
                                    <th>Fecha Salida</th>
                                    <th>Carne</th>
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="item" items="${inventario}">
                                    <tr>
                                        <td>${item.getCodigoInventario()}</td>
                                        <td>${item.getStock()}</td>
                                        <td>${item.getFechaIngreso()}</td>
                                        <td>${item.getFechaSalida()}</td>
                                        <td>${item.getCarne()}</td>
                                        <td>
                                            <a class="btn btn-warning" href="Controlador?menu=Inventario&accion=Editar&codigoInventario=${item.getCodigoInventario()}">Editar</a>
                                            <a class="btn btn-danger " href="Controlador?menu=Inventario&accion=Eliminar&codigoInventario=${item.getCodigoInventario()}">Eliminar</a>
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
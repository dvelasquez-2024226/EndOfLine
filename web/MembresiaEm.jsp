<%-- 
    Document   : MembresiaEm
    Created on : 23 ago 2025, 11:36:26
    Author     : eilee
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
        <title>Gestión de Membresías</title>  
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

        <div class="header-bar">Gestión de Membresías</div>  

        <div class="container-fluid">  
            <div class="row">  
                <!-- Formulario -->  
                <div class="col-md-4 mb-4">  
                    <div class="card">  
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Datos de la Membresia</h5>  
                            <form action="Controlador?menu=Membresia" method="POST"}>   
                                <div class="form-group">  
                                    <label><strong>Tipo Membresía:</strong></label>  
                                    <input type="text" value="${membresia.getTipoMembresia()}" name="txtTipoMembresia" class="form-control">  
                                </div>  
                                <div class="form-group">  
                                    <label><strong>Fecha Pago:</strong></label>  
                                    <input type="text" value="${membresia.getFechaPago()}" name="txtFechaPago" class="form-control">  
                                </div> 
                                <div class="form-group">  
                                    <label><strong>Mensualidad</strong></label>  
                                    <input type="text" value="${membresia.getMensualidad()}" name="txtMensualidad" class="form-control">  
                                </div>
                                <div class="form-group">  
                                    <label><strong>Fecha Vencimiento:</strong></label>  
                                    <input type="text" value="${membresia.getFechaVencimiento()}" name="txtFechaVencimiento" class="form-control">  
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
                            <h5 class="card-title text-center text-primary">Lista de Membresías</h5>  
                            <table class="table table-hover">  
                                <thead>  
                                    <tr>  
                                        <th>Codigo</th>  
                                        <th>Tipo Membresía</th>  
                                        <th>Fecha Pago</th>  
                                        <th>Mensualidad</th> 
                                        <th>Fecha Vencimiento</th> 
                                    </tr>  
                                </thead>  
                                 <tbody>
                                    <c:forEach var="membresia" items="${membresias}">
                                        <tr>
                                            <td>${membresia.getCodigoMembresia()}</td>
                                            <td>${membresia.getTipoMembresia()}</td>
                                            <td>${membresia.getFechaPago()}</td>
                                            <td>${membresia.getMensualidad()}</td>
                                            <td>${membresia.getFechaVencimiento()}</td>

                                            <td>
                                                <a class="btn btn-warning" href="Controlador?menu=Membresia&accion=Editar&codigoMembresia=${membresia.getCodigoMembresia()}">Editar</a>
                                                <a class="btn btn-danger" href="Controlador?menu=Membresia&accion=Eliminar&codigoMembresia=${membresia.getCodigoMembresia()}">Eliminar</a>
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

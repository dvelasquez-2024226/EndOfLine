<%-- 
    Document   : Empleado
    Created on : 16 ago 2025, 15:19:41
    Author     : ANDRE
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
        <title>Facturas</title>  
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">  
        <link rel="stylesheet" href="styles/VistaEmpleados.css">   
    </head>  
    <body>  

        <div class="header-bar">Gestión de Empleados</div>  

        <div class="container-fluid">  
            <div class="row">
                <div class="col-md-8">  
                    <div class="card">  
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Lista de Empleados</h5>  
                            <table class="table table-hover">  
                                <thead class="">
                                    <tr>
                                        <th>CARNE</th>
                                        <th>NOMBRE</th>
                                        <th>APELLIDO</th>
                                        <th>CORREO</th>
                                        <th>TELEFONO</th>
                                        <th>FECHAINGRESO</th>
                                        <th>USUARIO</th>
                                        <th>CONTRASEÑA</th>
                                        <th>ACCIONES</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="empleado" items="${empleados}">
                                        <tr>
                                            <td>${empleado.getCarne()}</td>
                                            <td>${empleado.getNombreEmpleado()}</td>
                                            <td>${empleado.getApellidoEmpleado()}</td>
                                            <td>${empleado.getCorreoEmpleado()}</td>
                                            <td>${empleado.getTelefonoEmpleado()}</td>
                                            <td>${empleado.getFechaIngreso()}</td>
                                            <td>${empleado.getUsuarioEmpleado()}</td>
                                            <td>${empleado.getContraseniaEmpleado()}</td>
                                            <td>${empleado.getCodigoConcesionario()}</td>
                                            <td>
                                                <a class="btn btn-warning" href="Controlador?menu=Empleados&accion=Editar&carne=${empleado.getCarne()}">Editar</a>
                                                <a class="btn btn-danger " href="Controlador?menu=Empleados&accion=Eliminar&carne=${empleado.getCarne()}" onclick="return confirm('Esta seguro de eliminar el dato?')">Eliminar</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>  
                        </div>  
                    </div>  
                </div> 
                <div class="col-md-4 mb-4">  
                    <div class="card">  
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Datos del Empleado</h5>  
                            <form action="Controlador?menu=Empleados" method="POST">
                                <div class="form-group">
                                    <label><strong>Nombres:</strong></label>
                                    <input type="text" value="${empleado.getNombreEmpleado()}" name="txtNombreEmpleado" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Apellido</strong></label>
                                    <input type="text" value="${empleado.getApellidoEmpleado()}" name="txtApellidoEmpleado" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Correo</strong></label>
                                    <input type="text" value="${empleado.getCorreoEmpleado()}" name="txtCorreoEmpleado" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Telefono</strong></label>
                                    <input type="text" value="${empleado.getTelefonoEmpleado()}" name="txtTelefonoEmpleado" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>fechaIngreso</strong></label>
                                    <input type="date" value="${empleado.getFechaIngreso()}" name="txtFechaIngreso" class="form-control" >
                                </div>
                                <div class="form-group">
                                    <label><strong>Usuario:</strong></label>
                                    <input type="text" value="${empleado.getUsuarioEmpleado()}" name="txtUsuarioEmpleado" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Contraseña</strong></label>
                                    <input type="text" value="${empleado.getContraseniaEmpleado()}" name="txtContraseniaEmpleado" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>CodConcesionario</strong></label>
                                    <input type="text" value="${empleado.getCodigoConcesionario()}" name="txtCodigoConcesionario" class="form-control">
                                </div>
                                <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                                <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                            </form>    
                        </div>  
                    </div>  
                </div>
            </div>  
        </div>  
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>  
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>  
    </body>  
</html>
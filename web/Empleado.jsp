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
        <title>Empleado</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
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

            <div class="col-sm-8">
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
                                        <a class="btn btn-danger " href="Controlador?menu=Empleados&accion=Eliminar&carne=${empleado.getCarne()}">Eliminar</a>
                                    </td>
                                </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
           

        </div>



        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Gestión de Servicios</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Registro de Servicios</h2>
    
    <form action="Controlador?menu=Servicio" method="POST" class="border p-4 rounded bg-light">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Fecha de Ingreso</label>
                <input type="date" name="txtFechaIngreso" value="${Servicio.fechaIngreso}" class="form-control" required>
            </div>
            <div class="form-group col-md-6">
                <label>Fecha de Salida</label>
                <input type="date" name="txtFechaSalida" value="${Servicio.fechaSalida}" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label>Detalles del Servicio</label>
            <textarea name="txtDetalles" class="form-control" rows="2">${Servicio.detalles}</textarea>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Tipo de Servicio</label>
                <input type="text" name="txtTipoServicio" value="${Servicio.tipoServicios}" class="form-control">
            </div>
            <div class="form-group col-md-3">
                <label>Carné del Empleado</label>
                <input type="text" name="txtEmpleados_Carne" value="${Servicio.empleados_carne}" class="form-control">
            </div>
            <div class="form-group col-md-3">
                <label>No. Taller</label>
                <input type="text" name="txtTaller_Notaller" value="${Servicio.taller_notaller}" class="form-control">
            </div>
        </div>
        <div class="text-right">
            <button type="submit" name="accion" value="Agregar" class="btn btn-primary">Agregar</button>
            <button type="submit" name="accion" value="Actualizar" class="btn btn-success">Actualizar</button>
        </div>
    </form>

    <hr class="my-5">

    <h4 class="mb-3">Listado de Servicios</h4>
    <table class="table table-bordered table-hover">
        <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Ingreso</th>
            <th>Salida</th>
            <th>Detalles</th>
            <th>Tipo</th>
            <th>Carné</th>
            <th>Taller</th>
            <th>Acciones</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="servicio" items="${servicios}">
            <tr>
                <td>${servicio.noServicios}</td>
                <td>${servicio.fechaIngreso}</td>
                <td>${servicio.fechaSalida}</td>
                <td>${servicio.detalles}</td>
                <td>${servicio.tipoServicios}</td>
                <td>${servicio.empleados_carne}</td>
                <td>${servicio.taller_notaller}</td>
                <td>
                    <a href="Controlador?menu=Servicio&accion=Editar&noServicio=${servicio.noServicios}" class="btn btn-warning btn-sm">Editar</a>
                    <a href="Controlador?menu=Servicio&accion=Eliminar&noServicio=${servicio.noServicios}" class="btn btn-danger btn-sm">Eliminar</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

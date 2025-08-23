<%-- 
    Document   : Concesionario
    Created on : 22/08/2025, 09:43:22
    Author     : Sofia
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Concesionario</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
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

 <div class="d-flex">
<div class="card col-sm-4">
<div class="card-body">
<form action="Controlador?menu=Concesionario" method="POST">
<div class="form-group">
<label><strong>Nombre:</strong> </label>
<input type="text" value="${concesionario.getNombreConcesionario()}" name="txtNombreConcesionario" class="form-control">
</div>
<div class="form-group">
<label><strong>Telefono:</strong> </label>
<input type="text" value="${concesionario.getTelefonoConcesionario()}" name="txtTelefonoConcesionario" class="form-control">
</div>
<div class="form-group">
<label><strong>Correo:</strong> </label>
<input type="text" value="${concesionario.getCorreoConcesionario()}" name="txtCorreoConcesionario" class="form-control">
</div>
<div class="form-group">
<label><strong>Direccion:</strong> </label>
<input type="text" value="${concesionario.getDireccionConcesionario()}" name="txtDireccionConcesionario" class="form-control">
</div>
<div class="form-group">
<label><strong>Codigo Inventario</strong> </label>
<input type="text" value="${concesionario.getCodigoInventario()}" name="txtCodigoInventario" class="form-control">
<input type="submit" name="accion" value="Agregar" class="btn btn-info">
<input type="submit" name="accion" value="Actualizar" class="btn btn-success">
</div>
</form>
</div>
</div>
<div>
</tbody>
</table>
</div>
 <!-- Tabla -->  
                <div class="col-md-8">  
                    <div class="card">  
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Lista de Empleados</h5>  
                            <table class="table table-hover">  
                                <thead>  
                                    <tr>
<th>CODIGO CONCESIONARIO</th>                                            
<th>NOMBRE</th>
<th>TELEFONO</th>
<th>CORREO</th>
<th>DIRECCION</th>
<th>CODIGO INVENTARIO</th>

</tr>
</thead>
<tbody>
<c:forEach var="concesionario" items="${concesionarios}">
<tr>
<td>${concesionario.getCodigoConcesionario()}</td>    
<td>${concesionario.getNombreConcesionario()}</td>
<td>${concesionario.getTelefonoConcesionario()}</td>
<td>${concesionario.getCorreoConcesionario()}</td>
<td>${concesionario.getDireccionConcesionario()}</td>
<td>${concesionario.getCodigoInventario()}</td>
<td>
<a class="btn btn-warning" href="Controlador?menu=Concesionario&accion=Editar&codigoConcesionario=${concesionario.getCodigoConcesionario()}">Editar</a>
<a class="btn btn-danger" href="Controlador?menu=Concesionario&accion=Eliminar&codigoConcesionario=${concesionario.getCodigoConcesionario()}">Eliminar</a>
</td>
</tr>
        </div>
 </c:forEach>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</body>
</html>
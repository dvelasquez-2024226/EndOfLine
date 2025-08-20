<%-- 
    Document   : ProveedorNV
    Created on : 20 ago 2025, 00:43:45
    Author     : diego
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proveedor</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=ProveedorNV" method="POST">
                        <div class="form-group">  
                            <label><strong>Nombre Proveedor:</strong></label>  
                            <input type="text" value="${proveedor.getNombreProveedor()}" name="txtNombreProveedor" class="form-control">  
                        </div>  
                        <div class="form-group">  
                            <label><strong>Apellido Proveedor</strong></label>  
                            <input type="text" value="${proveedor.getApellidoProveedor()}" name="txtApellidoProveedor" class="form-control">  
                        </div>  
                        <div class="form-group">  
                            <label><strong>Correo Proveedor:</strong></label>  
                            <input type="text" value="${proveedor.getCorreoProveedor()}" name="txtCorreoProveedor" class="form-control">  
                        </div>  
                        <div class="form-group">  
                            <label><strong>Telefono Proveedor:</strong></label>  
                            <input type="text" value="${proveedor.getTelefonoProveedor()}" name="txtTelefonoProveedor" class="form-control">  
                        </div>  
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info">  
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success"> 
                    </form>
                </div>
            </div>

            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead class="thead-dark">
                        <tr>  
                            <th>Codigo</th>  
                            <th>Nombre</th>  
                            <th>Apellido</th>  
                            <th>Correo</th>  
                            <th>Telefono</th> 
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="proveedor" items="${proveedores}">
                        <tr>
                            <td>${proveedor.getCodigoProveedor()}</td>
                            <td>${proveedor.getNombreProveedor()}</td>
                            <td>${proveedor.getApellidoProveedor()}</td>
                            <td>${proveedor.getCorreoProveedor()}</td>
                            <td>${proveedor.getTelefonoProveedor()}</td>
                            <td>
                                <a class="btn btn-warning" href="Controlador?menu=ProveedorNV&accion=Editar&codigoProveedor=${proveedor.getCodigoProveedor()}">Editar</a>
                                <a class="btn btn-danger" href="Controlador?menu=ProveedorNV&accion=Eliminar&codigoProveedor=${proveedor.getCodigoProveedor()}">Eliminar</a>
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

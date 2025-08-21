<%-- 
    Document   : Cliente
    Created on : 20 ago 2025, 14:58:08
    Author     : boror
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>End Of Line</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&amp;display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&amp;display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
   
        <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>
    </head>

    <body>

        <main>
            <body>
                <div class="d-flex">
                    
                    <div class="card col-sm-4">
                        <div class="card-body">
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

                    <div class="col-sm-8">
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
        </main>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

    </body>
</html>

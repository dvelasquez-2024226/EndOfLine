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
        <title>Gestión de Proveedor</title>  
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">  

        <style>
            body {
                background: #f4f6f9;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }
            .header-bar {
                background-color: #1a237e;
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

        <div class="header-bar">Gestión de Proveedor</div>  

        <div class="container-fluid">
            <div class="row">  
                <div class="col-md-4 mb-4">  
                    <div class="card">  
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Datos del Proveedor</h5>  
                            <form action="Controlador?menu=ProveedorNV" method="POST"}>  
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
                                <div class="d-flex justify-content-between">  
                                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">  
                                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success">  
                                </div>  
                            </form>  
                        </div>  
                    </div>  
                </div>  

                <div class="col-md-8">  
                    <div class="card">  
                        <c:if test="${not empty error}">
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                ${error}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        </c:if>

                        <c:if test="${not empty exito}">
                            <div class="alert alert-success alert-dismissible fade show" role="alert">
                                ${exito}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        </c:if>
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Lista de Proveedor</h5>  
                            <table class="table table-hover">  
                                <thead>  
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
                </div>  
            </div>  
        </div>  

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>  
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script> 
        <script>
            document.querySelector("form").addEventListener("submit", function (evento) {

                let accion = evento.submitter.value;
                let mensaje;

                if (accion === "Agregar") {
                    mensaje = "¿Está seguro de que desea AGREGAR este proveedor?";
                } else {
                    mensaje = "¿Está seguro de que desea ACTUALIZAR este proveedor?";
                }

                if (!confirm(mensaje)) {
                    evento.preventDefault();
                }
            });

            document.querySelectorAll(".btn-danger").forEach(boton => {
                boton.addEventListener("click", function (evento) {
                    if (!confirm("¿Está seguro de que desea ELIMINAR este proveedor?")) {
                        evento.preventDefault();
                    }
                });
            });
        </script>
    </body>  
</html>

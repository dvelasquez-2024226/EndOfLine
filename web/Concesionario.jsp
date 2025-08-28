<%-- 
    Document   : Concesionario
    Created on : 22/08/2025, 09:43:22
    Author     : Otto
--%>

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
                background-color: #2f344f;
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
                color: #38446c;
            }
            .btn-info {
                background-color: #683653;
                border: none;
            }
            .btn-info:hover {
                background-color: #0d164e;
            }
            .table thead {
                background-color: #2f344f;
                color: white;
            }
            .table tbody tr:hover {
                background-color: #e3e6f0;
            }
        </style>  
    </head>  
    <body>  

        <div class="header-bar">Gestión de concesionario</div>  

        <div class="container-fluid">  
            <div class="row">  
                <!-- Formulario -->  
                <div class="col-md-4 mb-4">  
                    <div class="card">  
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Datos del concesionario</h5>  
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
                </div>  

                <!-- Tabla -->  
                <div class="col-md-8">  
                    <div class="card">  
                        <div class="card-body">  
                            <h5 class="card-title text-center text-primary">Lista de concesionarios</h5>  
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
                    mensaje = "¿Está seguro de que desea AGREGAR un nuevo dato?";
                } else {
                    mensaje = "¿Está seguro de que desea ACTUALIZAR el dato?";
                }
 
                if (!confirm(mensaje)) {
                    evento.preventDefault();
                }
            });
 
            document.querySelectorAll(".btn-danger").forEach(boton => {
                boton.addEventListener("click", function (evento) {
                    if (!confirm("¿Está seguro de que desea ELIMINAR el dato?")) {
                        evento.preventDefault();
                    }
                });
            });
</script>
    </body>  
</html>
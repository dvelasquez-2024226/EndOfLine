<%--
    Document : Inventario
    Created on : 19/08/2025, 14:04:15
    Author : informatica
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

        <style>
            body {
                background: #f4f6f9;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }
            .header-bar {
                background-color: #a0a5b2;
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
                background-color: #2f344f;
                border: none;
            }
            .btn-info:hover {
                background-color: #a0a5b2;
            }
            .table thead {
                background-color: #2f344f;
                color: white;
            }
            .table tbody tr:hover {
                background-color: #a0a5b2;
            }
        </style>  

    </head>
    <body>
        <div class="header-bar">Gestión de Inventario</div>  
        <div class="container-fluid">

            <div class="card">  
                <div class="d-flex">
                    <div class="card col-sm-4">
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

                    <div class="col-sm-8">
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
                        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
                        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>

                        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>  
                        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>

                        <script>
                            document.querySelector("form").addEventListener("submit", function (evento) {
                                let accion = evento.submitter.value;
                                let mensaje;

                                if (accion === "Agregar") {
                                    mensaje = "¿Está seguro de que desea AGREGAR este inventario?";
                                } else {
                                    mensaje = "¿Está seguro de que desea ACTUALIZAR este inventario?";
                                }

                                if (!confirm(mensaje)) {
                                    evento.preventDefault();
                                }
                            });

                            document.querySelectorAll(".btn-danger").forEach(boton => {
                                boton.addEventListener("click", function (evento) {
                                    if (!confirm("¿Está seguro de que desea ELIMINAR este inventario?")) {
                                        evento.preventDefault();
                                    }
                                });
                            });
                        </script>

                        </body>
                        </html>
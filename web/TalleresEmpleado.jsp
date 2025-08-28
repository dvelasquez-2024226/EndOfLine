<%-- 
    Document   : Talleres
    Created on : 20/08/2025, 14:44:02
    Author     : informatica
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Talleres</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
              integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
              crossorigin="anonymous">
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
            .btn-success {
                border: none;
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
        <div class="d-flex">
            <!-- Formulario -->
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=Talleres" method="POST">
                        <div class="form-group">
                            <label><strong>Ubicación:</strong></label>
                            <input type="text" value="${taller.getUbicacion()}" name="txtUbicacion" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Repuestos:</strong></label>
                            <input type="text" value="${taller.getRepuestos()}" name="txtRepuestos" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Herramientas:</strong></label>
                            <input type="text" value="${taller.getHerramientas()}" name="txtHerramientas" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Estado del carro:</strong></label>
                            <input type="text" value="${taller.getEstadoCarro()}" name="txtEstadoCarro" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                    </form>
                </div>
            </div>

            <!-- Tabla -->
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>NoTaller</th>
                            <th>Ubicación</th>
                            <th>Repuestos</th>
                            <th>Herramientas</th>
                            <th>Estado Carro</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="taller" items="${talleres}">
                            <tr>
                                <td>${taller.getNotaller()}</td>
                                <td>${taller.getUbicacion()}</td>
                                <td>${taller.getRepuestos()}</td>
                                <td>${taller.getHerramientas()}</td>
                                <td>${taller.getEstadoCarro()}</td>
                                <td>
                                    <a class="btn btn-warning" href="Controlador?menu=Talleres&accion=Editar&codigoTaller=${taller.getNotaller()}">Editar</a>

                                    <a class="btn btn-danger" href="Controlador?menu=Talleres&accion=Eliminar&codigoTaller=${taller.getNotaller()}">Eliminar</a>

                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
                integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
                integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
        crossorigin="anonymous"></script>
    </body>
</html>


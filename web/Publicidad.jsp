
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
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
   
        <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>


    </head>

    <body>


        <main>
            <body>
                <div class="d-flex">
                    <div class="card col-sm-4">
                        <div class="card-body">
                            <form action="Controlador?menu=Publicidad" method="POST">
                                <div class="form-group">
                                    <label><strong>Fecha Inicio:</strong></label>
                                    <input type="date" value="${publicidad.fechaInicio}" name="txtFechaInicio" class="form-control" min="2025-01-01">
                                </div>
                                <div class="form-group">
                                    <label><strong>Fecha Fin:</strong></label>
                                    <input type="date" value="${publicidad.fechaFin}" name="txtFechaFin" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Costos:</strong></label>
                                    <input type="number" value="${publicidad.costos}" name="txtCostos" class="form-control" min="0">
                                </div>
                                <div class="form-group">
                                    <label><strong>Colaboradores:</strong></label>
                                    <input type="text" value="${publicidad.colaboradores}" name="txtColaboradores" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><strong>Codigo Carro:</strong></label>
                                    <input type="number" value="${publicidad.codigoCarro}" name="txtCodigoCarro" class="form-control" min="0">
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
                                    <th>CODIGO</th>
                                    <th>Fecha Inicio</th>
                                    <th>Fecha Fin</th>
                                    <th>Costos</th>
                                    <th>Colaboradores</th>
                                    <th>Carro</th>
                                    <th>ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody>                              
                            <c:forEach var="publicidad" items="${publicidades}">


                                <tr>
                                    <td>${publicidad.getCodigoPublicidad()}</td>
                                    <td>${publicidad.getFechaInicio()}</td>
                                    <td>${publicidad.getFechaFin()}</td>
                                    <td>${publicidad.getCostos()}</td>
                                    <td>${publicidad.getColaboradores()}</td>
                                    <td>${publicidad.getCodigoCarro()}</td>
                                    <td>
                                        <a class="btn btn-warning" href="Controlador?menu=Publicidad&accion=Editar&codigoPublicidad=${publicidad.getCodigoPublicidad()}">Editar</a>
                                        <a class="btn btn-danger " href="Controlador?menu=Publicidad&accion=Eliminar&codigoPublicidad=${publicidad.getCodigoPublicidad()}">Eliminar</a>
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

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Servicio</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=Servicio" method="POST">
                        <div class="form-group">
                            <label><strong>FECHA_ING</strong></label>
                            <input type="date" value="${Servicio.getFechaIngreso()}" name="txtFechaIngreso" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>DETALLE</strong></label>
                            <input type="text" value="${Servicio.getDetalles()}" name="txtDetalles" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>TIPO</strong></label>
                            <input type="text" value="${Servicio.getTipoServicio()}" name="txtTipoServicio" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>FECHA_SAL</strong></label>
                            <input type="date" value="${Servicio.getFechaSalida()}" name="txtFechaSalida" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>CARNE</strong></label>
                            <input type="text" value="${Servicio.getCarne()}" name="txtEmpleados_Carne" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>TALLER</strong></label>
                            <input type="text" value="${Servicio.getNotaller()}" name="txtTaller_Notaller" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                        <input type="submit" name=accion" value="Actualizar" class="btn btn-success">   
                    </form>
                </div>
            </div>
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            
                            <th>No Servicio</th>
                            <th>Fecha Ingreso</th>
                            <th>Detalles</th>
                            <th>Tipo</th>
                            <th>Fecha Salida</th>
                            <th>Carne</th>
                            <th>Numero TALLER</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>    
                        <c:forEach var="servicio" items="${servicios}">
                            <tr>
                                <td>${servicio.getNoServicio()}</td>
                                <td>${servicio.getFechaIngreso()}</td>
                                <td>${servicio.getDetalles()}</td>
                                <td>${servicio.getTipoServicio()}</td>
                                <td>${servicio.getFechaSalida()}</td>
                                <td>${servicio.getCarne()}</td>
                                <td>${servicio.getNotaller()}</td>
                                <td>
                                    <a class="btn btn-warning" href="Controlador?menu=Servicios&accion=Editar&noServicio=${Servicios.getNoServicio()}">Editar</a>
                                    <a class="btn btn-danger" href="Controladot?menu=Servicios&accion=Eliminar&noServicio=${Servicios.getNoServicio()}">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table> 
            </div>
            
            
        </div>
        
        
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script></body>
    </body>
</html>

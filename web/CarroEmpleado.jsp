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
        <div class="d-flex">
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Marca</th>
                            <th>Modelo</th>
                            <th>Color</th>
                            <th>Año</th>
                            <th>Estado</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="carro" items="${carros}">
                            <tr>
                                <td>${carro.getCodigoCarro()}</td>
                                <td>${carro.getMarca()}</td>
                                <td>${carro.getModelo()}</td>
                                <td>${carro.getColor()}</td>
                                <td>${carro.getAnio()}</td>
                                <td>${carro.getEstado()}</td>
                                <td>
                                    <a class="btn btn-warning" href="Controlador?menu=Carro&accion=Editar&codigoCarro=${carro.getCodigoCarro()}">Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=Carro&accion=Eliminar&codigoCarro=${carro.getCodigoCarro()}">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=Carro" method="POST">
                        <div class="form-group">
                            <label><strong>Marca:</strong></label>
                            <input type="text" value="${carro.getMarca()}" name="txtMarca" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Modelo:</strong></label>
                            <input type="text" value="${carro.getModelo()}" name="txtModelo" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Color:</strong></label>
                            <input type="text" value="${carro.getColor()}" name="txtColor" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Año:</strong></label>
                            <input type="text" value="${carro.getAnio()}" name="txtAnio" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Estado:</strong></label>
                            <input type="text" value="${carro.getEstado()}" name="txtEstado" class="form-control">
                        </div>
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                    </form>
                </div> 
            </div>

        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>

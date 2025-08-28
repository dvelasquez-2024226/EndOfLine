<%-- 
    Document   : Carrito
    Created on : 23 ago 2025, 9:32:54
    Author     : diego
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carrito de compras</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="styles/CarritoCompras.css">
    </head>
     <body>
        <h3>Carrito de Compras</h3>
        <div class="row">
            <!-- Carrito -->
            <div class="col-8">
                <table>
                    <thead>
                        <tr>
                            <th>ITEM</th>
                            <th>CLAUSULA</th>
                            <th>PRECIO</th>
                            <th>CANTIDAD</th>
                            <th>SUBTOTAL</th>
                            <th>ACCIÓN</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="car" items="${carrito}">
                            <tr>
                                <td>${car.getItem()}</td>
                                <td>${car.getCalusula()}</td>
                                <td>${car.getPrecio()}</td>
                                <td>${car.getCantidad()}</td>
                                <td>${car.getSubTotal()}</td>
                                <td>
                                    <a href="Controlador?menu=Carrito&accion=Delete&codCon=${car.getCodigoContrato()}" id="btnDelete">Eliminar</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>

            <!-- Card de compra -->
            <div class="col-4">
                <div class="card">
                    <div class="card-header">
                        <h3>Generar Compra</h3>
                    </div>
                    <div class="card-body">
                        <label>Subtotal</label>
                        <input type="text" value="${totalPagar}0" readonly class="form-control">   
                        <label>Descuento</label>
                        <input type="text" readonly class="form-control">
                        <label>Total a Pagar</label>
                        <input type="text" value="${totalPagar}0" readonly class="form-control">
                    </div>
                    <div class="card-footer">
                        <a href="" class="btn btn-info">Realizar Pago</a>
                        <a href="" class="btn btn-danger">Generar Compra</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

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
        <style>
            body {
                background-color: #2f344f;
                color: #fbc1ab;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            h3 {
                color: #d45d61;
                font-weight: bold;
            }

            .table-hover thead {
                background-color: #9b253d;
                color: #fbc1ab;
            }

            .table-hover tbody tr:hover {
                background-color: #38446c;
                color: #fbc1ab;
            }

            .card {
                background-color: #11101b;
                color: #a0a5b2;
                border: 1px solid #883b53;
            }

            .card-header {
                background-color: #883b53;
                color: #fbc1ab;
                font-weight: bold;
            }

            .form-control {
                background-color: #2f344f;
                color: #fbc1ab;
                border: 1px solid #a0a5b2;
            }

            .btn-info {
                background-color: #38446c;
                border-color: #38446c;
                color: #fbc1ab;
            }

            .btn-danger {
                background-color: #9b253d;
                border-color: #9b253d;
                color: #fbc1ab;
            }

            a#btnDelete {
                color: #d45d61;
                font-weight: bold;
                text-decoration: none;
            }

            a#btnDelete:hover {
                color: #fbc1ab;
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <div class="container mt-4">
            <h3>Carrito de Compras</h3>
            <br>
            <div class="row">
                <div class="col-sm-4">
                    <div calss="card">
                        <div class="card-header">
                            <h3>Generar Compra</h3>
                        </div>
                        <div class="card-body">
                            <label>Subtotal</label>
                            <input type="text" value="${totalPagar}0" readonly="" class="form-control">   
                            <label>Descuento</label>
                            <input type="text" readonly="" class="form-control">
                            <label>Total a Pagar</label>
                            <input type="text" value="${totalPagar}0" readonly="" class="form-control">
                        </div>
                        <div class="card-footer">
                            <a href="" class="btn btn-info btn-block">Realiar Pago</a>
                            <a href="" class="btn btn-danger btn-block">Generar Compra</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ITEM</th>
                                <th>CLAUSULA</th>
                                <th>PRECIO</th>
                                <th>CANTIDAD</th>
                                <th>SUBTOTAL</th>
                                <th>ACCION</th>
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
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>

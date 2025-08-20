<%-- 
    Document   : Factura
    Created on : 19 ago 2025, 19:36:38
    Author     : diego
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Factura</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <div class="d-flex">
            <div class="card col-sm-4">
                <div class="card-body">
                    <form action="Controlador?menu=Factura" method="POST">
                        <div class="form-group">
                            <label><strong>Fecha de Emision:</strong></label>
                            <input type="date" value="${factura.getFechaEmision()}" name="txtFechaEmision" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Total:</strong></label>
                            <input type="text" value="${factura.getTotal()}" name="txtTotal" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Estado:</strong></label>
                            <input type="text" value="${factura.getEstado()}" name="txtEstado" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Metodo de Pago:</strong></label>
                            <input type="text" value="${factura.getMetodoPago()}" name="txtMetodoPago" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Codigo del Detalle Factura:</strong></label>
                            <input type="text" value="${factura.getCodigoDetalleFactura()}" name="txtCodigoDetalleFactura" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Carne de Empleado:</strong></label>
                            <input type="text" value="${factura.getCarne()}" name="txtCarne" class="form-control">
                        </div>
                        <div class="form-group">
                            <label><strong>Codigo del Clietne</strong></label>
                            <input type="text" value="${factura.getCodigoCliente()}" name="txtCodigoCliente" class="form-control">
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
                            <th>FECHA DE EMISION</th>
                            <th>TOTAL</th>
                            <th>ESTADO</th>
                            <th>METODO DE PAGO</th>
                            <th>CODIGO DETALLE FACTURA</th>
                            <th>CARNE</th>
                            <th>CODIGO CLIENTE</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="factura" items="${facturas}">
                            <tr>
                                <td>${factura.getCodigoFactura()}</td>
                                <td>${factura.getFechaEmision()}</td>
                                <td>${factura.getTotal()}</td>
                                <td>${factura.getEstado()}</td>
                                <td>${factura.getMetodoPago()}</td>
                                <td>${factura.getCodigoDetalleFactura()}</td>
                                <td>${factura.getCarne()}</td>
                                <td>${factura.getCodigoCliente()}</td>
                                <td>
                                    <a class="btn btn-warning" href="Controlador?menu=Factura&accion=Editar&codigoFactura=${factura.getCodigoFactura()}">Editar</a>
                                    <a class="btn btn-danger" href="Controlador?menu=Factura&accion=Eliminar&codigoFactura=${factura.getCodigoFactura()}"> Eliminar</a>
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
    </body>
</html>

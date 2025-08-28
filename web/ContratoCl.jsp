<%-- 
    Document   : ContratoCl
    Created on : 23 ago 2025, 9:56:22
    Author     : diego
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contrato</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="styles/Contratos.css">
    </head>
    <body>
        <div class="container">
            <h3>Contratos disponibles</h3>
            <div class="row">
                <c:forEach var="cont" items="${contratos}">
                    <div class="card">
                        <div class="card-header">
                            <label>${cont.getPrecio()}</label>
                        </div>
                        <div class="card-body">
                            <label>${cont.getClausula()}</label>
                        </div>
                        <div class="card-footer">
                            <label>${cont.getFechaInicio()} - ${cont.getFechaFin()}</label>
                            <div>
                                <a href="Controlador?menu=ContratoCl&accion=AgregarCarrito&codCon=${cont.getCodigoContrato()}" class="btn btn-outline-info">Agregar al carrito</a>
                                <a href="Controlador?menu=ContratoCl&accion=Comprar&codCon=${cont.getCodigoContrato()}" class="btn btn-danger">Comprar</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </body>
</html>

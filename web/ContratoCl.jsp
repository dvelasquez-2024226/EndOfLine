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
        <style>
            body {
                background-color: #2f344f;
                color: #fbc1ab;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            h3 {
                color: #d45d61;
                font-weight: bold;
                text-align: center;
                margin-bottom: 2rem;
            }

            .card {
                background-color: #11101b;
                color: #a0a5b2;
                border: 1px solid #883b53;
                margin-bottom: 2rem;
                box-shadow: 0 4px 8px rgba(0,0,0,0.3);
                transition: transform 0.2s ease;
            }

            .card:hover {
                transform: scale(1.02);
            }

            .card-header {
                background-color: #9b253d;
                color: #fbc1ab;
                font-weight: bold;
                padding: 0.75rem 1rem;
                text-align: center;
            }

            .card-body {
                padding: 1rem;
                background-color: #2f344f;
                color: #fbc1ab;
            }

            .card-footer {
                background-color: #38446c;
                padding: 1rem;
                text-align: center;
                color: #fbc1ab;
            }

            .btn-outline-info {
                border-color: #a0a5b2;
                color: #a0a5b2;
                margin-right: 0.5rem;
            }

            .btn-outline-info:hover {
                background-color: #a0a5b2;
                color: #2f344f;
            }

            .btn-danger {
                background-color: #d45d61;
                border-color: #d45d61;
                color: #fbc1ab;
            }

            .btn-danger:hover {
                background-color: #9b253d;
                border-color: #9b253d;
            }

            .container {
                padding-top: 2rem;
            }
        </style>
    </head>
    <body>
        <div class="container mt-4">
            <h3>Contratos disponibles</h3>
            <div class="row">
                <c:forEach var="cont" items="${contratos}">
                    <div calss="card col-sm-4">
                        <div calss="card">
                            <div clas="card-header">
                                <label>${cont.getPrecio()}</label>
                            </div>
                            <div clas="card-body">
                                <label>${cont.getClausula()}</label>
                            </div>
                            <div clas="card-footer text-center">
                                <label>${cont.getFechaInicio()}  -</label>
                                <label>${cont.getFechaFin()}</label>
                                <div>
                                    <a href="Controlador?menu=ContratoCl&accion=AgregarCarrito&codCon=${cont.getCodigoContrato()}" class="btn btn-outline-info">Agregar al carrito</a>
                                    <a href="Controlador?menu=ContratoCl&accion=Comprar&codCon=${cont.getCodigoContrato()}" class="btn btn-danger">Comprar</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>

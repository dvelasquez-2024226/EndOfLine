<%-- 
    Document   : ProveedorVC
    Created on : 20 ago 2025, 00:49:58
    Author     : diego
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lista de Proveedores</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" crossorigin="anonymous">

        <style>
            body {
                background: #f4f6f9;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                color: #212529;
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

            .cards-container {
                display: grid;
                grid-template-columns: repeat(5, 1fr);
                gap: 20px;
                padding: 20px;
            }

            .proveedor-card {
                background: white;
                border-radius: 12px;
                padding: 20px;
                text-align: center;
                box-shadow: 0 4px 12px rgba(0,0,0,0.1);
                border: 1px solid #e3e6f0;
                transition: 0.3s;
            }

            .proveedor-card:hover {
                background: #e3e6f0;
                transform: scale(1.05);
            }

            .proveedor-card h5 {
                color: #1a237e;
                font-size: 1.1rem;
                margin-bottom: 8px;
            }

            .proveedor-card p {
                margin: 0;
                font-size: 0.9rem;
                color: #555;
            }
        </style>
    </head>
    <body>
        <div class="header-bar">Proveedores</div>

        <div class="cards-container">
            <c:forEach var="prov" items="${proveedores}">
                <div class="proveedor-card">
                    <h5>${prov.getNombreProveedor()} ${prov.getApellidoProveedor()}</h5>
                    <p><strong>Correo:</strong> ${prov.getCorreoProveedor()}</p>
                    <p><strong>Teléfono:</strong> ${prov.getTelefonoProveedor()}</p>
                </div>
            </c:forEach>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>
    </body>
</html>

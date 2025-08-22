<%-- 
    Document   : InventarioCl
    Created on : 20/08/2025, 10:21:33
    Author     : Informatia
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Inventario para clientes</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" crossorigin="anonymous">

        <style>
            body {
                background: #f4f6f9;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: transparent;
                color: #212529;
            }

            .header-bar {
                background-color: #1a237e;
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

            .inventario-card {
                background: white;
                border-radius: 10px;
                padding: 22px;
                text-align: center;
                box-shadow: 0 4px 12px rgba(0,0,0,0.1);
                border: 5px solid #e3e6f0;
                transition: 0.3s;
            }

            .inventario-card:hover {
                background: #e3e6f0;
                transform: scale(1.10);
            }

            .inventario-card h5 {
                color: #1a237e;
                font-size: 1.1rem;
                margin-bottom: 8px;
            }

            .inventario-card p {
                margin: 2;
                font-size: 0.9rem;
                color: #555;
            }
        </style>
    </head>


    <body>
        <div class="header-bar">Inventarios para el cliente</div>

        <div class="cards-container">
                        <c:forEach var="item" items="${inventario}">
                <div class="inventario-card">
                   <h5>Stock: ${item.getStock()}</h5>
                   <p><strong>Fecha de Ingreso:</strong> ${item.getFechaIngreso()}</p>
                   <p><strong>Fecha de Salida:</strong> ${item.getFechaSalida()}</p>
                   <p><strong>Carne:</strong> ${item.getCarne()}</p>
                </div>

            </c:forEach>
                    </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"></script>y>
</html>

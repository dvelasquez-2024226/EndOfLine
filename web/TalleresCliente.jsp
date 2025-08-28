<%-- 
    Document   : TalleresCliente
    Created on : 27/08/2025, 11:50:35 p. m.
    Author     : emili
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Directorio de Talleres</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="container">
        <h1>Directorio de Talleres</h1>

        <!-- Recorrer talleres dinámicamente -->
        <c:forEach var="taller" items="${talleres}">
            <div class="taller-card ${taller.colorCard}">
                <div class="taller-info">
                    <h2>Taller #${taller.notaller}</h2>
                    <p><strong>Ubicación:</strong> ${taller.ubicacion}</p>
                    <p><strong>Repuestos:</strong> ${taller.repuestos}</p>
                    <p><strong>Herramientas:</strong> ${taller.herramientas}</p>
                    <p><strong>Estado del Carro:</strong> ${taller.estadoCarro}</p>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
</html>

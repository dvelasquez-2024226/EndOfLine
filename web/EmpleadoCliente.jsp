<%-- 
    Document   : EmpleadoCliente
    Created on : 23 ago 2025, 15:43:22
    Author     : ANDRE
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles/EmpleadoCliente.css">

    </head>
    <body>
        <h1 Style='text-align: center'>Conoce al equipo de desarollo técnico</h1>
        <div class="Empleados">
            <c:forEach var="empleado" items="${empleados}">
                <div class="empleado"> 
                    <img  src="ControlerIMG?carne=${empleado.getCarne()}" alt="usuario" width="auto" height="200px" onerror="this.onerror=null; this.src='image/Usuario.png';">
                    <h1>${empleado.getNombreEmpleado()}</h1>
                    <p>${empleado.getApellidoEmpleado()}</p>
                </div>
            </c:forEach>


        </div>
    </body>
</html>

<%-- 
    Document   : MembresiaCliente
    Created on : 23 ago 2025, 11:24:56
    Author     : eilee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles/Membresia.css">
    <title>Membresías</title>
</head>
    <body>
        <div class="container">
            <header class="encabezado">
                <h1>END OF LINE</h1>
                <p>Todas las membresías tienen acceso a hacer cualquier tipo de compra y subastas de autos de cualquier modelo y mucho más en END OF LINE.</p>
            </header>

            <section class="membresias">
                <c:forEach var="m" items="${membresia}">
                    <div class="membresia-card">
                        <h3>${m.tipoMembresia}</h3>
                        
                        <button onclick="mostrarInfo('${m.tipoMembresia}','${m.fechaPago}','${m.mensualidad}','${m.fechaVencimiento}')">Ver detalles</button>
                    </div>
                </c:forEach>
            </section>
        </div>

        <!-- Modal -->
        <div id="modal" class="modal">
            <div class="modal-contenido">
                <span class="cerrar" onclick="cerrarModal()">&times;</span>
                <h2 id="modalTipo"></h2>
                <p id="modalFechaPago"></p>
                <p id="modalMensualidad"></p>
                <p id="modalFechaVencimiento"></p>
            </div>
        </div>

        <footer class="info">
            <div class="contacto">
                <h3>Contáctanos</h3>
                <p>Email: <a href="mailto:endofline2025@gmail.com">endofline2025@gmail.com</a></p>
                <p>Teléfono: +502 1234-5678</p>
                <p>Dirección: Ciudad de Guatemala, Guatemala</p>
            </div>

            <div class="redesSociales">
                <a href="https://www.whatsapp.com"><img src="image/whatsapp.png" alt="WhatsApp" width="60"></a>
                <a href="https://www.instagram.com"><img src="image/instagram.png" alt="Instagram" width="60"></a>
                <a href="https://www.tiktok.com"><img src="image/tiktok.png" alt="TikTok" width="60"></a>
            </div>

            <div class="derechos">
                <p>&copy; 2025 Auto Ventas END OF LINE. Todos los derechos reservados.</p>
            </div>
        </footer>

        <script>
            function mostrarInfo(tipo, fechaPago, mensualidad, fechaVencimiento) {
                document.getElementById("modalTipo").innerText = tipo;
                document.getElementById("modalFechaPago").innerText = "Fecha de pago: " + fechaPago;
                document.getElementById("modalMensualidad").innerText = "Mensualidad: Q" + mensualidad;
                document.getElementById("modalFechaVencimiento").innerText = "Vencimiento: " + fechaVencimiento;
                document.getElementById("modal").style.display = "flex";
            }

            function cerrarModal() {
                document.getElementById("modal").style.display = "none";
            }
        </script>
    </body>
</html>







<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>EndOfLine</title>
    <link rel="stylesheet" href="styles/carro.css">
</head>
<body>
    <!-- Imagen EndOfLine.png centrada -->
    <div class="titulo-imagen">
        <img src="image/EndOfLine.png" alt="EndOfLine" class="imagen-titulo">
    </div>

    <div class="contenedor-carros">
        <!-- Carro 1 -->
        <div class="carro">
            <img src="image/carro1.jpg" alt="Carro 1">
            <button onclick="mostrarInfo(0)">Ver detalles del vehículo</button>
        </div>
        <!-- Carro 2 -->
        <div class="carro">
            <img src="image/carro2.jpg" alt="Carro 2">
            <button onclick="mostrarInfo(1)">Ver detalles del vehículo</button>
        </div>
        <!-- Carro 3 -->
        <div class="carro">
            <img src="image/carro3.jpg" alt="Carro 3">
            <button onclick="mostrarInfo(2)">Ver detalles del vehículo</button>
        </div>
        <!-- Carro 4 -->
        <div class="carro">
            <img src="image/carro4.jpg" alt="Carro 4">
            <button onclick="mostrarInfo(3)">Ver detalles del vehículo</button>
        </div>
        <!-- Carro 5 -->
        <div class="carro">
            <img src="image/carro5.jpg" alt="Carro 5">
            <button onclick="mostrarInfo(4)">Ver detalles del vehículo</button>
        </div>
    </div>

    <!-- Ventana emergente -->
    <div id="ventana-info" class="modal">
        <div class="modal-contenido">
            <span class="cerrar" onclick="cerrarVentana()">&times;</span>
            <img id="imagen-carro" src="" alt="Imagen del carro">
            <div class="info-carro">
                <p><strong>Marca:</strong> <span id="marca"></span></p>
                <p><strong>Modelo:</strong> <span id="modelo"></span></p>
                <p><strong>Color:</strong> <span id="color"></span></p>
                <p><strong>Año:</strong> <span id="ano"></span></p>
                <p><strong>Estado:</strong> <span id="estado"></span></p>
            </div>
        </div>
    </div>

    <script>
        const carros = [
            {
                imagen: "image/carro1.jpg",
                marca: "Lamborghini",
                modelo: "Huracan Performante",
                color: "Nero Noctis",
                ano: "2024",
                estado: "Disponible"
            },
            {
                imagen: "image/carro2.jpg",
                marca: "Porsche",
                modelo: "911 GT3 RS",
                color: "Blanco y Rojo",
                ano: "2025",
                estado: "En proceso de entrega"
            },
            {
                imagen: "image/carro3.jpg",
                marca: "Ferrari",
                modelo: "Roma",
                color: "Rosso Fiorano",
                ano: "2023",
                estado: "No disponible"
            },
            {
                imagen: "image/carro4.jpg",
                marca: "Audi",
                modelo: "R8",
                color: "Gris Daytona",
                ano: "2024",
                estado: "Disponible"
            },
            {
                imagen: "image/carro5.jpg",
                marca: "Rolls Royce",
                modelo: "Cullinan",
                color: "Negro",
                ano: "2025",
                estado: "Disponible"
            }
        ];

        function mostrarInfo(index) {
            const carro = carros[index];
            document.getElementById("imagen-carro").src = carro.imagen;
            document.getElementById("marca").textContent = carro.marca;
            document.getElementById("modelo").textContent = carro.modelo;
            document.getElementById("color").textContent = carro.color;
            document.getElementById("ano").textContent = carro.ano;
            document.getElementById("estado").textContent = carro.estado;

            document.getElementById("ventana-info").style.display = "block";
        }

        function cerrarVentana() {
            document.getElementById("ventana-info").style.display = "none";
        }
    </script>
</body>
</html>


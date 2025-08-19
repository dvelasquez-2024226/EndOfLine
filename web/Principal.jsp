<%-- 
    Document   : Principal
    Created on : 23 jul 2025, 14:28:50
    Author     : Dany Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>End Of Line</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">

    <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>

    <style>
        /* Estilos Generales y del Body */
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            color: #333;
            font-size: 16px;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            /* Fondo de la página */
            background-image: url(fondo-monocromatico-blanco-realista/5585459.jpg);
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            background-color: #f5f5f5;
        }

        main {
            flex: 1;
            padding: 2rem 1rem;
        }

        /* Estilos de Tipografía */
        h1,
        h2,
        h3 {
            font-family: 'Roboto', sans-serif;
            text-align: center;
            color: #1a237e;
            margin-top: 1.5rem;
            margin-bottom: 0.5rem;
        }

        h1 {
            font-size: 2.5rem;
            font-weight: 700;
        }

        h2 {
            font-size: 2rem;
            font-weight: 600;
        }

        h3 {
            font-size: 1.2rem;
            font-weight: 500;
            color: #424242;
        }

        p {
            font-family: 'Poppins', sans-serif;
            text-align: center;
            margin-top: 1rem;
            font-size: 1rem;
            color: #616161;
            line-height: 1.6;
        }

        /* Contenedores principales de contenido */
        .content-section {
            background-color: rgba(240, 240, 240, 0.85);
            background: transparent;
            backdrop-filter: blur(5px);
            padding: 2rem;
            margin: 2rem auto;
            max-width: 2100px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        /* Sección de Instalaciones */
        .imagen-instalaciones {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 1.5rem;
            margin-top: 2rem;
        }

        .imagen-instalaciones img {
            width: 100%;
            max-width: 1000px;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .imagen-instalaciones img:hover {
            transform: scale(1.02);
        }

        /* Sección de Servicios */
        .services-layout {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 2rem;
            margin-top: 2rem;
        }

        .service-column {
            flex-basis: 45%;
            min-width: 280px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 1.5rem;
            box-sizing: border-box;
            border-left: 4px solid #1a237e;
            /* Borde azul como en el diseño solicitado */
        }

        .service-column h3 {
            font-size: 1.5rem;
            color: #1a237e;
            text-align: left;
            margin-bottom: 1rem;
            border-bottom: 2px solid #e0e0e0;
            padding-bottom: 0.5rem;
        }

        .service-column ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .service-column li {
            font-family: 'Poppins', sans-serif;
            font-size: 1rem;
            color: #424242;
            margin-bottom: 0.75rem;
            position: relative;
            padding-left: 25px;
        }

        .service-column li::before {
            content: '•';
            font-size: 1.5rem;
            color: #1a237e;
            position: absolute;
            left: 0;
            top: -3px;
        }

        /* Estilos del visor 3D */
        model-viewer {
            width: 100%;
            max-width: 600px;
            height: 600px;
            background-color: transparent;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
            margin: 2rem auto;
            --poster-color: #f7f7f7;
            border: 1px solid #e0e0e0;
        }

        /* Animación de Inicio */
        .animacion {
            position: fixed;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            background-color: #125187;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            z-index: 2147483647;
            animation: hideIntro 0.8s ease-out 2.5s forwards;
        }

        .animacion strong {
            color: #0004ff;
        }

        .carro {
            width: 300px;
            margin-bottom: 20px;
            transform: translateX(100vw);
            animation: driveIn 1.1s cubic-bezier(0.68, -0.55, 0.27, 1.55) forwards;
            animation-delay: 1.1s;
        }

        .text {
            font-size: 3em;
            color: #fff;
            letter-spacing: 5px;
            opacity: 0;
            animation: fadeIn 0.7s ease forwards;
            animation-delay: 0.2s;
            font-weight: 600;
        }

        @keyframes fadeIn {
            to {
                opacity: 1;
            }
        }

        @keyframes driveIn {
            0% {
                transform: translateX(100vw);
            }

            60% {
                transform: translateX(0);
            }

            100% {
                transform: translateX(0);
            }
        }

        @keyframes hideIntro {
            to {
                opacity: 0;
                visibility: hidden;
            }
        }

        /* Barra de Navegación */
        .general {
            background-color: #1a237e;
            color: white;
            padding: 1rem 0;
            width: 100%;
            position: sticky;
            top: 0;
            left: 0;
            z-index: 1000;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 1.5rem;
        }

        .logo {
            color: white;
            text-decoration: none;
            font-size: 1.5rem;
            font-weight: 700;
            letter-spacing: 1px;
        }

        .botones {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            gap: 1.5rem;
        }

        .botones a {
            color: white;
            text-decoration: none;
            padding: 0.5rem 1rem;
            transition: all 0.3s ease;
            font-weight: 500;
            border-radius: 6px;
        }

        .botones a:hover {
            background-color: #000000;
            transform: translateY(-2px);
        }

        /* Pie de Página (Footer) */
        .terminos {
            background-color: #0a0a0a;
            color: #f0f0f0;
            padding: 3rem 2rem;
            width: 100%;
            box-sizing: border-box;
            border-top: 5px solid #108ed6;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            margin-top: auto;
        }

        .terminos .redes {
            margin-top: 2rem;
        }

        .terminos .redes ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
            gap: 2.5rem;
            flex-wrap: wrap;
        }

        .terminos .redes ul li a {
            color: #ffffff;
            text-decoration: none;
            font-size: 1.15rem;
            font-weight: 500;
            transition: color 0.8s ease;
        }

        .terminos .redes ul li a:hover {
            color: #1a7e2b;
        }

        .terminos .redes a {
            display: inline-block;
            margin: 0 1.5rem;
        }

        .terminos .redes a img {
            width: 55px;
            height: auto;
            transition: transform 0.2s ease;
        }

        .terminos .redes a img:hover {
            transform: translateY(-5px) scale(1.3);
        }

        .terminos p {
            margin-top: 2rem;
            font-size: 0.9rem;
            color: #ffffff;
            font-weight: 400;
            
        }

        /* Media Queries para Responsividad */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                padding-top: 1rem;
                padding-bottom: 1rem;
            }

            .logo {
                margin-bottom: 1rem;
            }

            .botones {
                flex-direction: column;
                gap: 0.5rem;
                text-align: center;
            }

            .general {
                position: static;
            }

            h1 {
                font-size: 2rem;
            }

            .service-column {
                flex-basis: 100%;
            }
        }



        /* Estilos del visor 3D y sus contenedores */
        .vehicle-display-container {
            display: flex;
            flex-direction: row;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            gap: 2rem;
            margin-top: 2rem;
            padding: 1rem;
            background-color: #ffffff;
            background: transparent;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
        }

        .vehicle-details {
            flex: 1;
            min-width: 300px;
            text-align: left;
            padding: 1rem;
        }

        .vehicle-details h3 {
            text-align: left;
        }

        .vehicle-details h1 {
            text-align: left;
        }
        
        model-viewer {
            width: 100%;
            max-width: 700px; /* Reducido para que quepa al lado de la información */
            height: 450px;
            background: transparent;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
            --poster-color: #f7f7f7;
            border: 1px solid #e0e0e0;
        }

        @media (max-width: 900px) {
            .vehicle-display-container {
                flex-direction: column;
            }
            .vehicle-details {
                text-align: center;
            }
            .vehicle-details h3, .vehicle-details h1 {
                text-align: center;
            }
        }


    </style>
</head>

<body>
    <div class="animacion">
        <img src="image/carroLogo.png" alt="Carro" class="carro">
        <div class="text">End <strong>Of</strong> Line</div>
    </div>

    <header class="general">
        <nav class="navbar">
            <a href="Principal.jsp" class="logo">Menu Principal End Of Line</a>
            <ul class="botones">
                <li><a href="#">Vehiculos</a></li>
                <li><a href="#">Servicios</a></li>
                <li><a href="#">Talleres</a></li>
                <li><a href="#">Ubicaciones</a></li>
                <li><a href="#">Ayuda</a></li>
                <li><a href="#">Carrito de compra</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <div class="text-center">
            <h1>¡END OF LINE!</h1>
        </div>

        <section class="content-section">
            <h2>Nuestras Instalaciones</h2>
            <div class="imagen-instalaciones">
                <img src="image/lugarModerno.png" alt="Showroom moderno">
                <img src="image/AreaServicios.png" alt="Área de servicios">
                <img src="image/carroExsibicion.png" alt="Vehículo en exhibición">
            </div>
            <p style="text-align: center; margin-top: 5rem;">
                Explora nuestras modernas instalaciones, diseñadas para ofrecerte la mejor experiencia de compra.
            </p>
        </section>

        <section class="content-section">
    <h2>Nuestros Servicios</h2>
    <div class="services-layout">
        <div class="service-column">
            <h3>Vehículos</h3>
            <ul>
                <li>Hatchback
                    <ul>
                        <li>Yaris</li>
                        <li>Corolla</li>
                        <li>Golf</li>
                        <li>A3</li>
                        <li>Civic</li>
                        <li>Impreza</li>
                        <li>Fiesta</li>
                        <li>Focus</li>
                    </ul>
                </li>
                <li>SUV
                    <ul>
                        <li>RAV4</li>
                        <li>Highlander</li>
                        <li>4Runner</li>
                        <li>Explorer</li>
                        <li>Tucson</li>
                        <li>Tiguan</li>
                        <li>Cayenne</li>
                        <li>Suburban</li>
                    </ul>
                </li>
                <li>Pickup
                    <ul>
                        <li>Hilux</li>
                        <li>Tacoma</li>
                        <li>Tundra</li>
                        <li>Ranger</li>
                        <li>F-150</li>
                        <li>Ram 1500</li>
                        <li>Silverado</li>
                        <li>Gladiator</li>
                        <li>Ridgeline</li>
                    </ul>
            </ul>
        </div>
        <div class="service-column">
            <h3>Servicios</h3>
            <ul>
                <li>Taller General
                    <ul>
                        <li>Diagnóstico computarizado</li>
                        <li>Reparación de motor</li>
                        <li>Frenos ABS</li>
                        <li>Suspensión</li>
                        <li>Transmisión</li>
                        <li>Sistema de escape</li>
                    </ul>
                </li>
                <li>Mantenimiento Preventivo
                    <ul>
                        <li>Cambio de aceite</li>
                        <li>Filtros</li>
                        <li>Baterías</li>
                        <li>Bujías</li>
                        <li>Limpieza de inyectores</li>
                    </ul>
                </li>
                <li>Garantía
                    <ul>
                        <li>Garantía de fábrica</li>
                        <li>Garantía extendida</li>
                        <li>Cobertura de tren motriz</li>
                        <li>Seguro de protección de neumáticos</li>
                    </ul>
                </li>
                <li>Financiamiento
                    <ul>
                        <li>Crédito automotriz</li>
                        <li>Leasing</li>
                        <li>Planes de 0% de interés</li>
                        <li>Requisitos de financiamiento</li>
                    </ul>
                </li>
                <li>Seguros
                    <ul>
                        <li>Pólizas a todo riesgo</li>
                        <li>Cobertura de daños a terceros</li>
                        <li>Seguros contra robos</li>
                        <li>Asesoría de seguros</li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="service-column">
            <h3>Ayuda</h3>
            <ul>
                <li>Asistencia en Carretera
                    <ul>
                        <li>Servicio de grúa 24/7</li>
                        <li>Asistencia por avería</li>
                        <li>Cambio de llanta</li>
                        <li>Suministro de combustible</li>
                    </ul>
                </li>
                <li>Ayuda al Cliente
                    <ul>
                        <li>Preguntas Frecuentes (FAQ)</li>
                        <li>Manuales de usuario digitales</li>
                        <li>Soporte técnico</li>
                        <li>Chat en vivo</li>
                    </ul>
                </li>
                <li>Reserva
                    <ul>
                        <li>Cita de servicio</li>
                        <li>Prueba de manejo</li>
                        <li>Valoración de vehículo</li>
                        <li>Reserva de modelos nuevos</li>
                    </ul>
                </li>
                <li>Soporte en línea
                    <ul>
                        <li>Contacto por WhatsApp</li>
                        <li>Soporte en redes sociales</li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</section>

        <section class="content-section">
            <h2>Vehículos en Exhibición</h2>
            
            <div class="vehicle-display-container">
                <model-viewer src="2022_toyota_hilux/scene.gltf" alt="Modelo 3D de Toyota Hilux 2022" auto-rotate camera-controls ar shadow-intensity="3" environment-image="neutral" poster="placeholder.jpg"></model-viewer>
                <div class="vehicle-details">
                    <h1>Toyota Hilux 2022</h1>
                    <h3>Motor: Turbo Diesel, Intercooler, 16 Válvulas, DOHC, Common Rail. Nm/rpm 500/1600-2800</h3>
                    <h3>Cilindros: 4</h3>
                    <h3>Transmisión: Caja mecánica de 6 velocidades y retroceso</h3>
                    <h3>Color: Rojo</h3>
                    <p>Explora el modelo 3D de la Toyota Hilux 2022. Puedes rotarlo y hacer zoom para visualizar el modelo en 3D.</p>
                </div>
            </div>

            <div class="vehicle-display-container">
                <model-viewer src="ford_mustang_shelby_gt500/scene.gltf" alt="Modelo 3D de Mustang GT500" auto-rotate camera-controls ar shadow-intensity="3" environment-image="neutral" poster="placeholder.jpg"></model-viewer>
                <div class="vehicle-details">
                    <h1>Ford Mustang Shelby GT500</h1>
                    <h3>Motor: 5.2L V8 Supercargado. 760 hp @ 7300 rpm, 625 lb-ft @ 5000 rpm</h3>
                    <h3>Cilindros: 8</h3>
                    <h3>Transmisión: Automática de 7 velocidades</h3>
                    <h3>Color: Blanco con franjas azules</h3>
                    <p>Explora el modelo 3D del Ford Mustang Shelby GT500. Puedes rotarlo y hacer zoom para visualizar el modelo en 3D.</p>
                </div>
            </div>
        </section>


    </main>

    <footer class="terminos">
        <div class="redes">
            <ul>
                <li><a href="#">Acerca de Nosotros</a></li>
                <li><a href="#">Términos y Condiciones</a></li>
                <li><a href="#">Política de Privacidad</a></li>
                <li><a href="#">Contacto</a></li>
            </ul>
        </div>
        <div class="redes">
            <a href="#"><img src="image/logoFacebook.png" alt="Facebook"></a>
            <a href="#"><img src="image/logohatsApp.png" alt="WhatsApp"></a>
            <a href="#"><img src="image/logoInstagram.png" alt="Instagram"></a>
        </div>
        <p>&copy; Tu concesionaria de confianza "END OF LINE".</p>
    </footer>

</body>
</html>
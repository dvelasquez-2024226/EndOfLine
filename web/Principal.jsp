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
        <link rel="icon" type="image" href="image/Logo.png">

        <link rel="stylesheet" href="styles/principal.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

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
                    <li><a href="Controlador?menu=ProveedorNV&accion=Listar">Vehiculos</a></li>
                    <li><a href="Controlador?menu=ProveedorVC&accion=Listar">Proveedores</a></li>
                    <li><a href="#">Servicios</a></li>
                    <li><a href="#">Talleres</a></li>
                    <li><a href="#">Ubicaciones</a></li>
                    <li><a href="#">Ayuda</a></li>
                    <li><a href="#">Carrito de compra</a></li>
                    <li><a href="#">Inventario</a></li>
                    <div class="dropdown" >
                        <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" aria-haspopup="true" data-toggle="dropdown" aria-expand="false">
                            ${apellidoCliente.getNombreCliente()}
                        </button>
                        <div class="dropdown-menu dropdown-menu-right text-center" aria-labellebdy="dropdownMenuButton">
                            <a class="dropdown-item" href="#">
                                <img src="img/Logo.png" alt="80" width="80">
                            </a>
                            <a class="dropdown-item text-white"> ${apellidoCliente.getCorreoCliente()}
                            </a>
                            <div class="dropdown-divider"></div>
                            <form action="Validar" method="POST">
                                <button name="accion" name="Salir" class="dropdown-item">Salir</button>
                            </form>
                        </div>
                    </div>

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
                    <img src="image/hilux-color-rojo.png" alt=">Hilux 2022">
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

                    <img src="image/shelby-500.png" alt="Ford Mustang Shelby 500 gt">
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

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
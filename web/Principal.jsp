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
                    <li><a href="Controlador?menu=CarroCl&accion=Listar" target="myFrame">Vehiculos</a></li>
                    <li><a href="Controlador?menu=ProveedorVC&accion=Listar" target="myFrame">Proveedores</a></li>
                    <li><a href="#">Servicios</a></li>
                    <li><a href="#" >Talleres</a></li>
                    <li><a href="#" >Ubicaciones</a></li>
                    <li><a href="#" >Ayuda</a></li>
                    <li><a href="#" >Carrito de compra</a></li>
                    <li><a href="Controlador?menu=InventarioCl&accion=Listar" target="myFrame">InventarioCl</a></li>
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
        <div class="m-4" style="height: 845px" >
            <iframe name="myFrame" src="PrincipalCliente.jsp" style="height: 100%; width: 100%; border: none"></iframe>
        </div> 

        
                   
                            

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
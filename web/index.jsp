<%-- 
    Document   : index
    Created on : 21/07/2025, 21:52:50
    Author     : ISAAC
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Acces Page</title>
           <link rel="stylesheet" href="styles/index.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body class="fondoPrincipal">
        <!-- Logo Fondo (Mitad derecha) -->
        <div class="logoFondo">
            <img src="image/LogoFondo.png" alt="Logo End Of Line" width="800" height="700">
        </div>
        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-10" style="--container-card-height:450px;">
                <div class="card-body">
                    <form class="form-sign" action="Validar" method="POST">
                        <div class="form-group text-center">
                            <h3 class="tituloColor">Bienvenidos</h3>
                            <img src="image/Logo.png" alt="Logo pequeño" width="120"/><br>
                            <label class="textoColor">Ingrese sus credenciales</label>
                        </div>
                        <!-- Campo Usuario -->
                        <div class="form-group d-flex align-items-center">
                            <!-- Tamaño imagen usuario -->
                            <img src="image/Usuario.png" alt="Usuario" class="tamanoUsuario mr-2" />
                            <input type="text" name="txtUser" class="form-control inputColor" placeholder="Usuario">
                        </div>
                        <!-- Campo Contraseña -->
                        <div class="form-group d-flex align-items-center">
                            <!-- Tamaño imagen contraseña -->
                            <img src="image/Contraseña.png" alt="Contraseña" class="tamanoContra mr-2" />
                            <input type="password" name="txtPass" class="form-control inputColor" placeholder="Contraseña">
                        </div>
                        <input type="submit" value="Ingresar" name="accion" class="btn btn-primary btn-block btnColor">
                    </form>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
        
    </body>
   </html>
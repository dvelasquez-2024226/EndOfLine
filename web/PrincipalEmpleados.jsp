

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu Principal</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light " style="background-color: #CEC68D;">
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="#" >Inventarios</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="#">Proveedores</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="#" >Membresias</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="#" >Clientes</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="#" >Talleres</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="#" >Carros</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="#" >Concesionarios</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Empleados&accion=Listar" target="myFrame" >Empleados</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="#" >Contratos</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Publicidad&accion=Listar" target="myFrame">Publicidad</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="#" >Servicios</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Factura&accion=Listar" target="myFrame" >Facutra</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="#" >Detalle Factura</a>
                    </li>

                </ul>
            </div>
            <div class="dropdown" >
                <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" aria-haspopup="true" data-toggle="dropdown" aria-expand="false">
                    
                </button>
                <div class="dropdown-menu dropdown-menu-right text-center" aria-labellebdy="dropdownMenuButton">
                    <a class="dropdown-item" href="#">
                        <img src="img/usuario.png" alt="60" width="60">
                    </a>
                    <a class="dropdown-item">
                        
                    </a>
                    <a class="dropdown-item">
                        usuario@gmail.com
                    </a>
                    <div class="dropdown-divider"></div>
                    <form action="Validar" method="POST">
                        <button name="accion" name="Salir" class="dropdown-item">Salir</button>
                    </form>
                </div>
            </div>
        </nav>
        <div class="m-4" style="height: 845px" >
            <iframe name="myFrame" style="height: 100%; width: 100%; border: none"></iframe>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>


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
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Inventario&accion=Listar" target="myFrame">Inventarios</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=ProveedorNV&accion=Listar" target="myFrame">Proveedores</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="#" >Membresias</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Cliente&accion=Listar" target="myFrame">Cliente</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="#" >Talleres</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Carro&accion=Listar" target="myFrame" >Carros</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Concesionario&accion=Listar" target="myFrame" >Concesionarios</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Empleados&accion=Listar" target="myFrame" >Empleados</a>
                    </li>
                    <li class="nav-item">
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=Contrato&accion=Listar" target="myFrame" >Contratos</a>
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
                        <a style="margin-left: 10px; border: none;" class="btn btn-outline-light" href="Controlador?menu=DetalleFactura&accion=Listar" target="myFrame" >Detalle Factura</a>
                    </li>

                </ul>
            </div>
            <div class="dropdown" >
                <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" id="dropdownMenuButton" aria-haspopup="true" data-toggle="dropdown" aria-expand="false">
                    ${usuarioEmpleado.getNombreEmpleado()} ${usuarioEmpleado.getApellidoEmpleado()}
                </button>
                <div class="dropdown-menu dropdown-menu-right text-center" aria-labellebdy="dropdownMenuButton">
                    <a class="dropdown-item" href="#">
                        <img style="border-radius: 50%; object-fit: cover" src="ControlerIMG?carne=${usuarioEmpleado.getCarne()}" alt="usuario" width="70px" height="70px" onerror="this.onerror=null; this.src='image/Usuario.png';">
                    </a>
                    <a class="dropdown-item">
                        ${usuarioEmpleado.getUsuarioEmpleado()}
                    </a>
                    <a class="dropdown-item">
                        ${usuarioEmpleado.getCorreoEmpleado()}
                    </a>
                    <div class="dropdown-divider"></div>
                    <form action="Validar" method="POST">
                        <button name="accion" name="Salir" class="dropdown-item">Salir</button>
                    </form>
                </div>
            </div>
        </nav>
        <div class="m-4" style="height: 845px" >
            <iframe name="myFrame" src="Controlador?menu=PrincipalEmpleado&accion=mostrar"  style="height: 100%; width: 100%; border: none"></iframe>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
    </body>
</html>
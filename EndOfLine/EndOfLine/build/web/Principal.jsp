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
    <script type="module" src="https://unpkg.com/@google/model-viewer/dist/model-viewer.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 135vh;
            background-color: #f4f4f4;
            color: #333;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 30px;
        }

        model-viewer {
            width: 120%;
            max-width: 1200px;
            height: 650px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            --poster-color: #f7f7f7;
        }

        p {
            margin-top: 35px;
            font-size: 1.5em;
            color: #555555;
        }

        .animacion {
            position: fixed;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            background-color: #222;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            z-index: 2147483647; 
            animation: hideIntro 0.8s ease-out 2.5s forwards;
        }

        .animacion strong{
            color: red;
        }

        .carro {
            width: 400px;
            margin-bottom: 20px;
            transform: translateX(100vw);
            animation: driveIn 1.1s ease forwards;
            animation-delay: 1.1s;
        }

        .text {
            font-size: 3em;
            color: #fff;
            letter-spacing: 8px;
            opacity: 0;
            animation: fadeIn 0.7s ease forwards;
            animation-delay: 0.2s;
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


    </style>


</head>

<body>

    <div class="animacion">
        <img src="img/carroLogo.png" alt="Carro" class="carro">
        <div class="text">End <strong>Of</strong> Line</div>
    </div>

    <div class="text-center">
        <img src="img/logoEndOfLine.png" alt="Logo de la empresa End Of Line">
        <h1>!Bienvenido a tu consecionaria de confianza.</h1>
        <p></p>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
        integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
        crossorigin="anonymous"></script>

    <h1>Toyota Hilux 2022</h1>
    <h3>Motor: Turbo Diesel, Intercooler, 16 Válvulas, DOHC, Common Rail. Nm/rpm 500/1600-2800</h3>
    <h3>Cilindros: 4</h3>
    <h3>Transmisión: Caja mecánica de 6 velocidades y retroceso</h3>
    <h3>Color: Rojo</h3>

    <model-viewer src="2022_toyota_hilux/scene.gltf" alt="Modelo 3D de Toyota Hilux 2022" auto-rotate camera-controls ar
        shadow-intensity="3" environment-image="neutral" poster="placeholder.jpg"></model-viewer>
    <p>Explora el modelo 3D de la Toyota Hilux 2022. Puedes rotarlo y hacer zoom con el ratón para visualizar el
        modelo 3D de el Hilux 2022.</p>


    <model-viewer src="ford_mustang_shelby_gt500/scene.gltf" alt="Modelo 3D de Mustang GT500" auto-rotate
        camera-controls ar shadow-intensity="3" environment-image="neutral" poster="placeholder.jpg"></model-viewer>
    <p>Explora el modelo 3D de el Ford Mustang Shelby GT500. Puedes rotarlo y hacer zoom con el ratón para
        visualizar el modelo 3D de el GT500.</p>



</body>

</html>
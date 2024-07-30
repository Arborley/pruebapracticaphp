<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alta de Comunidades</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/a7093f3be1.js" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/a7093f3be1.js" crossorigin="anonymous"></script>
</head>

<body>

    <div class="">
        <div class="bg-white container mt-5 pb-3 card text-center card">
            <h2 class="mt-3 lead" style="font-size: xx-large;" ><strong>Insertar Comunidad</strong></h2>
            <form action="../controlador/controlador_comunidad.php" method="POST">
                <input type="hidden" name="accion" value="alta">
                <div class="form-group d-flex mt-3">
                    <label class="col-md-2 lead" for="nombre"> <strong>Comunidad:</strong> </label>
                    <input type="text" id="nombre" name="nombre" class="form-control w-75" placeholder="Comunidad:">
                </div>
                <div class="form-group d-flex mt-3">
                    <label class="col-md-2 lead" for="direccion"> <strong>Dirección:</strong></label>
                    <input type="text" id="direccion" name="direccion" class="form-control w-75" placeholder="Dirección:">
                </div>
                <div class="form-group d-flex mt-3">
                    <label class="col-md-2 lead" for="poblacion"> <strong>Población:</strong></label>
                    <input type="text" id="poblacion" name="poblacion" class="form-control w-75" placeholder="Población:">
                </div>
                <div class="form-group d-flex mt-3">
                    <label class="col-md-2 lead" for="id"> <strong>ID:</strong></label>
                    <input type="number" id="id" name="id" class="form-control w-75" placeholder="ID del administrador:">
                </div>
                <div class="">
                    <button type="submit" class="btn btn-primary btn-block mt-4">
                        <i class="fa-regular fa-paper-plane"></i> Enviar</button>
                </div>
            </form>
        </div>
        <div class="text-center mt-5">
            <a href="../index.php"><button class="btn btn-primary">
                    <i class="fa-solid fa-arrow-left"></i>        Volver</button></a>
        </div>
    </div>
</body>

</html>
<?php

// Incluye el archivo "database.php", que debería contener la configuración de la base de datos y funciones de conexión.
include_once("database.php");

// Llama a la función "conectar()" para establecer una conexión a la base de datos y almacena la conexión en $conectar_singup.
$conectar_singup = conectar();

// Comprueba si se ha enviado una solicitud POST al script.
if ($_POST) {

    // Recupera los datos del formulario web enviados a través de POST y los almacena en variables.
    $nombre = $_POST['nombre'];
    $correo = $_POST['correo'];
    $contrasena = $_POST['contrasena'];
    $confirmar_contrasena = $_POST['confirmar_contrasena'];

    // Comprueba si las contraseñas coinciden utilizando la función "strcmp".
    if (strcmp($contrasena, $confirmar_contrasena) == 0) {

        // Construye una consulta SQL para insertar los datos del usuario en la tabla "prueba" en la base de datos.
        // La contraseña se almacena de forma hasheada utilizando SHA1.
        $registro = "INSERT INTO prueba(nombre, correo, contrasena) VALUES ('$nombre','$correo', SHA1('$contrasena'))";

        // Ejecuta la consulta SQL en la base de datos utilizando la conexión almacenada en $conectar_singup.
        $resultado = mysqli_query($conectar_singup, $registro);

        // Muestra un mensaje si el registro se realizó con éxito.
        echo "Registro con éxito";
    } else {
        // Muestra un mensaje si las contraseñas no coinciden.
        echo "No coinciden las contraseñas";
    }

    // Muestra los valores de las variables $nombre, $correo, $contrasena y $confirmar_contrasena (puede ser útil para depuración).
    echo "<br><br>";
    echo "$nombre<br><br>";
    echo "$correo<br><br>";
    echo "$contrasena<br><br>";
    echo "$confirmar_contrasena<br><br>";

    // Cierra la conexión a la base de datos para liberar recursos.
    mysqli_close($conectar_singup);
}

?>
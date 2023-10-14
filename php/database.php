<?php

// Función "conectar" para establecer una conexión a la base de datos.
function conectar()
{
    $servername = "localhost"; // Servidor de la base de datos
    $username = "root"; // Nombre de usuario de la base de datos
    $password = ""; // Contraseña de la base de datos
    $dbname = "sisviansa"; // Nombre de la base de datos

    // Crear una nueva instancia de la clase mysqli para establecer la conexión a la base de datos.
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Comprobar si se ha producido un error de conexión.
    if ($conn->connect_error) {
        die("Error de conexión: " . $conn->connect_error);
    }

    return $conn; // Devolver la conexión establecida
}

// Llamar a la función "conectar" para obtener una conexión a la base de datos.
$conexion = conectar();

// Función "desconectar" para cerrar una conexión a la base de datos.
function desconectar($conn)
{
    $conn->close(); // Cierra la conexión pasada como argumento.
}

// Llamar a la función "desconectar" para cerrar la conexión previamente establecida en "$conexion".
desconectar($conexion); // Donde "$conexion" es el objeto de conexión obtenido previamente.

?>
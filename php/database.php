<?php

function conect_bd()
{
    $servername = "localhost"; // Nombre del servidor local
    $username = "root"; // Nombre de usuario predeterminado de MySQL en XAMPP
    $password = ""; // Contraseña predeterminada en XAMPP (dejar en blanco por defecto)
    $dbname = "sisviansa"; // Reemplazar con el nombre de tu base de datos

    // Crear una conexión
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Verificar la conexión
    if ($conn->connect_error) {
        die("Error de conexión: " . $conn->connect_error);
    }
}

/*echo "Conexión exitosa";

// Aquí puedes ejecutar consultas SQL y trabajar con la base de datos

// Cierra la conexión cuando hayas terminado
$conn->close();*/

/*
Funcion de conexcion a BD,
Clear las llamas a la BD,
Verificar el tipo de llamada para formatear la respuesta,
Cerrar la peticion y devolver algo.
*/
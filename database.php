<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "sisviansa";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $database);

// Verificar conexión
if ($conn->connect_error) {
    die("La conexión falló: " . $conn->connect_error);
}
?>

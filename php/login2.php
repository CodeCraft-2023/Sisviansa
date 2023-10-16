<?php
/*/ Incluir el archivo de conexión
include "database.php";*/

require "database.php";
session_start();

// Conexión a la base de datos (ajusta los valores según tu configuración)
$host = "localhost";
$db_user = "tu_usuario";
$db_pass = "tu_contraseña";
$db_name = "Sisviansa";

$conn = new mysqli($host, $db_user, $db_pass, $db_name);

if ($conn->connect_error) {
    die("Error de conexión a la base de datos: " . $conn->connect_error);
}

if (isset($_POST['signup'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];
    $correo = $_POST['correo'];
    $telefono = $_POST['telefono'];
    $barrio = $_POST['barrio'];
    $calle = $_POST['calle'];
    $numero_puerta = $_POST['numero_puerta'];
    $esquina = $_POST['esquina'];

    // Consulta para insertar el nuevo usuario en la base de datos
    $query = "INSERT INTO usuarios (username, password, correo, telefono, barrio, calle, numero_puerta, esquina) 
              VALUES ('$username', '$password', '$correo', '$telefono', '$barrio', '$calle', '$numero_puerta', '$esquina')";

    if ($conn->query($query) === TRUE) {
        // Registro exitoso
        $_SESSION['username'] = $username;
        header("Location: dashboard.php"); // Redirige al usuario a su panel de control
        exit();
    } else {
        $error = "Error al registrar el usuario: " . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Registrarse</title>
</head>

<body>
    <h2>Registrarse</h2>
    <form method="post" action="">
        <label for="username">Nombre de Usuario:</label>
        <input type="text" name="username" required><br>

        <label for="password">Contraseña:</label>
        <input type="password" name="password" required><br>

        <label for="correo">Correo:</label>
        <input type="text" name="correo" required><br>

        <label for="telefono">Teléfono:</label>
        <input type="text" name="telefono"><br>

        <label for="barrio">Barrio:</label>
        <input type="text" name="barrio"><br>

        <label for="calle">Calle:</label>
        <input type="text" name="calle"><br>

        <label for="numero_puerta">Número de Puerta:</label>
        <input type="text" name="numero_puerta"><br>

        <label for="esquina">Esquina:</label>
        <input type="text" name="esquina"><br>

        <input type="submit" name="signup" value="Registrarse">
    </form>
    <?php
    if (isset($error)) {
        echo "<p>$error</p>";
    }
    ?>
</body>

</html>
?>


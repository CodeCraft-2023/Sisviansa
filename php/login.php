<?php
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Incluir el archivo de conexión a la base de datos
    require_once "database.php";

    // Recuperar datos del formulario
    $email = $_POST["email"];
    $password = $_POST["password"];

    // Buscar el usuario por correo en la tabla cliente
    $sql = "SELECT * FROM cliente WHERE correo = '$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Usuario encontrado, verificar la contraseña
        $row = $result->fetch_assoc();
        if (password_verify($password, $row["contrasena"])) {
            // Inicio de sesión exitoso, almacenar datos en la sesión
            $_SESSION["email"] = $email;
            $_SESSION["nCliente"] = $row["nCliente"];  // Puedes almacenar otros datos de sesión según tus necesidades
            
            // Redirigir a index.html después del inicio de sesión exitoso
            header("Location: ../index.html");
            exit();
        } else {
            // Contraseña incorrecta
            header("Location: ../login.html?error=Correo+o+Contraseña+incorrecto");
            exit();
        }
    } else {
        // Usuario no encontrado
        header("Location: ../login.html?error=Correo+o+Contraseña+incorrecto");
        exit();
    }

    // Cierra la conexión a la base de datos
    $conn->close();
}
?>

<?php
session_start();

// Destruir todas las variables de sesión
session_unset();
session_destroy();

// Redirigir a index.html después de cerrar sesión
header("Location: ../index.html");
exit();
?>

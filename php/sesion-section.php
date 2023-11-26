<?php
session_start();
if (isset($_SESSION["email"])) {
    // El usuario está autenticado, mostrar botón de cerrar sesión y el enlace al carrito
    echo '<form action="./php/logout.php" method="post">';
    echo '<button class="cerrar-sesion">Cerrar Sesión</button>';
    echo '</form>';
    echo '<script>$("#carritoItem").show();</script>'; // Muestra el enlace al carrito usando jQuery
} else {
    // El usuario no está autenticado, mostrar botones de inicio de sesión y registro
    echo '<a href="./login.html"><button class="iniciar-sesion">Iniciar Sesión</button></a>';
    echo '<a href="./signup.html"><button class="registrarse">Registrarse</button></a>';
}
?>

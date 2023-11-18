<?php
// sesion.php

session_start();

if (isset($_SESSION['usuario'])) {
    echo '<a href="php/logout.php"><button class="cerrar-sesion">Cerrar Sesión</button></a>';
} else {
    echo '<a href="login.html"><button class="iniciar-sesion">Iniciar Sesión</button></a>';
    echo '<a href="singup.html"><button class="registrarse">Registrarse</button></a>';
}
?>
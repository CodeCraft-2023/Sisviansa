<?php
session_start();
if (isset($_SESSION['errores'])) {
    foreach ($_SESSION['errores'] as $error) {
        echo $error;
    }
    unset($_SESSION['errores']);
}
?>
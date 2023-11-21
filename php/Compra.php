<?php
// Incluir el archivo de conexión a la base de datos
require_once "database.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recuperar datos del formulario
    $email = $_POST["email"];
    $medioPago = $_POST["medioPago"];
    $idMenu = $_POST["idmenu"];
    $productos = $_POST["productos"];  // Suponiendo que recibes un array de productos con cantidades desde el formulario

    // Buscar el usuario por correo en la tabla cliente
    $sql = "SELECT * FROM cliente WHERE correo = '$email'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Usuario encontrado
        $row = $result->fetch_assoc();

        // Simular el proceso de compra
        echo "Compra realizada con éxito por el usuario: " . $email;

        // Ejemplo de uso de las variables adicionales
        echo " Medio de Pago: " . $medioPago;
        echo " ID del Menú: " . $idMenu;

        // Ejemplo de procesamiento de productos
        echo " Productos comprados:";
        foreach ($productos as $producto => $cantidad) {
            echo " - $producto: $cantidad unidades";
            // Puedes realizar acciones adicionales con cada producto, como actualizar inventario, etc.
        }

        // Puedes realizar otras acciones después de la compra exitosa

    } else {
        echo "Usuario no encontrado";
    }

    // Cierra la conexión a la base de datos
    $conn->close();
}
?>

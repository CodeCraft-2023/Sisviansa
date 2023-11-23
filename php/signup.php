<?php
session_start();

// Incluir el archivo de conexión a la base de datos
require_once "database.php";

$registroExitoso = false;
$errores = array();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    try {
        // Recuperar datos del formulario
        $email = $_POST["email"];
        $neighborhood = $_POST["neighborhood"];
        $street = $_POST["street"];
        $door_number = $_POST["door_number"];
        $corner = $_POST["corner"];
        $password = $_POST["password"];
        $confirm_password = $_POST["confirm_password"];
        $user_type = $_POST["user_type"];

        // Comprobar si es cliente físico o empresa
        if ($user_type === "physical") {
            $document_type = $_POST["document_type"];
            $document_number = $_POST["document_number"];
            $first_name = $_POST["first_name"];
            $last_name = $_POST["last_name"];

            // Hash de la contraseña
            $hashed_password = password_hash($password, PASSWORD_DEFAULT);

            // Insertar datos en la tabla cliente y clientefisico
            $sqlCliente = "INSERT INTO cliente (correo, barrio, calle, nPuerta, esquina, contrasena)
                           VALUES ('$email', '$neighborhood', '$street', '$door_number', '$corner', '$hashed_password')";
            if ($conn->query($sqlCliente) === TRUE) {
                $nCliente = $conn->insert_id;  // Obtener el ID del cliente recién insertado

                $sqlClienteFisico = "INSERT INTO clientefisico (nCliente, tipoDocumento, nDocumento, nombre, apellido)
                                    VALUES ('$nCliente', '$document_type', '$document_number', '$first_name', '$last_name')";
                if ($conn->query($sqlClienteFisico) !== TRUE) {
                    throw new Exception("Error en la inserción de cliente físico: " . $conn->error);
                }
            } else {
                throw new Exception("Error en la inserción de cliente: " . $conn->error);
            }
        } elseif ($user_type === "company") {
            $rut = $_POST["rut"];
            $company_name = $_POST["company_name"];

            // Hash de la contraseña
            $hashed_password = password_hash($password, PASSWORD_DEFAULT);

            // Insertar datos en la tabla cliente y clienteempresa
            $sqlCliente = "INSERT INTO cliente (correo, barrio, calle, nPuerta, esquina, contrasena)
                           VALUES ('$email', '$neighborhood', '$street', '$door_number', '$corner', '$hashed_password')";
            if ($conn->query($sqlCliente) === TRUE) {
                $nCliente = $conn->insert_id;  // Obtener el ID del cliente recién insertado

                $sqlClienteEmpresa = "INSERT INTO clienteempresa (nCliente, rut, razonSocial)
                                      VALUES ('$nCliente', '$rut', '$company_name')";
                if ($conn->query($sqlClienteEmpresa) !== TRUE) {
                    throw new Exception("Error en la inserción de cliente empresa: " . $conn->error);
                }
            } else {
                throw new Exception("Error en la inserción de cliente: " . $conn->error);
            }
        }

        // Registro exitoso
        $registroExitoso = true;
    } catch (Exception $e) {
        // Captura de errores y almacenamiento en el array $errores
        $errores[] = $e->getMessage();
    }

    // Cierra la conexión a la base de datos
    $conn->close();

    if ($registroExitoso) {
        // Redirige al usuario a index.html
        header("Location: ../index.html");
        exit();
    } else {
        // Redirige al usuario a signup.html
        header("Location: ../signup.html");
        exit();
    }
}
?>

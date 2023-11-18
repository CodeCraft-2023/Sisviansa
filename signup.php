

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="signup.css"> 
    
</head>
<body>
    
</body>
</html>
<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
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
            if ($conn->query($sqlClienteFisico) === TRUE) {
                echo "Registro exitoso";
            } else {
                echo "Error: " . $sqlClienteFisico . "<br>" . $conn->error;
            }
        } else {
            echo "Error: " . $sqlCliente . "<br>" . $conn->error;
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
            if ($conn->query($sqlClienteEmpresa) === TRUE) {
                echo "Registro exitoso";
            } else {
                echo "Error: " . $sqlClienteEmpresa . "<br>" . $conn->error;
            }
        } else {
            echo "Error: " . $sqlCliente . "<br>" . $conn->error;
        }
    }

    // Cierra la conexión a la base de datos
    $conn->close();
}

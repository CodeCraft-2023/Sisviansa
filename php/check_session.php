<?php
session_start();

$response = ["loggedIn" => false];

if (isset($_SESSION["email"])) {
    // El usuario está logueado
    $response["loggedIn"] = true;
}

header("Content-Type: application/json");
echo json_encode($response);
?>

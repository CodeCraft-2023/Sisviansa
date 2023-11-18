document.addEventListener("DOMContentLoaded", function () {
    var loginButton = document.getElementById("loginButton");

    // Verificar la sesión mediante una llamada AJAX
    function checkSession() {
        fetch("check_session.php") // Archivo PHP que realiza la verificación de la sesión en el servidor
            .then(response => response.json())
            .then(data => {
                if (data.loggedIn) {
                    loginButton.innerHTML = "Cerrar Sesión";
                    loginButton.addEventListener("click", function () {
                        // Puedes agregar aquí la lógica para cerrar sesión o redirigir a la página de cierre de sesión
                        alert("Cerrar Sesión");
                    });
                }
            })
            .catch(error => console.error("Error al verificar la sesión:", error));
    }

    checkSession();
});

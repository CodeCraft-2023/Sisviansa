// Supongamos que tienes un array de productos en el carrito
var carrito = [
    { id: 1, nombre: "Pizza", precio: 5 },
    { id: 2, nombre: "Hamburguesa", precio: 5 },
    // Otros productos en el carrito
];

// Función para generar las opciones del formulario basadas en el carrito
function generarOpciones() {
    var opcionesHTML = "";

    carrito.forEach(function (producto) {
        opcionesHTML += `<input type="checkbox" name="productos[${producto.id}]" value="${producto.nombre}"> ${producto.nombre}<br>`;
    });

    return opcionesHTML;
}

// Luego, en tu función mostrarModal(), puedes llamar a esta función para actualizar las opciones del formulario
function mostrarModal() {
    // Muestra el fondo oscuro y la ventana modal
    document.getElementById('modal').style.display = 'flex';

    // Actualiza las opciones del formulario con los productos en el carrito
    document.getElementById('productos').innerHTML = generarOpciones();
}

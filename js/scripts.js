const Clickbutton = document.querySelectorAll('.button');
const tbody = document.querySelector('.tbody');
let carrito = [];

Clickbutton.forEach(btn => {
  btn.addEventListener('click', addToCarritoItem);
});

function addToCarritoItem(e) {
  const button = e.target;
  const item = button.closest('.card');
  const itemTitle = item.querySelector('.card-title').textContent;
  const itemPrice = item.querySelector('.precio').textContent;
  const itemImg = item.querySelector('.card-img-top').src;

  const newItem = {
    title: itemTitle,
    precio: itemPrice,
    img: itemImg,
    cantidad: 1
  };

  addItemCarrito(newItem);
}

function addItemCarrito(newItem) {
  const alert = document.querySelector('.alert');
  setTimeout(() => {
    alert.classList.add('hide');
  }, 2000);
  alert.classList.remove('hide');

  const existingItem = carrito.find(item => item.title.trim() === newItem.title.trim());

  if (existingItem) {
    existingItem.cantidad++;
  } else {
    carrito.push(newItem);
  }

  renderCarrito();
}

function renderCarrito() {
  tbody.innerHTML = '';
  carrito.forEach((item, index) => {
    const tr = document.createElement('tr');
    tr.classList.add('ItemCarrito');
    tr.innerHTML = `
      <th scope="row">${index + 1}</th>
      <td class="table__productos">
        <img src="${item.img}" alt="">
        <h6 class="title">${item.title}</h6>
      </td>
      <td class="table__price"><p>${item.precio}</p></td>
      <td class="table__cantidad">
        <input type="number" min="1" value="${item.cantidad}" class="input__elemento">
        <button class="delete btn btn-danger">x</button>
      </td>
    `;
    tbody.appendChild(tr);

    tr.querySelector(".delete").addEventListener('click', removeItemCarrito);
    tr.querySelector(".input__elemento").addEventListener('change', sumaCantidad);
  });

  CarritoTotal();
}

function CarritoTotal() {
  let Total = 0;
  const itemCartTotal = document.querySelector('.itemCartTotal');
  carrito.forEach(item => {
    const precio = Number(item.precio.replace("$", ''));
    Total += precio * item.cantidad;
  });

  itemCartTotal.innerHTML = `Total $${Total}`;
  addLocalStorage();
}

function removeItemCarrito(e) {
  const buttonDelete = e.target;
  const tr = buttonDelete.closest(".ItemCarrito");
  const title = tr.querySelector('.title').textContent;

  carrito = carrito.filter(item => item.title.trim() !== title.trim());

  const alert = document.querySelector('.remove');
  setTimeout(() => {
    alert.classList.add('remove');
  }, 2000);
  alert.classList.remove('remove');

  tr.remove();
  CarritoTotal();
}

function sumaCantidad(e) {
  const sumaInput = e.target;
  const tr = sumaInput.closest(".ItemCarrito");
  const title = tr.querySelector('.title').textContent;

  const item = carrito.find(item => item.title.trim() === title.trim());

  if (item) {
    sumaInput.value = Math.max(1, sumaInput.value);
    item.cantidad = parseInt(sumaInput.value);
  }

  CarritoTotal();
}

function addLocalStorage() {
  localStorage.setItem('carrito', JSON.stringify(carrito));
}

window.onload = function () {
  const storage = JSON.parse(localStorage.getItem('carrito'));
  if (storage) {
    carrito = storage;
    renderCarrito();
  }
};

// Función para mostrar el modal
function mostrarModal() {
  const modal = document.getElementById('modal');
  modal.style.display = 'flex';
  const productosChecklist = document.getElementById('productosChecklist');
  productosChecklist.innerHTML = '';

  carrito.forEach((item, index) => {
    const checkbox = document.createElement('input');
    checkbox.type = 'checkbox';
    checkbox.name = `productos[${index}]`;
    checkbox.value = item.title;
    checkbox.checked = true;

    const label = document.createElement('label');
    label.appendChild(document.createTextNode(item.title));

    productosChecklist.appendChild(checkbox);
    productosChecklist.appendChild(label);
    productosChecklist.appendChild(document.createElement('br'));
  });
}

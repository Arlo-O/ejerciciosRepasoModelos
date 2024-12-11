const productos = [ //Arreglo de los productos con nombre y precio
    { nombre: 'Producto 1', precio: 10 },
    { nombre: 'Producto 2', precio: 20 },
    { nombre: 'Producto 3', precio: 30 },
    { nombre: 'Producto 4', precio: 40 },
    { nombre: 'Producto 5', precio: 50 }
];

const listaProductos = document.getElementById('divListaProductos'); //Obtener el div de la lista de los productos del html
const precioMaximoInput = document.getElementById('inputPrecioMaximo'); //Obtener el input del precio del html

function mostrarProductos(precioMaximo) { //Funcion que toma como argumento el precio maximo para usarlo como lim superior
    listaProductos.innerHTML = ''; // Limpiar la lista actual antes de mostrar los porductos
    const productosFiltrados = productos.filter(producto => producto.precio <= precioMaximo); //Con filter se crea un arreglo de productos filtrados con precio menor o igual a precioMaximo

    productosFiltrados.forEach(producto => { //Iterar sobre cada producto de los filtrados
        const divProducto = document.createElement('div'); // Crear div para representar cada producto
        divProducto.textContent = `${producto.nombre} - $${producto.precio}`; //Da el contenido de texo al div para mostrar producto y precio
        listaProductos.appendChild(divProducto);// Agrega el nuevo div al div de la lista de productos original
    });
}

precioMaximoInput.addEventListener('input', function() { //Listener de los cambios del input
    const precioMaximo = parseFloat(precioMaximoInput.value); //Convierte el contenido del input a un float
    if (!isNaN(precioMaximo)) { //Verifica si precioMaximo es un numero
        mostrarProductos(precioMaximo); //Llama a la funcion que muestra los productos filtrados con el valor ingresado al input
    } else {
        listaProductos.innerHTML = ''; // Limpiar si no es un número
    }
});

// Mostrar todos los productos al cargar la página
mostrarProductos(Infinity);
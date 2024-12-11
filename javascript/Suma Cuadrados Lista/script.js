document.getElementById('btnCalcularSuma').addEventListener('click', function() { //Obtiene el boton por el identificador y le agrega un listener de click y la funcion siguiente
    const listaItemsLi = document.querySelectorAll('#listaNumeros li'); // Obtener todos los li de la lista por el id del ul y que sean todos los li
    
    const numeros = Array.from(listaItemsLi) // Obtiene un array a partir de los elementos de la lista
                            .map(item => parseInt(item.textContent)); // Mapea cada elmento del array y convierte su contenido en un valor tipo Int

    // Calcular la suma de los cuadrados usando reduce
    const sumaCuadrados = numeros.map(num => num * num) // Obtiene la suma de cuadrados, al array de los numero lo mapea y a cada elmento lo multiplica por el mismo
                                .reduce((acc, curr) => acc + curr, 0); // Se usa reduce para reducir el arreglo a un solo valor
                                // Se inicializa un acc (acumulador) en cero y el valor actual que se esta procesando en la iteracion
                                //En cada iteracion el acc pasa a ser acc + curr, curr será cada vez el valor sobre el que se itera

    // Mostrar el resultado en el párrafo
    document.getElementById('pResultado').textContent = `La suma de los cuadrados es: ${sumaCuadrados}`;
});
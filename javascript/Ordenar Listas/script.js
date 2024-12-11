document.getElementById('btnOrdenar').addEventListener('click', function() { //Se obtiene el boton por el id, y se define el listener con el click a la funcion
    const lista = document.getElementById('listaNombres'); //Se obtiene la lista ul de nombres del doc html
    const nombres = Array.from(lista.getElementsByTagName('li')); //Se crea el arreglo de todos los elementos li de la lista ul

    const nombresOrdenados = nombres.map( li => li.textContent) // Se obtiene el contenido de los li (los nombres)
                                    .sort((a,b) => a.toLowerCase().localeCompare(b.toLowerCase())); // Ordena el arreglo según: se comparan las 2 cadenas ignorando las diferencias entre mayusculas y minusculas

    lista.innerHTML = ''; // Limpiar la lista ul, eliminar los li
    nombresOrdenados.forEach(nombre => { // Iterar sobre cada elemento de la lista de nombres ordenados
        const li = document.createElement('li'); //se crea al documento un li para cada nombre
        li.textContent = nombre; // A cada li se le da como contenido el nombre en el que va la iteración
        lista.appendChild(li); // Añade el li a la lista ul
    })
}) 
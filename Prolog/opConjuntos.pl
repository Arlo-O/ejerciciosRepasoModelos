union([], L, L). % Si la primera lista esta vacia se retorna la segunda
union(L, [], L). % Si la segunda lista esta vacia se retorna la primera
union([H|T], L, [H|R]) :- % Se agrega la cabeza de la primera lista al resultado si se cumplen las condiciones
    \+ member(H, L), % H (cabeza lista 1) no esta en la segunda lista
    union(T, L, R). % Llamada recursiva
union([H|T], L, R) :- % Se ignora la cabeza si cumple condiciones
    member(H, L), % Si la cabeza esta en la segunda lista
    union(T, L, R). % Se ignora la cabeza y se llama recursivamente

interseccion([], L, []). % caso base: la primera lista esta vacia, no hay intereseccion
interseccion(L, [], []). % caso base 2: la segunda lista esta vacia, no hay interseccion
interseccion([H|T], L, [H|R]) :- % Definicion, el resultado es la cabeza de la primera lista y la cola del resultado recursivo
    member(H,L), % La cabeza de la primera lista esta en la segunda lista
    interseccion(T, L, R). % Se llama recursivamente con las colas de la priemra fila
interseccion([H|T], L, R) :- % Definicion, el resultado no cambia si se cumplen las condiciones 
    \+ member(H,L), % La cabeza de la lista 1 no esta en L
    interseccion(T, L, R). %Lla mada recursivo de las colas de la lista 1

% diferencia(L, [], L).
diferencia(L, [], []). % Caso de fin de recursividad, ya se vacio la segunda lista se retorna una lista vacia
diferencia([], L, []). % caso base: la primera lista esta vacia, la diferencia será vacia
diferencia([H|T], L, R) :- %El resultado será el mismo si se cumplen condiciones (se ignora la cabeza)
    member(H, L), % la cabeza de la primera lista esta en l
    diferencia(T, L, R). % Recursividad con las colas de la primera lista
diferencia([H|T], L, [H|R]) :- % El resultado es la cabeza de la lista más el resultado recursivo
    \+ member(H, L), % La cabeza de la primera lista no esta en la segunda lista
    diferencia(T, L, R). % Se llama recursivamente con las colas de la primera lista
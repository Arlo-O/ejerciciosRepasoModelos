palindromo([]). % lista vacia 
palindromo(L) :-
    invertir(L, Invertida), % Se obtiene la lista invertida
    listasIguales(L, Invertida). %se compara si la lista dada y la invertida son iguales

invertir([], []). % lista vacia ya esta invertida
invertir([H|T], Invertida) :-
    invertir(T, TInvertida), % Invierte la cola de la lista
    append(TInvertida, [H], Invertida). % Agrega la cabeza al final de la lista invertida

listasIguales([], []). % caso base: dos listas vacias son iguales
listasIguales([H1|T1], [H2|T2]) :-
    H1 = H2, % comparar las cabezas de las listas
    listasIguales(T1, T2). % Llamar recursivamente con las colas de las listas
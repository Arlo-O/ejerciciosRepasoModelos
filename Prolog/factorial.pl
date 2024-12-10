factorial(0, 1). %el factorial de 0 es 1
factorial(N, Resultado) :-
    N > 0, % verificar que es mayor que cero
    N1 is N -1, % encontrar N-1
    factorial(N1, Resultado1), %Factorial de N-1
    Resultado is N * Resultado1. %Resultado = N * resultado de factorial(N-1)
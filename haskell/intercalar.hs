intercalar :: [a]-> [a] -> [a]
intercalar [] [] = [] -- caso 1: ambas listas vacias retorna lista vacia
intercalar [] ys = ys -- caso 2: primera lista vacia, retorna la segunda lista
intercalar xs [] = xs -- caso 3: segunda lista vacia, retorna la primera lista
intercalar (x:xs) (y:ys) = x : y : intercalar xs ys -- caso 4 retorna una lista con el primer elemento de la primera el primer elemento de la segunda y llama a la funcion de nuevo con las colas
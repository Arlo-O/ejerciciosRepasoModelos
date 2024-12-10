aplicarATodos :: (a -> b) -> [a] -> [b]
aplicarATodos _ [] = [] -- el _ significa que no nos importa el valor que recibamos como primer argumento
aplicarATodos f xs = map f xs -- Se aplica la funcion recibida a cada elemento de la lista recibida

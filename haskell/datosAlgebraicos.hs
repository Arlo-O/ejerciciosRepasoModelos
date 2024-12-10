data Figura = Circulo Float
            | Rectangulo Float Float
            | Triangulo Float Float

area :: Figura -> Float --Recibe una figura y retorna un float
-- Casos para cada figura y retronando valor segun su formula de area
area (Circulo radio) = pi * radio * radio
area (Rectangulo ancho alto) = ancho * alto
area (Triangulo base altura) = base * altura * 0.5
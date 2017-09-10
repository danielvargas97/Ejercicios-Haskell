
--21 en Haskell

-- Genera el mazo inicial del 21 
mazo :: [(String,String)]
mazo = [(x,y) | x<- ["Diamante","Pica","Trebol","Corazon"], y <- ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]  ]

-- Ingresa una carta a la mano
pedirCarta :: [(String,String)]->[(String,String)]->[(String,String)]
pedirCarta x y = x++[y!!0]

--Realiza la sumatoria del valor de las cartas
contarCarta :: [(String,String)]-> Int
contarCarta [] = 0
contarCarta (x:xs) = contarCarta (xs) +valorCarta (x)

--Funcion para decrementar el valor de cada as (si los hay) de 11 a 1 en caso que la suma de la mano sea mayor a 21
descontarAs :: [(String,String)]->Int->Int
descontarAs [] y = y
descontarAs (x:xs) y = if snd x == "A" && y>21 then descontarAs xs (y-10) else  descontarAs xs y

-- Funcion para calcular el valor de la mano adecuado
valorMano :: [(String,String)]->Int
valorMano x = descontarAs x (contarCarta x)

-- Toma la carta y devuelve su valor numerico
valorCarta :: (String,String)->Int
valorCarta (_,"A") = 11
valorCarta (_,"J") = 10
valorCarta (_,"Q") = 10
valorCarta (_,"K") = 10
valorCarta (_,"2") = 2
valorCarta (_,"3") = 3
valorCarta (_,"4") = 4
valorCarta (_,"5") = 5
valorCarta (_,"6") = 6
valorCarta (_,"7") = 7
valorCarta (_,"8") = 8
valorCarta (_,"9") = 9
valorCarta (_,"10")= 10

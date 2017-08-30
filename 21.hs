
--21 en Haskell 
mazo :: [(String,String)]
mazo = [(x,y) | x<- ["Diamante","Pica","Trebol","Corazon"], y <- ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]  ]

cortar :: Int->[(String,String)]
cortar y = if y>=0 && y<length [x | x<-mazo, x/= mazo!!y] then [x | x<-mazo, x/= mazo!!y] else []

pedirCarta :: [(String,String)]->[(String,String)]->[(String,String)]
pedirCarta x y = x++[y!!0]

contarCarta' :: [(String,String)]->Int-> Int
contarCarta' [] y = y
contarCarta' x y = contarCarta' (drop 1 x) (y+(valorCarta (x!!0) y))

contarCarta :: [(String,String)]->Int
contarCarta x = contarCarta' x 0

valorCarta :: (String,String)->Int->Int
valorCarta (_,"A") suma = if suma>10 then 1 else 11
valorCarta (_,"J") suma = 10
valorCarta (_,"Q") suma = 10
valorCarta (_,"K") suma = 10
valorCarta (_,"2") suma = 2
valorCarta (_,"3") suma = 3
valorCarta (_,"4") suma = 4
valorCarta (_,"5") suma = 5
valorCarta (_,"6") suma = 6
valorCarta (_,"7") suma = 7
valorCarta (_,"8") suma = 8
valorCarta (_,"9") suma = 9
valorCarta (_,"10") suma = 10

matriz :: [[Char]]
matriz = [ ['1','1','1','1','1','1','1','1'],
	   ['1','1','1','1','1','1','1','1'],
	   ['1','F','0','0','1','1','1','1'],
	   ['1','1','X','0','1','1','1','1'],
	   ['1','1','1','1','1','1','1','1'],
	   ['1','1','1','1','1','1','1','1']]


indice :: [[Char]]->Int->Int->Char
indice x fila columna = (x!!fila)!!columna


indicex :: [[Char]]->(Int,Int)->Char
indicex y (fila,columna) =  (y!!fila)!!columna

encontrarEquis::[[Char]]->Int->Int->String
encontrarEquis x fila columna = if indice x fila columna == 'X' then "Si hay x" else  encontrarEquis x (fila+1) (columna)
 



moverHorizontal :: [Char]->Char->Int->Int
moverHorizontal [] _ _ = (-1)
moverHorizontal (x:xs) letra columna = if x == letra then columna else moverHorizontal xs letra (columna+1)


moverVertical :: [[Char]]->Char->Int->(Int,Int)
moverVertical (x:xs) letra fila = if moverHorizontal x letra 0 /= (-1) then (fila, moverHorizontal x letra 0) else moverVertical xs letra (fila+1)
moverVertical [] _ _ = (-1,-1)

moverIzquierda :: (Int,Int)->(Int,Int)
moverIzquierda (a,b) = (a,b-1)

moverDerecha :: (Int,Int)->(Int,Int)
moverDerecha (a,b) = (a,b+1)

posicionInicial :: [[Char]]->(Int,Int)
posicionInicial x = moverVertical x 'X' 0
 

posicionFinal :: [[Char]]->(Int,Int)
posicionFinal x = moverVertical x 'F' 0


laberinto :: [[Char]]->(Int,Int)->(Int,Int)->[(Int,Int)]->[(Int,Int)]

laberinto x (a,b) (c,d) w = if (a,b) == posicionFinal x 
								then [(a,b)] 
							else 
								[(c,d)]



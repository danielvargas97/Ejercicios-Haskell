matriz :: [[Char]]
matriz = [ ['1','S','F','1','1','1','1','1'],
		   ['1','S','F','1','1','1','1','1'],
		   ['1','S','F','1','1','1','1','1'],
		   ['1','S','F','1','1','1','1','1'],
		   ['1','S','F','1','1','1','1','1']]


indice :: [[Char]]->Int->Int->Char
indice x fila columna = (x!!fila)!!columna



solucionLab :: [[Char]->Int->Int->Int->Int->[(Int,Int)]
solucion x filainicio columnainicio filafinal columnafinal

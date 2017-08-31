{-
	Modelos II - Gr. 82
	
	Impares

-}

impares :: [Int]->[Int]
impares [] = []
impares (x:(y:ys)) = x:impares ys
impares (x:[]) = x:impares []





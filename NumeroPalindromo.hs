{-
	Modelos de Progr. 2
	Gr. 020-82
-}

contarDiv :: Integer->Integer
contarDiv b = if b>=0 && b<10 then 1 else 1 + contarDiv (b`div`10)

--Recursion de elevar a potencia positiva
elevar :: Integer->Integer->Integer
elevar x y = if y==0 then 1 else x*elevar x (y-1)

--Realizar la reversion del numero
reversar :: Integer->Integer
reversar n = reversar' (n) ((contarDiv n) -1)

--Recursion de reversar entero
reversar' :: Integer->Integer->Integer
reversar' x y = if x>=0 && x<10 then x else (elevar 10 y)*(x`mod`10) + reversar'(x`div`10) (y-1)

--Comprueba si el numero es palindromo
palindromo :: Integer->String
palindromo x = if x == (reversar x) then "es palindomo" else "no es palindomo"

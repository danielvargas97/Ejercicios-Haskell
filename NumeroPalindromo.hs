{-
	Modelos de Progr. 2


	Gr. 020-82

	Numero palindromo
-}

--Recursion de reversar entero
reversar :: Integer->Integer->Integer
reversar x y = if x== 0 then y else reversar(div x 10) ((y*10)+ (mod x 10))



--Comprueba si el numero es palindromo
palindromo :: Integer->String
palindromo x = if x == (reversar x 0) then "es palindomo" else "no es palindomo"

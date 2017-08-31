divide :: Integer->Integer->Integer
divide a b = if a<b then 0 else 1+divide (a-b) b 
divide -a -b = if a<b then 0 else 1+divide(a+b) b

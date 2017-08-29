decbin :: Integer->Integer
decbin 0 = 0
decbin 1 = 1
decbin n = (n`mod`2)+10*decbin(n`div`2)

bindec :: Integer->Integer
bindec 0 = 0
bindec 1 = 1
bindec n = (n`mod`10)+2*bindec(n`div`10)
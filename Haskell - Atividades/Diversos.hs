ouExc :: Bool -> Bool -> Bool
ouExc x y = (x||y) && not (x && y)

outro :: Int -> Int
outro x = 2*x

iguais3 :: Int -> Int -> Int -> Bool
iguais3 a b c = (a == b) && (b == c)

areaCirc :: Float -> Float
areaCirc r = pi * (r**2)

areaRet :: Float -> Float -> Float
areaRet comp alt = comp * alt

dif3 :: Float -> Float -> Float -> Bool
dif3 a b c = (a /= b) && (a /= c) && (b /= c)

dif4 :: Float -> Float -> Float -> Float -> Bool
dif4 a b c d = (dif3 a b c) && (dif3 b c d) && (a /= d)

ehtriang :: Float -> Float -> Float -> Bool
ehtriang a b c = (a+b > c) && (a+c > b) && (b+c > a)

escaleno :: Float -> Float -> Float -> Bool
escaleno a b c = (ehtriang a b c) && (dif3 a b c)

equilatero :: Float -> Float -> Float -> Bool
equilatero a b c = (a == b) && (b == c) && (ehtriang a b c)

somatorio :: Int -> Int
somatorio 1 = 1
somatorio n = n + somatorio (n - 1)

fatorial :: Int -> Int
fatorial 1 = 1
fatorial n = n*fatorial (n-1)

fibo :: Int -> Int
fibo 1 = 1
fibo 2 = 1
fibo n = fibo (n-1) + fibo (n-2)

maior :: Float -> Float -> Float
maior x y = if x>=y then x else y

maiorv2  :: Float -> Float -> Float
maiorv2 x y 
  |x>=y = x
  |otherwise = y

muitoUtil :: Int -> Int -> Int -> Int
muitoUtil a b c
  |a == 7 = 10
  |b == 8 = 20
  |c == 9 = 30
  |otherwise = 0

-- Função que calcula fatorial usando guardas
fatV2 :: Int -> Int
fatV2 x
  |x == 1 = 1
  |x > 1 = x * fatV2 (x-1)
  |otherwise = error "Fatorial de numero negativo nao pode ser calculado"
 

-- Função que calcula fatorial usando casamento de padrões e guardas
fatV3 :: Int -> Int
fatV3 1 = 1
fatV3 x
  |x > 1 = x * fatV3 (x-1)
  |otherwise = error "Fatorial de numero negativo nao pode ser calculado"








area :: Float -> Float
area r = 3.14 * r^2

reta :: Float -> Float -> Float
reta comp alt = comp*alt

diferente :: Int -> Int -> Int -> Bool
diferente x y z = (x/=y) && (y/=z)

quatro :: Int -> Int -> Int -> Int -> Bool
quatro x y z r = (diferente x y z) && (z/=r)

triangulo :: Int -> Int -> Int -> Bool
triangulo a b c = (a + b > c) || (a + c > b) || (b + c > a)

equilatero :: Int -> Int -> Int -> Bool
equilatero a b c = (triangulo a b c) && ((a==b) && (a==c))

escaleno :: Int -> Int -> Int -> Bool
escaleno a b c = (triangulo a b c) && ((a/=b) && (b/=c) && (a/=c))

isoceles :: Int -> Int -> Int -> Bool
isoceles a b c = (triangulo a b c) && not(equilatero a b c) && ((a==b) || (b==c) || (a==c))

fatorial :: Int -> Int
fatorial 1 = 1
fatorial a = a*fatorial(a - 1)

fibo :: Int -> Int 
fibo 1 = 1
fibo 2 = 1
fibo n = fibo(n-1)+fibo(n-2)

triangulo2 :: Int -> Int -> Int -> IO()
triangulo2 a b c
  |(equilatero a b c) = putStrLn "o triangulo eh equilatero"
  |(escaleno a b c) = putStrLn "o triangulo eh escaleno"
  |(isoceles a b c) = putStrLn "triangulo eh isoceles"
  |otherwise = putStrLn "error 404"

saude :: Int -> IO()
saude a
  |a <= 20 = putStrLn "Valor a pagar R$300.00"
  |a <= 50 = putStrLn "Valor a pagar R$500.00"
  |a <= 60 = putStrLn "Valor a pagar R$600.00"
  |otherwise = putStrLn "Valor a pagar R$800.00"

-- soma dos elementos em lista
soma :: [Int] -> Int
soma [] = 0
soma(x:xs) = x + soma xs

-- numero de elementos na lista
elementos :: [Int] -> Int
elementos [] = 0
elementos(x:xs) = 1 + elementos xs

-- dobro do seu elemento na lista
dobro :: [Int] -> [Int]
dobro [] = []
dobro(x:xs) = 2*x:dobro xs

-- retorna uma lista de somente os numeros pares
pares :: [Int] -> [Int]
pares [] = []
pares(x:xs)
  |mod x 2 == 0 = x : pares xs
  |otherwise = pares xs

-- retorna somente os n primeiros valores da lista
nlista :: [Int] -> Int -> [Int]
nlista [] a = [] 
nlista(x:xs) a 
  |a > 0 = x : nlista xs (a-1)
  |otherwise = []

-- retorna o resto da divisão
-- a dividendo / b divisor
resto :: Int -> Int -> Int
resto a b
  |b > a = a
  |b == a = 0
  |otherwise = resto(a-b) b

-- multiplicação dos elementos da lista
multList :: [Int] -> Int
multList [] = 1
multList (x:xs) = x * multList xs 

-- MDC (maior numero que se da pra dividir tais elementos)
mdc :: Int -> Int -> Int
mdc a 0 = a
mdc a b = mdc b (a `mod` b)



crescente :: (Ord t) => t -> t -> Bool

crescente x y = x <= y

descrescente :: (Ord t) => t -> t -> Bool

descrescente x y = x >= y

ordenada :: (Ord t) => [t] -> (t -> t -> Bool) -> Bool

ordenada [] _ = True

ordenada [_] _ = True

ordenada (x:y:xs) cmp = (cmp x y) && (ordenada (y : xs) cmp)

crescenteOuDecrescente :: (Ord t) => [t] -> Bool

crescenteOuDecrescente x = ordenada x crescente || ordenada x descrescente



reduzir :: (a -> a -> a) -> [a] -> a
reduzir f [a] = a
reduzir f (a:b) = f a (reduzir f b)


















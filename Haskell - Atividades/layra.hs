f :: Int -> Int -> Int -> Int
f 7 y z = 10
f x 8 z = 20
f x y 9 = 30
f x y z = 0


teste :: Int -> Int -> Int -> Int
teste 7 _ _ = 10
teste _ 8 _ = 20
teste _ _ 9 = 30
teste _ _ _ = 0


parOuImpar :: Int -> IO()
parOuImpar n
  |(mod n 2 == 0) = putStrLn "par"
  |otherwise = putStrLn "impar"


multiplo :: Int -> IO()
multiplo n
  |(mod n 2 == 0 && mod n 5 == 0 && mod n 3 == 0) = putStrLn "eh multiplo de 2, de 5 e de 3"
  |(mod n 2 == 0 && mod n 5 == 0) = putStrLn "eh multiplo de 2 e de 5"
  |(mod n 2 == 0 && mod n 3 == 0) = putStrLn "eh multiplo de 2 e de 3"
  |(mod n 3 == 0 && mod n 5 == 0) = putStrLn "eh multiplo de 3 e de 5"
  |(mod n 2 == 0) = putStrLn "eh multiplo de 2"
  |(mod n 3 == 0) = putStrLn "eh multiplo de 3"
  |(mod n 5 == 0) = putStrLn "eh multiplo de 5"
  |otherwise = putStrLn "nao eh multiplo de nenhum deles" 



maior :: Int -> Int -> Int -> String
maior x y z
  |(x > y && x > z) = show x ++ " eh o maior numero"
  |(x == y && x > z) = show x ++ " eh o maior numero"
  |(x > y && x == z) = show x ++ " eh o maior numero"
  |(y > x && y > z) = show y ++ " eh o maior numero"
  |(y == x && y > z) = show y ++ " eh o maior numero"
  |(y > x && y == z) = show y ++ " eh o maior numero"
  |(z > x && z > y) = show z ++ " eh o maior numero"
  |(z == x && z > y) = show z ++ " eh o maior numero"
  |(z > x && z == y) = show z ++ " eh o maior numero"
  |otherwise = show "todos os numeros sao iguais"


quantos :: [a] -> Int
quantos [] = 0
quantos (x:xs) = 1 + quantos xs

cauda :: [t] -> [t]
cauda [] = []
cauda (x:xs) = xs


-- Faça uma função polimorfica que dadas duas listas de qualquer tipo dê
-- como resultado uma lista de tuplas-2 onde o primeiro elemento vem da primeira
-- lista e o segundo vem da segunda lista
poly :: [a] -> [b] -> [(a, b)] -- Assinatura da Função
poly [] _ = []
poly _ [] = []
poly (x:xs) (y:ys) = (x,y): poly xs ys -- Casamento de padrões

poly2 :: [a] -> [b] -> [(a, b)]
poly2 l1 l2 = [(x,y)|x <- l1, y <- l2] -- List comprehension



-- Faça uma função polimórfica que dada uma
-- lista de qualquer tipo e um número inteiro n e,
-- sem usar o take, retorne uma lista com os n
-- primeiros elementos da lista passada.
elementos :: [a] -> Int -> [a]
elementos [] _ = []
elementos _ 0 =[]
elementos (x:xs) ne 
  |ne>0 = x:elementos xs (ne-1) 
  |otherwise = []


-- Faça uma função polimórfica que dada uma
-- lista qualquer, sem usar o last, retorne o último
-- elemento da lista passada.

poli :: [a] -> a
poli [x] = x
poli (_:xs) = poli xs


-- Crie uma função polimórfica que receba uma lista de
-- um determinado tipo e retorne o menor valor da lista.

listaa :: (Ord a)=>[a] -> a 
listaa [x] = x
listaa (x:y:xs)
  |x < y = listaa(x:xs)
  |otherwise = listaa(y:xs)



-- Crie uma função polimórfica que receba limite inicial e
-- final de um intervalo contínuo de inteiros, reais ou char e
-- retorne quantos elementos há neste intervalo, incluindo os
-- limites. Obs: Os números reais são contados a partir do
-- número inicial com incremento 1.


intervalo :: (Enum a) => a -> a -> [a]
intervalo x y = [z|z <- [x..y]]

exercicio :: (Enum a) => a -> a -> Imt
exercicio x y = quamtos(intervaloB x y)

intervaloB :: (Enum a) => a -> a -> 


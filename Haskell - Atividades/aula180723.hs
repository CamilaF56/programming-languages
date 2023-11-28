import Data.Char

mapear :: (Real a) => (a -> a) -> [a] -> [a]
mapear f [] = []
mapear f (x:xs) = f x : (mapear f xs) 

filtrar :: (Real a ) => (a -> Bool) -> [a] -> [a]
filtrar f [] = []
filtrar f (x:xs)
  |f x = x: (filtrar f xs)
  |otherwise = filtrar f xs


reduzir :: (Real a) => (a -> a -> a) -> [a] -> a
reduzir f [x] = x
reduzir f (x:xs) = f x (reduzir f xs) 


quadrado :: Float -> Float
quadrado n = n*n

ex3aux :: [Float] -> Float -> [Float]
ex3aux [] _ = []
ex3aux (x:xs) n = (x/n):ex3aux xs (n+1)

ex3 :: [Float] -> Float
ex3 lista = reduzir (+) (ex3aux (mapear (quadrado) lista) 1)


conta :: (Num a) => [a] -> Int
conta [] = 0
conta (x:xs) = 1 + conta xs

ex3aux2 :: [Float] -> [Float]
ex3aux2 lista = [fromIntegral y | y <- [1..(conta lista)]]

ex3aux2b :: [Float] -> [Float] -> [Float]
ex3aux2b [] _ = []
ex3aux2b (x:xs) (y:ys) = x/y: ex3aux2b xs ys

ex3b :: [Float] -> Float
ex3b lista = reduzir (+) (ex3aux2b (mapear quadrado lista) (ex3aux2 lista))

maiusc :: String -> String
maiusc [] = []
maiusc (x:xs) = (toUpper x) : maiusc xs

minusc :: String -> String
minusc [] = []
minusc (x:xs) = (toLower x) : minusc xs

ex4 :: String -> Int -> String
ex4 [] _ = []
ex4 (x:xs) n
  |n == 1 = (toUpper x) : ex4 xs n 
  |otherwise = (toLower x) : ex4 xs n 


ex4b :: String -> Int -> String
ex4b [] _ = []
ex4b lista n
  |n == 1 = maiusc lista 
  |otherwise = minusc lista 

desloca :: Char -> Int -> Char
desloca x n = chr((ord x) + n)

cripto :: String -> Int -> String
cripto [] _ = [] 
cripto (x:xs) n = chr((ord x) + n) : cripto xs n


cripto2 :: String -> Int -> String
cripto2 [] _ = [] 
cripto2 (x:xs) n
  |chr((ord x) + n) > 'z' = chr((((ord x) + n) - (ord 'z')) + (ord 'a') - 1) : cripto2 xs n
  |otherwise = chr((ord x) + n) : cripto2 xs n


criaL :: [Float]
criaL = [x*x|x <- [1..50]]

exLC3 :: Float
exLC3 = reduzir (+) criaL

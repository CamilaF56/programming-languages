import Data.Char

-- Exercicio 1
mapear :: (Float -> Float) -> [Float] -> [Float]
mapear f [ ] = [ ]
mapear f (a:b) = (f a) : (mapear f b) 

multiplos :: Float -> [Float] -> [Float]
multiplos _ [] = []
multiplos n (x:xs) = (5 *(x*n)) : (multiplos (n + 1) xs)

reduzir :: (Float -> Float -> Float) -> [Float] -> Float
reduzir f [x] = x
reduzir f (a:xs) = f a (reduzir f xs)

q1 :: [Float] -> Float
q1 xs = reduzir (+) (multiplos 1 (mapear (/2) xs))  



-- Exercicio 2
q2 :: String -> [(Char, Int)]
q2 list = [(x,ord x)| x<-list]



--Exercicio 3
aux :: [a] -> Int -> a
aux (x:xs) n 
  |n == 1 = x
  |otherwise = aux xs (n-1)

len :: [a] -> Int
len [] = 0
len (_:xs) = 1+ len xs

q3 :: [a] -> [Int] -> [a]
q3 _ [] = []
q3 elemento (b:pos)
  | b < (len elemento) = (aux elemento b) : q3 elemento pos
  | otherwise = [] 

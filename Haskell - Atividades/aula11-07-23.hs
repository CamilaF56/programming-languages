quantos :: [a] -> Int
quantos [] = 0
quantos (x:xs) = 1 + quantos xs

cabeca :: [qqr] -> qqr
cabeca [] = error "Lista vazia"
cabeca (x:xs) = x

cauda :: [t] -> [t]
cauda [] = []
cauda (x:xs) = xs

membro :: (Eq a) => [a] -> a -> Bool
membro [] _ = False
membro (x:xs) n
  |x == n = True
  |otherwise = membro xs n

junta :: [a] -> [b] -> [c] -> [(a,b,c)]
junta l1 l2 l3 = [(x,y,z)|x <- l1, y<- l2, z <- l3]

junta2 :: [a] -> [b] -> [c] -> [(a,b,c)]
junta2 [] _ _ = []
junta2 _ [] _ = []
junta2 _ _ [] = []
junta2 (x:xs) (y:ys) (z:zs)= (x,y,z): junta2 xs ys zs

primeiros :: [t] -> Int -> [t]
primeiros [] _ = []
primeiros _ 0 = []
primeiros (x:xs) n = x:primeiros xs (n-1) 

menor :: (Ord a) => [a] -> a
menor [] = error "Lista vazia"
menor [x] = x
menor (x:y:xs)
  |x<y = menor (x:xs)
  |otherwise = menor (y:xs)

mapear :: (Float -> Float) -> [Float] -> [Float]
mapear f [] = []
mapear f (x:xs) = (f x) : (mapear f xs)

difffff :: [Float] -> [Float]
difffff [] = []
difffff (x:xs) = (dobro x): difffff xs

dobro :: Float -> Float
dobro x = x*2

triplo :: Float -> Float
triplo x = x*3

maiorQ2 :: Int -> Bool
maiorQ2 x
  |x > 2 = True
  |otherwise = False

filtrar :: (Int -> Bool) -> [Int] -> [Int]
filtrar f [] = []
filtrar f (x:xs)
  |f x = x: filtrar f xs
  |otherwise = filtrar f xs

reduzir :: (Float -> Float -> Float) -> [Float] -> Float
reduzir f [x] = x
reduzir f [] = error "Lista vazia"
reduzir f (x:xs) = f x (reduzir f xs)

















-- Questão 2 

list :: Eq a => [a] -> a -> Bool
list [] _ = False
list (x:xs) produto
  | x == produto = True
  | otherwise = list xs produto
 
-- Questão 3


type ListInt = Int
type Aleat = Int

mult :: [ListInt] -> Aleat -> [ListInt]
mult [] _= []
mult(x:xs) n = x*n: mult xs n


-- Questão 4


maior :: [Int] -> Int
maior [x] = x
maior (x:xs)  
  |  x  > maior xs = x
  |otherwise = maior xs 


-- Questão 5


invert :: [Int] -> [Int]
invert list = reverse list


-- Questão 6


dife3 :: Int -> Int -> Int -> Bool
dife3 a b c = a/=b && a/=c && b/=c

formaTri :: Int -> Int -> Int -> Bool
formaTri a b c = (a+b > c) && (a+c>b) && (b+c>a)

triangEsc :: Int -> Int -> Int -> Bool
triangEsc a b c = (formaTri a b c) && (dife3 a b c)

triangEq :: Int -> Int -> Int -> Bool
triangEq a b c = (formaTri a b c) && a == b && b == c

triangIso :: Int -> Int -> Int -> Bool
triangIso a b c = (formaTri a b c) && not(triangEq a b c) && (a == b || b == c || a == c)

type Triang = (String, Int)

verificaTri :: Int -> Int -> Int -> [Triang]
verificaTri a b c
    | triangEsc a b c = [("Escaleno",  a + b + c)]
    | triangEq a b c = [("Equilatero", a + b + c)]
    | triangIso a b c = [("Isosceles", a + b + c)]
    | otherwise = []


-- Questão 7
type ListCompr1 = (String, Float)

comprs1 :: [ListCompr1] -> Float
comprs1 [] = 0.0
comprs1 ((_, x):xs) = comprs1 xs + x

-- Questão 8
type ListCompr2 = (String, Float, Int)

comprs2 :: [ListCompr2] -> Float
comprs2 [] = 0.0
comprs2 ((_, price, quantity):xs) = (comprs2 xs) + (price * fromIntegral quantity)

-- Questão 9

type Produto = (String, Float)

exibirValorParcial :: [Produto] -> [(String, Float, Float)]
exibirValorParcial produtos = map (\(nome, valor) -> (nome, valor, valor * quantidadeComprada nome produtos)) produtos
  where
    quantidadeComprada nome = sum . map snd . filter (\(n, _) -> n == nome)



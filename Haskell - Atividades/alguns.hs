--Terceira questão





type ListaInt = Int

type Qualquer = Int



multiplica :: [ListaInt] -> Qualquer -> [ListaInt]

multiplica [] _= []

multiplica (x:xs) n = x*n: multiplica xs n





--Quarta questão





maior :: [Int] -> Int

maior [x] = x

maior (x:xs)  

  |  x  > maior xs = x

  |otherwise = maior xs 





--Quinta questão





invertida :: [Int] -> [Int]

invertida lista = reverse lista





--Sexta questão





dif3 :: Int -> Int -> Int -> Bool

dif3 a b c = a/=b && a/=c && b/=c



formaTri :: Int -> Int -> Int -> Bool

formaTri a b c = (a+b > c) && (a+c>b) && (b+c>a)



triEsc :: Int -> Int -> Int -> Bool

triEsc a b c = (formaTri a b c) && (dif3 a b c)



triEq :: Int -> Int -> Int -> Bool

triEq a b c = (formaTri a b c) && a == b && b == c



triIso :: Int -> Int -> Int -> Bool

triIso a b c = (formaTri a b c) && not(triEq a b c) && (a == b || b == c || a == c)



type Triang = (String, Int)



verificaTri :: Int -> Int -> Int -> [Triang]

verificaTri a b c

    | triEsc a b c = [("Escaleno",  a + b + c)]

    | triEq a b c = [("Equilatero", a + b + c)]

    | triIso a b c = [("Isosceles", a + b + c)]

    | otherwise = []





--Setima questão





type ListaCompra = (String, Float)



compras :: [ListaCompra] -> Float

compras [] = 0.0

compras ((_, x):xs) =  compras xs + x



--Oitava questão





type Lista_Compras = (String, Float, Float)



valortotal :: [Lista_Compras] -> Float

valortotal [] = 0.0

valortotal ((_, quant, x):xs) =  valortotal xs + quant * x





 --Nona questão





type Lista_Compras2 = (String, Float, Float)



valorparcial :: [Lista_Compras2] -> [(String, Float)]

valorparcial [] = []

valorparcial ((prod, quant, preco):xs) =  (prod, quant*preco) : valorparcial xs
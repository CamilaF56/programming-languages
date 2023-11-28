
-- 2)Faça uma função que receba uma lista de
-- produtos e um produto e retorne verdadeiro
-- caso esse elemento pertença a lista.

-- EXEMPLO USADO EM TESTE: listProducts ["uva", "laranja", "galinha", "linhaça"] "laranja"

listProducts :: [String] -> String -> Bool
listProducts [] _ = False
listProducts(x:xs) a
  |x == a = True
  |otherwise = listProducts xs a



-- 3)Faça uma função que receba um inteiro n
-- qualquer e uma lista de inteiros e retorne outra
-- lista de inteiros onde cada número está
-- multiplicado pelo inteiro passado.

-- EXEMPLO USADO EM TESTE: listMult 5 [4,8,2]

listMult :: Int -> [Int] -> [Int]
listMult _ [] = []
listMult a (x:xs)
  |a == 1 = a*x : listMult a xs
  |otherwise = x*a:listMult a xs



-- 4) Faça uma função que leia uma lista de inteiros
-- e retorne o maior elemento da lista.

-- EXEMPLO USADO EM TESTE: listMaior [1,6,7,3]

listMaior :: [Int] -> Int
listMaior [] = 0
listMaior(x:xs)
  | x > listMaior xs = x
  |otherwise = listMaior xs



-- 5) Faça uma função que receba uma lista de
-- inteiros e exiba a lista invertida. Ex: [1,2,3,4] sairá
-- [4,3,2,1]

-- EXEMPLO USADO EM TESTE: listInverted [1,2,3,4]

listInverted :: [Int] -> [Int]
listInverted [] = []
listInverted(x:xs) = listInverted xs ++ [x]



-- 6) Construa uma função que dado três valores
-- verifique se eles podem formar um triângulo, caso seja
-- verdadeiro retorne uma tupla-2 com o tipo do
-- triângulo formado e o perímetro do mesmo.

-- EXEMPLO USADO EM TESTE: verificaTriangulo 5 7 8

triangulo :: Int -> Int -> Int -> Bool
triangulo a b c = (a + b > c) && (a + c > b) && (b + c > a)

equilatero :: Int -> Int -> Int -> Bool
equilatero a b c = (triangulo a b c) && (a==b) && (a==c)

escaleno :: Int -> Int -> Int -> Bool
escaleno a b c = (triangulo a b c) && (a/=b) && (b/=c) && (a/=c)

isoceles :: Int -> Int -> Int -> Bool
isoceles a b c = (triangulo a b c) && not(equilatero a b c) && ((a==b) || (b==c) || (a==c))

triangulo2 :: Int -> Int -> Int -> String
triangulo2 a b c
  |(equilatero a b c) = "o triangulo eh equilatero"
  |(escaleno a b c) = "o triangulo eh escaleno"
  |(isoceles a b c) = "triangulo eh isoceles"
  |otherwise = "error 404"

verificaTriangulo :: Int -> Int -> Int -> Maybe (String, Int)
verificaTriangulo a b c
  | triangulo a b c = Just (triangulo2 a b c, a + b + c)
  | otherwise = Nothing



-- 7) Crie uma função que leia uma lista contendo nomes
-- de produtos e seus preços e exiba o valor total da
-- compra.

-- EXEMPLO USADO EM TESTE: listaCompras [("Maçã", 2), ("Banana", 1), ("Laranja", 8)]

listaCompras :: [(String, Float)] -> Float
listaCompras [] = 0
listaCompras ((produto, preco):xs)
  | preco > 0 = preco + listaCompras xs
  | otherwise = listaCompras xs



-- 8) Adapte a função anterior para ler também a
-- quantidade de cada produto comprado e exibir o valor
-- total da compra.

-- EXEMPLO USADO EM TESTE: listaComprasCompleta [("Maçã", 2.5, 2), ("Banana", 1.8, 1), ("Laranja", 3.2, 8)]

listaComprasCompleta :: [(String, Float, Float)] -> Float
listaComprasCompleta [] = 0
listaComprasCompleta ((produto, quantidade, preco):xs)
  | quantidade > 0 = (preco * quantidade) + listaComprasCompleta xs
  | otherwise = listaComprasCompleta xs


-- 9) Faça uma função que leia o nome do produto, valor
-- unitário e quantidade comprada de uma lista de
-- produtos e exiba:
-- Uma lista com o nome do produto e o valor parcial
-- comprado de cada produto.

-- EXEMPLO USADO EM TESTE: ex9 [("maca",0.8,9),("banana",1.2,12)]

type Produto = (String,Float)
type ProdComQuant = (String, Float, Float)

ex9 :: [ProdComQuant] -> [Produto]
ex9 [] = []
ex9 ((nome, vu, qtt):xs) = (nome,vu*qtt): ex9 xs






    
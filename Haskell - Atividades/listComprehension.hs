-- Primeiro exemplo do slide
constList :: [Int] -> [Int]
constList lista = [x*x| x<-lista, mod x 2 == 0]


-- Exemplo com dois geradores (exemplo do slide)
constroiDois :: [(Int, Char)]
constroiDois = [(x,y)| x<-[1..3], y<-['a'..'c']]


-- 1- Crie, por list comprehension, uma função que retorne o dobro dos
-- múltiplos de 3 que estão entre 50 e 100.
dobroMultTres :: [Int]
dobroMultTres = [(x*2)| x<-[50..100], mod x 3 == 0]


-- 2- Leia uma lista de inteiros e usando list comprehension exiba o triplo de
-- cada elemento da lista.
triplo :: [Int] -> [Int]
triplo lista = [(x*3)| x<-lista]


-- 3- Exiba o quadrado dos múltiplos de 3 menores que 50.
quadMult :: [Int]
quadMult = [(x*x)| x<-[1..50], mod x 3 == 0]


-- 4- Exiba tuplas com as possíveis combinações entre as letras de um string
-- lido e os números de 1 a 5, como no exemplo a seguir:
tuplas :: String -> [(Char, Int)]
tuplas name = [(x, y)| x<-name, y<-[1..5]]


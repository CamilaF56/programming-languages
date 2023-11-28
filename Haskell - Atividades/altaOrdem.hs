--Repete duas vezes o que for passado (*2) <- exemplo
duasVezes :: (a -> a) -> a -> a
duasVezes f x = f(f x)

--Repete quatro vezes o que for passado
quadruplica :: Num a => a -> a
quadruplica = duasVezes(*2)
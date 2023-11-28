

1. `Data.Char`:

   - `ord :: Char -> Int`: Converte um caractere (`Char`) no seu ponto de código Unicode correspondente como um `Int`.

   - `chr :: Int -> Char`: Converte um ponto de código Unicode (um `Int`) no caractere correspondente.

   - `isAlpha :: Char -> Bool`: Verifica se um caractere é alfabético (maiúsculo ou minúsculo).

   - `isDigit :: Char -> Bool`: Verifica se um caractere é um dígito ('0' a '9').

   - `isSpace :: Char -> Bool`: Verifica se um caractere é um espaço em branco (espaço, tabulação, quebra de linha, etc.).

   - `toUpper :: Char -> Char`: Converte um caractere para maiúsculas se ele for alfabético.

   - `toLower :: Char -> Char`: Converte um caractere para minúsculas se ele for alfabético.



2. `Data.Text` (do pacote `text`):

   - `pack :: String -> Text`: Converte uma `String` padrão para um tipo `Text`.

   - `unpack :: Text -> String`: Converte um tipo `Text` de volta para uma `String` padrão.

   - Diversas funções para trabalhar com objetos `Text`, como `map`, `filter`, `foldl`, etc.



Para usar as funções dessas bibliotecas, você precisa importá-las no início do seu arquivo Haskell. Por exemplo:



```haskell

import Data.Char (ord, chr, isAlpha, isDigit, isSpace, toUpper, toLower)

import qualified Data.Text as T



main :: IO ()

main = do

  let charA = 'A'

  let charB = 'b'

  let char7 = '7'

  

  putStrLn $ "Caractere A é alfabético: " ++ show (isAlpha charA)

  putStrLn $ "Caractere B é um dígito: " ++ show (isDigit charB)

  putStrLn $ "Caractere 7 é um espaço em branco: " ++ show (isSpace char7)

  

  putStrLn $ "O ponto de código Unicode de 'A' é: " ++ show (ord charA)

  putStrLn $ "O caractere com o ponto de código Unicode 98 é: " ++ show (chr 98)

  

  let textString = "Olá, Mundo!"

  let textObj = T.pack textString

  

  putStrLn $ "Texto original: " ++ textString

  putStrLn $ "Em maiúsculas: " ++ T.unpack (T.toUpper textObj)

  putStrLn $ "Em minúsculas: " ++ T.unpack (T.toLower textObj)

```



Lembre-se de que o código acima pressupõe que você tenha as bibliotecas necessárias instaladas em seu ambiente Haskell. As bibliotecas padrão de Haskell normalmente já vêm pré-instaladas com um compilador Haskell, como o GHC. Para bibliotecas de terceiros, você pode precisar usar um gerenciador de pacotes como o Cabal ou o Stack para instalá-las antes de usá-las em seu projeto.

Peço desculpas pela confusão anterior. Como mencionado anteriormente, não existe uma biblioteca padrão chamada "char.data" em Haskell. No entanto, vou listar algumas das funções mais comuns relacionadas a caracteres e strings presentes nas bibliotecas padrão de Haskell:

Biblioteca `Data.Char`:

1. `ord :: Char -> Int`: Converte um caractere (`Char`) em seu valor Unicode correspondente, representado como um `Int`.
2. `chr :: Int -> Char`: Converte um valor Unicode (representado como um `Int`) em seu caractere correspondente (`Char`).
3. `isAlpha :: Char -> Bool`: Verifica se um caractere é uma letra (maiúscula ou minúscula).
4. `isDigit :: Char -> Bool`: Verifica se um caractere é um dígito (de '0' a '9').
5. `isSpace :: Char -> Bool`: Verifica se um caractere é um espaço em branco (espaço, tabulação, quebra de linha, etc.).
6. `toUpper :: Char -> Char`: Converte um caractere em maiúsculo, se for alfabético.
7. `toLower :: Char -> Char`: Converte um caractere em minúsculo, se for alfabético.

Biblioteca `Data.Text` (do pacote `text`):

1. `pack :: String -> Text`: Converte uma `String` padrão em um tipo `Text`.
2. `unpack :: Text -> String`: Converte um tipo `Text` de volta para uma `String` padrão.
3. Funções para manipulação de `Text`, como `map`, `filter`, `foldl`, etc.

Essas são apenas algumas das funções mais comuns para manipulação de caracteres e strings em Haskell. Para usar essas funções, você precisará importar as bibliotecas apropriadas no início do seu arquivo Haskell, como mostrado nos exemplos anteriores. As bibliotecas padrão de Haskell vêm pré-instaladas com o compilador GHC, então você não precisa instalar nada adicional para usar essas funcionalidades.
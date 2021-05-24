-- Prática 01 de Haskell - Parte 2
-- Nome: Guilherme Medeiros da Cunha

import Auxiliar

-- aplica html em uma lista
itemize :: [String] -> [String]
itemize s = map htmlItem s

-- remove consoantes de uma String
onlyVowels :: String -> String
onlyVowels s = filter isVowel2 s

-- remove idades menores ou iguais a 65 de uma lista
onlyElderly :: [Int] -> [Int]
onlyElderly ages = filter isElderly ages

-- remove palavras pequenas de uma lista
onlyLongWords :: [String] -> [String]
onlyLongWords strs = filter isLongWord strs

-- retorna numeros pares de uma lista
onlyEven :: [Int] -> [Int]
onlyEven strs = filter isEvenBetter strs

-- funcao auxiliar para onlyBetween60and80
between60and80 :: Int -> Bool
between60and80 n = (n >= 60) && (n <= 80)

-- remove numeros que nao estiverem entre 60 e 80 em uma lista
onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 strs = filter between60and80 strs

-- funcao para identificar espacos
espaco :: Char -> Bool
espaco c = c == ' '

-- conta o numero de espacos em uma string
countSpaces :: String -> Int
countSpaces str = length (filter espaco str)

-- retorna areas de uma lista de raios
calcAreas :: [Float] -> [Float]
calcAreas rs = map circleArea rs

-- recriando elem
charFound :: Char -> String -> Bool
charFound c str
  | (length str) == 0 = False
  | c == (head str) = True
  | otherwise = charFound c (tail str)
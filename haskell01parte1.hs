-- Prática 01 de Haskell - Parte 1
-- Nome: Guilherme Medeiros da Cunha

-- calcula a soma dos quadrados de x e y
sumSquares :: Int -> Int -> Int
sumSquares x y = x^2 + y^2

-- calcula a area de um circulo
circleArea :: Float -> Float
circleArea r = pi*r^2

-- calcula a idade aproximada
age :: Int -> Int -> Int
age n a = a-n

-- verifica se idade eh maior que 65 anos
isElderly :: Int -> Bool
isElderly n = n>65

-- adiciona <li> no inicio e </li> no final de uma string
htmlItem :: String -> String
htmlItem s = "<li>" ++ s ++ "</li>"

-- verifica se string inicia com A
startsWithA :: String -> Bool
startsWithA s = (head s) == 'A'

-- verifica se string termina com r
isVerb :: String -> Bool
isVerb s = (last s) == 'r'

-- verifica se caractere eh uma vogal minuscula
isVowel :: Char -> Bool
isVowel c
  | c == 'a' = True
  | c == 'e' = True
  | c == 'i' = True
  | c == 'o' = True
  | c == 'u' = True
  | otherwise = False

-- verifica se duas listas tem o mesmo primeiro elemento
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads s1 s2 = (head s1) == (head s2)

-- isVowel2
isVowel2 :: Char -> Bool
isVowel2 c = elem c "aeiouAEIOU"
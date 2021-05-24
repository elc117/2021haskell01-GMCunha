-- Prática 01 de Haskell - Parte 2
-- Nome: Guilherme Medeiros da Cunha

-- funcoes para implementacao
sumSquares :: Int -> Int -> Int
sumSquares x y = x^2 + y^2

circleArea :: Float -> Float
circleArea r = pi*r^2

age :: Int -> Int -> Int
age n a = a-n

isElderly :: Int -> Bool
isElderly n = n>65

htmlItem :: String -> String
htmlItem s = "<li>" ++ s ++ "<\\li>"

startsWithA :: String -> Bool
startsWithA s = (head s) == 'A'

isVerb :: String -> Bool
isVerb s = (last s) == 'r'

isVowel :: Char -> Bool
isVowel c
  | c == 'a' = True
  | c == 'e' = True
  | c == 'i' = True
  | c == 'o' = True
  | c == 'u' = True
  | otherwise = False

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads s1 s2 = (head s1) == (head s2)

isVowel2 :: Char -> Bool
isVowel2 c = elem c "aeiouAEIOU"

isLongWord :: String -> Bool
isLongWord s = length s > 10

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
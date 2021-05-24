module Auxiliar
(circleArea, isElderly, htmlItem, isVowel2, isEvenBetter, isLongWord) where

circleArea :: Float -> Float
circleArea r = pi*r^2

isElderly :: Int -> Bool
isElderly n = n>65

htmlItem :: String -> String
htmlItem s = "<li>" ++ s ++ "</li>"

isVowel2 :: Char -> Bool
isVowel2 c = elem c "aeiouAEIOU"

isEvenBetter  :: Int -> Bool
isEvenBetter n = mod n 2 == 0

isLongWord :: String -> Bool
isLongWord s = length s > 10
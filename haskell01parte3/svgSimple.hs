import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 300 200 ++ 
  (svgCircle 100 10 10 "rgb(0, 60, 0, 1.0)") ++ 
  (svgCircle 200 10 10 "rgb(0, 60, 0, 1.0)") ++ 
  (svgCircle 75 100 10 "rgb(65, 14, 100, 1.0)") ++ 
  (svgCircle 150 100 10 "rgb(65, 14, 100, 1.0)") ++ 
  (svgCircle 225 100 10 "rgb(65, 14, 100, 1.0)") ++ 
  (svgCircle 80 120 10 "rgb(65, 14, 100, 1.0)") ++ 
  (svgCircle 150 120 10 "rgb(65, 14, 100, 1.0)") ++ 
  (svgCircle 220 120 10 "rgb(65, 14, 100, 1.0)") ++ 
  (svgCircle 95 133 10 "rgb(65, 14, 100, 1.0)") ++ 
  (svgCircle 135 133 10 "rgb(65, 14, 100, 1.0)") ++ 
  (svgCircle 165 133 10 "rgb(65, 14, 100, 1.0)") ++ 
  (svgCircle 205 133 10 "rgb(65, 14, 100, 1.0)") ++ 
  (svgCircle 115 136 10 "rgb(65, 14, 100, 1.0)") ++ 
  (svgCircle 185 136 10 "rgb(65, 14, 100, 1.0)") ++ 
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll

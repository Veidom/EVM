newton :: Double -> Double -> Double
newton m n | (abs (n * n - m) < 0.001) = n
           | otherwise = newton m ((n+m/n)/2)
           
main :: IO()
main = do
      x <- readLn
      print (round(newton x 1))
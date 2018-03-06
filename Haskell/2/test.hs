count_digits :: Int -> Int
count_digits 0 = 0
count_digits n = count_digits (n `div` 10) + 1

sum_digits :: Int -> Int
sum_digits 0 = 0
sum_digits n = (n `mod` 10) + sum_digits(n `div` 10)

main :: IO()
main = do
      x <- readLn
      print (sum_digits x)
      print (count_digits x)
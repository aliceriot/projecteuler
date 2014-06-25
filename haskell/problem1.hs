getMultiples :: Integral a => a -> a
getMultiples n = sum [ x | x <- [1..n], mod x 3 == 0 || mod x 5 == 0]

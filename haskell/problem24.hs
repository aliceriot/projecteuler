import Data.List

-- mynums = [[a,b,c,d,e,f,g,h,i,j] | a <- [0..9], b <- [0..9], c <- [0..9], d <- [0..9], e <- [0..9], f <- [0..9], g <- [0..9], h <- [0..9], i <- [0..9], j <- [0..9]]

-- mytestnums = take 100 mynums

-- mybiggertestnums = take 10000000 mynums


-- answer = (Prelude.filter (\x -> size x == 10) $ Prelude.map fromList mynums) !! 999999

answer = (sort $ permutations [0..9]) !! 999999


factorial :: Int -> Int
factorial 1 = 1
factorial x = foldl (*) 1 [1..x]


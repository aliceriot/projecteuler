getKeyEntries :: (Integral a) => [a] -> [a]
getKeyEntries [1] = [1]
getKeyEntries xs = [xs !! (key - 1)] ++ [ xs !! ((2 * key) - 1)] ++ [xs !! ((3 * key) - 1)] ++ [xs !! ((4 * key) - 1)]
    where key = truncate $ (fromIntegral $ length xs) / 4

-- ok that's messy and ugly but it works


-- this makes rows, seems to work correctly
makeRows :: (Integral a) => a -> [a]
makeRows 1 = [1]
makeRows 2 = [2..9]
makeRows n = [a..b]
    where a = (entriesBefore n) + 1
          b = (a + ((n - 1) * 8)) - 1


entriesBefore :: (Integral a) => a -> a
entriesBefore 3 = 9
entriesBefore n = (n - 2) * 8 + entriesBefore (n -1)

getAnswer :: Integer
getAnswer = sum $ map sum $ map getKeyEntries $ map makeRows [1..501]


-- I got it right! Of course there's a one liner though...

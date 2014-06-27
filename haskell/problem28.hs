-- get the diagonal entries from an arbitrary row (based on its length)
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


-- figures out the entries that come before a given row n
entriesBefore :: (Integral a) => a -> a
entriesBefore 3 = 9
entriesBefore n = (n - 2) * 8 + entriesBefore (n -1)

getAnswer :: Integer
getAnswer = sum $ map sum $ map getKeyEntries $ map makeRows [1..501]
-- we know we have to end at row 501 because to get a 1001 x 1001 spiral
-- the whole thing must be 1001 digits wide - with one unit in the width
-- for the first row and two for every subsequent we must be dealing with
-- the 501st row

-- I got it right! Of course there's a one liner though...

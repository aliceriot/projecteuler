
-- the list of all the tuples of numbers which might satisfy our criteria
list = [(a,b) | a <- [10..99], b <- [10..99], mod a 10 /= 0 && mod b 10 /= 0]


-- small function to read a char instead of just a string
read' :: Read a => Char -> a
read' a = read [a]


-- takes a tuple of integers and returns a tuple of floats
tupleFromInt :: (Integer,Integer) -> (Float,Float)
tupleFromInt (a,b) = (fromInteger a :: Float, fromInteger b :: Float)


-- this takes a tuple of numbers and checks to see if it meets our criteria
checkPair :: (Float,Float) -> Bool
checkPair (a,b) | a == b = False
                | a / b > 1 = False
                | map (== a1) [b1,b2] == [True,False] = (a / b) == (a2 / b2)
                | map (== a1) [b1,b2] == [False,True] = (a / b) == (a2 / b1)
                | map (== a2) [b1,b2] == [True,False] = (a / b) == (a1 / b2)
                | map (== a2) [b1,b2] == [False,True] = (a / b) == (a1 / b1)
                | otherwise = False
                where aa = show a
                      bb = show b
                      a1 = read' (aa!!0) :: Float
                      a2 = read' (aa!!1) :: Float
                      b1 = read' (bb!!0) :: Float
                      b2 = read' (bb!!1) :: Float


checkEmAll = filter checkPair $ map tupleFromInt list

-- this gives us the result [(16.0,64.0),(19.0,95.0),(26.0,65.0),(49.0,98.0)]
-- if we multiply out the numerator and denominator we get 387296 / 38729600
-- so it is 1/100, and 100 is our answer

import qualified Data.Set as Set
import qualified Data.List as List

a = [2..100]
b = [2..100]

-- make a big list of lists, where x is an element from the first
-- list and the lists are ^x mapped against every entry in the second
createBiglist :: (Num b, Integral b1) => [b1] -> [b] -> [[b]]
createBiglist [] _ = []
createBiglist _ [] = error "empty second list! no way man!"
createBiglist (x:xs) (y:ys) = map (^x) (y:ys) : createBiglist xs (y:ys)

-- to get our answer we concat, make into a set, and get the size of the set
getAnswer :: Int
getAnswer = Set.size $ Set.fromList $ concat $ createBiglist a b

-- Haskell wiki has the following:

problem29 = length $ List.nub [x^y | x <- [2..100], y <- [2..100]]

-- mine's faster though! 

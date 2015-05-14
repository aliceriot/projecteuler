fiboNacci :: Integral a => a -> a
fiboNacci 0 = error "this is nonsensical"
fiboNacci 1 = 1
fiboNacci 2 = 2
fiboNacci n = fiboNacci (n-1) + fiboNacci (n-2)


sumitup = sum $ filter even $ takeWhile (<4000000) [1..]

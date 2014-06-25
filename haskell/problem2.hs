fiboNacci :: Integral a => a -> a
fiboNacci 0 = error "this is nonsensical"
fiboNacci 1 = 1
fiboNacci 2 = 1
fiboNacci n = 

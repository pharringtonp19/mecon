f :: Float -> Float 
f x = x + 2

compose :: Int -> (a -> a) -> a -> a
compose n f x = foldr ($) x (replicate n f)

module Main where

quicksort :: Ord a => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = quicksort menores ++ [x] ++ quicksort maiores    
    where 
        menores = filter (< x) xs
        maiores = filter (>= x) xs
--magia
main :: IO ()
main = do
    
    let lista :: [Int]
        lista = [1,2,4,3,2,2,24,5,1,32,5]
    -- lista de aleatória 
    
    
    putStrLn $ "Lista original: " ++ show lista
    putStrLn $ "Lista ordenada: " ++ show (quicksort lista)
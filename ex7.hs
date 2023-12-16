module Main where

concatenarVetor :: [Int] -> [Int] -> [Int]
concatenarVetor [] ys = ys
concatenarVetor (x:xs) ys = x : concatenarVetor xs ys

main :: IO ()
main = do
    
    let lista :: [Int]
        lista = [1..5]
    -- lista de 1 a 5 
    
    
    let lista2 :: [Int]
        lista2 = [6..10]
    -- lista de 6 a 10 
    
    putStrLn $ show lista ++ " + " ++ show lista2  ++ " = " ++ show(concatenarVetor lista lista2)

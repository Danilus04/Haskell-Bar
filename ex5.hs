module Main where

inverterVetor :: [Int] -> [Int]
inverterVetor [] = []
inverterVetor (x:xs) = inverterVetor xs ++ [x] 


main :: IO ()
main = do
    
    let lista :: [Int]
        lista = [1..5]
    
    -- lista de 1 a 5
    print lista
    
    putStrLn $ "Soma dos elementos dos vetores: " ++ show(inverterVetor lista)

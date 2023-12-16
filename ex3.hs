module Main where

somaVetor :: [Int] -> Int
somaVetor []     = 0
somaVetor (x:xs) = x + somaVetor xs

main :: IO ()
main = do
    
    let lista :: [Int]
        lista = [1..10]
    
    -- lista de 1 a 10 
    print lista
    
    putStrLn $ "Soma dos elementos dos vetores: " ++ show(somaVetor lista)

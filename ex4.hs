module Main where


produtoVetor :: [Int] -> Int
produtoVetor []     = 1
produtoVetor (x:xs) = x * produtoVetor xs
 
main :: IO ()
main = do
    
    let lista :: [Int]
        lista = [1..5]
    
    -- lista de 1 a 5
    print lista
    
    putStrLn $ "Soma dos elementos dos vetores: " ++ show(produtoVetor lista)

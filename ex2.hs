module Main where

medirLista :: [a] -> Int
medirLista []     = 0
medirLista (x:xs) = 1 + medirLista xs

main :: IO ()
main = do
    
    let lista :: [Int]
        lista = [1..10]
    
    -- lista de 1 a 10 
    putStrLn $ "Tamanho da lista: " ++ show (medirLista lista)
    print lista
    
    


module Main where

verificar :: Eq a => a -> [a] -> Bool
verificar _ []     = False
verificar n (x:xs) = if n == x then True else verificar n xs

main :: IO ()
main = do
    
    let lista :: [Int]
        lista = [1..10]
    
    -- lista de 1 a 10 
    print lista
    
    -- Verificar se 5 está na lista
    print $ verificar 12 lista

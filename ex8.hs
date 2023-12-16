module Main where

verificar :: Eq a => a -> [a] -> Bool
verificar _ []     = False
verificar n (x:xs) = if n == x then True else verificar n xs

interseccaoVetor :: [Int] -> [Int] -> [Int]
interseccaoVetor [] _ = []
interseccaoVetor (x:xs) ys = if verificar x ys then x : interseccaoVetor xs ys else interseccaoVetor xs ys

main :: IO ()
main = do
    
    let lista :: [Int]
        lista = [1..5]
    -- lista de 1 a 5 
    
    
    let lista2 :: [Int]
        lista2 = [3..10]
    -- lista de 3 a 10 
    
    putStrLn $ show lista ++ " + " ++ show lista2  ++ " = " ++ show(interseccaoVetor lista lista2)

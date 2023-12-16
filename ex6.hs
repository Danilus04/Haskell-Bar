module Main where

compararVetor :: Eq a => [a] -> [a] -> Bool
compararVetor [] []         = True
compararVetor (x:xs) (y:ys) = x == y && compararVetor xs ys
compararVetor _ _           = False 


main :: IO ()
main = do
    
    let lista :: [Int]
        lista = [1..5]
    -- lista de 1 a 5 
    
    
    let lista2 :: [Int]
        lista2 = [1..5]
    -- lista de 1 a 5 
    
    
    putStrLn $ show lista ++ " == " ++ show lista2  ++ " = " ++ show(compararVetor lista lista2)

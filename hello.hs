module Main where 

helloWorld :: IO()
main :: IO()

helloWorld = putStrLn "hello world"

multiplication n m = n * m 

main = do 
    helloWorld
    print(multiplication 10 4)

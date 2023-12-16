import Data.List (permutations)
-- Da uma função que da todas as possibilidades de ordens de lista

import Data.List (maximumBy)
import Data.Ord (comparing)
-- Essas duas funções são usadas na função melhor eficiencia,
-- para tentar otimizar o codigo.

type Barra = Int
type Pedido = Int

-- Função que pega o primera lista de pedido da lista
primeiroElemento :: [[Pedido]] -> [Pedido]
primeiroElemento [] = []
primeiroElemento (x:xs) = x

-- Função que pega o a lista pedido com maior soma de elementos
melhorEficiencia :: [[Pedido]] -> [Pedido]
melhorEficiencia [] = []
melhorEficiencia xs = maximumBy (comparing sum) xs

--Função que pega pega umas lista de lista de pedidos e 
--retorna uma lista de lista de pedidos com lista de pedidos com mais elementos
--removendo listas com menos elementos
listaComMaisElementos :: [[Pedido]] -> [[Pedido]] -> [[Pedido]]
listaComMaisElementos [] maiores = maiores
listaComMaisElementos (x:xs) maiores 
    | length x > length (primeiroElemento maiores) = listaComMaisElementos xs [x]
    | length x == length (primeiroElemento maiores) = listaComMaisElementos xs (x:maiores)
    | otherwise = listaComMaisElementos xs maiores

--Função que executa todo o processo
--Entrada: Lista de barras, Lista de pedidos
--Retorna: Lista de pedidos aceitos
pedidosAceitados :: [Barra] -> [Pedido] -> [Pedido]
pedidosAceitados [] [] = []
pedidosAceitados [] _ = []
pedidosAceitados _ [] = []
pedidosAceitados x y = melhorEficiencia (listaComMaisElementos (corteEstoquePedido x (permutations y) []) [])

--Função que pega a lista de barras e testa todas as possibilidades de ordens de pedidos
--Retornando uma lista de listas de pedidos aceitos 
corteEstoquePedido :: [Barra] -> [[Pedido]] -> [[Pedido]] -> [[Pedido]]
corteEstoquePedido _ [] pedidosAceitos = pedidosAceitos 
corteEstoquePedido [] _ pedidosAceitos = pedidosAceitos
corteEstoquePedido xs (y:ys) pedidosAceitos = corteEstoquePedido xs ys ((corteEstoqueAux4 xs y []):pedidosAceitos)

--Função que pega a lista de barras e Lista de pedidos e retorna uma lista de pedidos aceitos
--Ela é executada varias vezes para testar todas as possibilidades das ordens de pedidos
corteEstoqueAux4 :: [Barra] -> [Pedido] -> [Pedido] -> [Pedido]
corteEstoqueAux4 _ [] pedidosAceitos = pedidosAceitos
corteEstoqueAux4 [] _ pedidosAceitos = pedidosAceitos
corteEstoqueAux4 (b:bs) (p:ps) pedidosAceitos
    | b >= p = corteEstoqueAux4 ((b-p):bs) ps (p:pedidosAceitos)
    | otherwise = corteEstoqueAux4 bs (p:ps) pedidosAceitos

main :: IO ()
main = do
    
    let barras :: [Barra]
        barras = [5..10]
    let pedidos :: [Pedido]
        pedidos = [1..10]
    -- pedidos de aleatória 

    putStrLn $ "Barras disponiveis: " ++ show barras
    putStrLn $ "Pedidos originais:  " ++ show pedidos
    putStrLn $ "pedidos aceitos:    " ++ show (pedidosAceitados barras pedidos)


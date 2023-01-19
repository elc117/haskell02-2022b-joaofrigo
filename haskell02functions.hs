-- \x -> x^2 lambda é só colocar \ atrás e seguir os argumentos pra depois -> a função de fato.

-- a ideia é usar lambda dentro de funções como argumento, como no hasFever'

-- (\<arg1> ... <argn> -> <expressão usando arg1 ... argn>)

isFever :: Float -> Bool
isFever x = x > 37.8

hasFever :: [Float] -> [Float]
hasFever x = filter isFever x

hasFever' :: [Float] -> [Float]
hasFever' x = filter (\x -> x > 37.8) x


--htmlItem :: String -> String
--htmlItem string = "<li>" ++ string ++ "</li>"

itemize :: [String] -> [String]
itemize x = map (\x -> "<li>" ++ x ++ "</li>") x

-- :: [Float] -> Float -> Bool
--circleArea1 r numero = r > numero

circleArea2 :: Float -> Float
circleArea2 r = r * pi^2

bigCircles :: Float -> [Float] -> [Float]
bigCircles numero lista = filter (> numero) (map circleArea2 lista)

--testetupla :: (String, Int) -> (String, Int)
--testetupla nome idade = ("el" ++ nome ++ "el") idade + 1

testetupla1 = fst ("Fulano",32)
testetupla2 = snd ("Fulano", 32)
--testetupla3 :: (String, float) -> (String, float)
testetupla3 :: [(Int,Int)] -> [(Int,Int)]
testetupla3 ts = ts
-- testetupla4 = (x,y) = não sei encher tuplas
mostraNome :: String -> String
mostraNome string = string ++ ""

quarentine :: [(String,Float)] -> [(String,Float)]
quarentine ts = filter (\(_, febre) -> febre > 37.8) ts 
-- as tuplas são noemadas como qualquer coisa, o () dentro dele não importa o nome só posição
--(\(_, febre) -> febre + 1) repetir o nome
--map (\(nome,_) -> nome  ++ "") 


--x = x > 37.8
--(\x -> x^2)

agesIn :: [Int] -> Int -> [Int]
agesIn lista referencia = map (\x -> x - referencia) lista
-- map pode receber argumentos de fora sem problemas de nomeação, só precisa receber o valor da lista.
--agesIn lista referencia = zipWith (\x y -> x - y) lista (map (\x referencia -> x - referencia) lista)
-- não está usando o numero referencia, map pega o valor da lista e faz algo com esse valor
--Escreva uma função agesIn :: [Int] -> Int -> [Int] que receba uma lista de anos de nascimento de algumas pessoas e um ano de referência. A lista resultante terá idades calculadas considerando o ano de referência (idades aproximadas, já que só consideram o ano, não a data completa de nascimento). Resolva esta questão usando lambda.
--(map (\x -> x * x) lista)


addSuper :: String -> String
addSuper string = "Super " ++ string

superNames :: [String] -> [String]
superNames lista = map (\string -> "Super " ++ string) (filter(\x -> head x == 'A') lista)
-- poderia ter usado take 1 também
--lista --(filter(head lista== 'A') lista)
--map(addSuper x) lista
--Escreva uma função superNames :: [String] -> [String] que receba uma lista de nomes e adicione o prefixo "Super " às strings que começarem com a letra A (maiúscula), deixando as demais inalteradas. A lista resultante, portanto, terá a mesma quantidade de strings da lista original

onlyShorts :: [String] -> [String]
onlyShorts string = filter (\x -> length x > 5) string

main = do
  putStrLn "Hello"
  putStrLn "World"

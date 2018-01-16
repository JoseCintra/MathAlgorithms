pascal :: Int -> [[Integer]]
triangulo = iterate (\row -> zipWith (+) ([0]++row) (row++[0])) [1]
pascal n = take n triangulo
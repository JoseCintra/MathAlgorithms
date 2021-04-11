-- Math Algorithms
--
-- Purpose:       Gets a line for Pascal Triangle
-- Language:      Haskell
-- Author:        José Cintra
-- Year:          2020
-- Web Site:      https://github.com/JoseCintra/MathAlgorithms
-- License:       Unlicense, described in http://unlicense.org


pascal :: Int -> [[Integer]]
triangulo = iterate (\row -> zipWith (+) ([0]++row) (row++[0])) [1]
pascal n = take n triangulo
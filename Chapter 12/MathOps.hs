-- MathOps.hs
module MathOps (add, subtract', multiply, divide) where

add :: Int -> Int -> Int
add x y = x + y

subtract' :: Int -> Int -> Int
subtract' x y = x - y

multiply :: Int -> Int -> Int
multiply x y = x * y

divide :: Float -> Float -> Float
divide _ 0 = error "Cannot divide by zero!"
divide x y = x / y

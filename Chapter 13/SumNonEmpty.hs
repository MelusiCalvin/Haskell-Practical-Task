-- SumNonEmpty.hs
module SumNonEmpty (sumNonEmpty) where

sumNonEmpty :: [Int] -> Int
sumNonEmpty [] = handleEmpty
sumNonEmpty xs = sum xs

-- Hidden helper (not exported)
handleEmpty :: a
handleEmpty = error "Error: The list is empty, cannot compute sum."

-- Module with the counts function to be tested
module Counts (counts) where

-- counts function: returns (word count, character count) for a string
counts :: String -> (Int, Int)
counts str = (length (words str), length str)
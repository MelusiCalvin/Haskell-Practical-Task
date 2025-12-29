module CharCounts (counts) where

import Data.List (group, sort)

counts :: String -> [(Char, Int)]
counts s = [(head g, length g) | g <- group (sort s)]

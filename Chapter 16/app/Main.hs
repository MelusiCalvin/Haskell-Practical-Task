import Data.List (nub)

-- HC16T10: Character Frequency in String
charFrequency :: String -> [(Char, Int)]
charFrequency str = [(c, count c str) | c <- nub str]
  where
    count ch s = length (filter (== ch) s)

main :: IO ()
main = do
  print (charFrequency "banana")

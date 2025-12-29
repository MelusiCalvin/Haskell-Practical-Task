-- HC13T10.hs
import System.Directory (listDirectory)
import Data.List (isInfixOf, sort)

main :: IO ()
main = do
    putStrLn "Enter substring to search in filenames:"
    sub <- getLine
    files <- listDirectory "."
    let result = sort (filter (isInfixOf sub) files)
    putStrLn "Sorted matching files:"
    mapM_ putStrLn result

import Control.Monad (forever)

replicateForever :: IO () -> IO ()
replicateForever = forever

main :: IO ()
main = replicateForever (putStrLn "Looping...")

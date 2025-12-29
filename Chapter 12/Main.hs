-- Main.hs
import MathOps

main :: IO ()
main = do
    putStrLn "=== Mathematical Operations Demo ==="
    putStrLn ("3 + 5 = " ++ show (add 3 5))
    putStrLn ("10 - 4 = " ++ show (subtract' 10 4))
    putStrLn ("6 * 7 = " ++ show (multiply 6 7))
    putStrLn ("15 / 3 = " ++ show (divide 15 3))

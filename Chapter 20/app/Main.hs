batchProcessing :: Monad m => [a] -> (a -> m a) -> m a
batchProcessing (x:xs) f =
    foldl (\acc mx -> acc >>= \_ -> mx) (f x) (map f xs)
batchProcessing [] _ = error "Empty list"

main :: IO ()
main = print =<< batchProcessing [1,2,3] (return . (+1))

-- HC17T10: Monoid Instance for Config
data Config = Config
  { loggingLevel :: Int
  , timeout :: Int
  , retries :: Int
  } deriving (Show)

instance Semigroup Config where
  (Config l1 t1 r1) <> (Config l2 t2 r2) =
    Config (max l1 l2) (min t1 t2) (max r1 r2)

instance Monoid Config where
  mempty = Config 0 9999 0  -- lowest level, highest timeout, lowest retries

main :: IO ()
main = do
  let c1 = Config 3 40 2
      c2 = Config 1 90 5
  print (mempty <> c1)
  print (c1 <> c2)

-- HC18T5: Functor Instance for Either (Custom type to avoid conflict)

data MyEither e a
  = MyLeft e
  | MyRight a
  deriving (Show)

instance Functor (MyEither e) where
  fmap _ (MyLeft e)   = MyLeft e
  fmap f (MyRight x)  = MyRight (f x)

main :: IO ()
main = do
  print (fmap (*2) (MyRight 10 :: MyEither String Int))
  print (fmap (*2) (MyLeft "Error" :: MyEither String Int))

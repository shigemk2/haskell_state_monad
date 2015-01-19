import Control.Monad.Writer

test = execWriter $ do
    tell "Hello"
    tell ", "
    tell "World"
    tell "!!"
    return ()

main = do
  print test

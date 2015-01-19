import Control.Monad.Writer

test = do
    tell "Hello"
    tell ", "
    tell "World"
    tell "!!"
    return ()

main = do
  let (a, w) = runWriter $ test
  print w

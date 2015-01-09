import Control.Monad.State

f :: () -> (Int, ())
f = runState $ return 1

main = do
    let (a, _) = f ()
    print a


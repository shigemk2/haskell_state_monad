import Control.Monad
import Control.Monad.State

fib x = (`evalState` (0, 1)) $ do
    replicateM_ (x - 1) $ do
        (a, b) <- get
        put (b, a + b)
    v <- get
    return $ snd v

main = do
    print $ fib 10

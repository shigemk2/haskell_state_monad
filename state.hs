import Control.Monad.State

main = do
    let a = state $ \s -> (1, s)
    print $ runState a ()

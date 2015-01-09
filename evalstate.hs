import Control.Monad.State

main = do
    let a = return 1 :: State s Int
    print $ evalState a ()
    print $ execState a ()
    print $ runState a ()

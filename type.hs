import Control.Monad.ST

main = do
    let a = return 1 :: ST s Int
    print $ runST a


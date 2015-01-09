import Control.Monad
import Control.Monad.State

sum' xs = flip execState 0 $ do
    forM_ xs $ \i ->
        modify (+ i)

main = do
    print $ sum' [1..100]

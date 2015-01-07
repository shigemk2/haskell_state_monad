import Control.Monad
import Control.Monad.ST
import Data.Array.ST

main = do
    let arr = runST $ do
        a <- newArray (0, 5) 0 :: ST s (STUArray s Int Int)
        forM_ [0..5] $ \i ->
            writeArray a i i
        getElems a
    print arr

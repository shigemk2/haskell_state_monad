import Control.Monad.ST
import Data.STRef

main = do
    let a = do
          b <- newSTRef 1
          readSTRef b
    print $ runST a

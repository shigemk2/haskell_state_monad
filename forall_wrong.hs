import Control.Monad.ST
import Data.STRef

main = do
    let a = return 1 :: ST Int Int
            print $ runST a -- エラー

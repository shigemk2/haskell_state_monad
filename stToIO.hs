import Control.Monad.ST
import Data.STRef

main = do
    -- let a = return 1 :: ST s Int
    -- 型注釈はあってもなくてもいい
    let a = return 1
    print =<< stToIO a

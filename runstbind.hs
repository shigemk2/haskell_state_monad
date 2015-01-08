{-# LANGUAGE UnboxedTuples #-}

import GHC.ST
import Data.STRef

unST (ST f) = f

a `bind` b = ST $ \s ->
    let (# s1, r1 #) = unST a s
        (# s2, r2 #) = unST (b r1) s1
    in  (# s2, r2 #)

return' x = ST $ \s -> (# s, x #)

main = do
    print $ runST $
        return' 1 `bind` newSTRef `bind` \a ->
        modifySTRef a (+1) `bind` \_ ->
        readSTRef a `bind` return'

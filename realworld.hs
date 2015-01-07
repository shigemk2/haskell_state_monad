{-# LANGUAGE UnboxedTuples #-}

import GHC.Base
import GHC.ST

unST (ST f) = f

main = IO $ \s ->
    let f = unST $ return 10
        (# s1, r1 #) = f s
        (# s2, r2 #) = unIO (print r1) s1
    in  (# s2, r2 #)

{-# LANGUAGE MagicHash, UnboxedTuples #-}

import GHC.Base
import GHC.ST

unST (ST f) = f

main = do
    let f = unST $ return (1 :: Int)
        (# _, a #) = f realWorld#
    print a

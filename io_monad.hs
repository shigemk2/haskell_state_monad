{-# LANGUAGE MagicHash, UnboxedTuples #-}

import GHC.Base

f :: State# RealWorld -> (# State# RealWorld, [Int] #)
f = unIO $ return [1,2,3]

main = do
    let (# _, a #) = f realWorld#
    print a

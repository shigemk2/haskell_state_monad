import Control.Monad.Reader

test x = (`runReader` x) $ do
        a <- ask
        b <- local (+ 1) $ do
           b' <- ask
           return b'
        c <- ask
        return (a, b, c)

main = print $ test 1
-- test x = (`runReader` x) $
--     ask' `bind` \a ->
--     (local' (+ 1) $
--         ask' `bind` \b' ->
--         return' b') `bind` \b ->
--     ask' `bind` \c ->
--     return' (a, b, c)

-- main = print $ test 1

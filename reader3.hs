import Control.Monad.Reader

a `bind` b = reader $ \r ->
    runReader (b (runReader a r)) r

return' x = reader $ \_ -> x
ask' = reader $ \r -> r
local' f m = reader $ \r -> runReader m $ f r

test x = (`runReader` x) $
    ask' `bind` \a ->
    (local' (+ 1) $
        ask' `bind` \b' ->
        return' b') `bind` \b ->
    ask' `bind` \c ->
    return' (a, b, c)

main = print $ test 1

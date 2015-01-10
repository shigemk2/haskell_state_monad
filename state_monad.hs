import Control.Monad
import Control.Monad.State

a `bind` b = state $ \s ->
  let (r1, s1) = runState a s
      (r2, s2) = runState (b r1) s1
  in (r2, s2)

return' x = state $ \s -> (x, s)
get'      = state $ \s -> (s, s)
put'    x = state $ \_ -> ((), x)


fib x = flip evalState (0, 1) $
    (replicateM_ (x - 1) $
        get' `bind` \(a, b) -> put' (b, a + b)) `bind` \_ ->
    get' `bind` \v -> return' $ snd v

main = do
    print $ fib 1
    print $ fib 10

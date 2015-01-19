import Control.Monad.State
import Control.Monad.Writer

main = do
    print $ (`runState` "") $ do  -- State
        modify (++ "a")           -- 追記
        modify (++ "b")           -- 追記
        modify (++ "c")           -- 追記
        return ()
    print $ runWriter $ do        -- Writer
        tell "a"                  -- 追記
        tell "b"                  -- 追記
        tell "c"                  -- 追記
        return ()

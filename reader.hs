import Control.Monad.Reader

main = do
    let a = reader $ \_ -> 1  -- 状態は返さないため無視
    print $ runReader a ()

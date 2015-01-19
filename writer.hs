import Control.Monad.Writer

main = do
    let a = writer (1, "")  -- 状態は使わないので何でも良い
    print $ runWriter a

import Control.Monad.State
import Control.Monad.Reader

main = do
    print $ (`runState` 1) $ do   -- State
        a <- get
        return $ a + 1
    print $ (`runReader` 1) $ do  -- Reader
        a <- ask                  -- getと同じ（モナドによる使い分け）
        return $ a + 1

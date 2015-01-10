import Control.Monad.State
import Control.Monad.Reader

main = do
  print $ flip runState 1 $ do
         a <- get
         return $ a + 1

  print $ flip runReader 1 $ do
         a <- ask
         return $ a + 1

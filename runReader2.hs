import Control.Monad.State
import Control.Monad.Reader

main = do
    let a = return 99
    print $ runState a ()
    -- runStateのあとにrunReaderは出来ない。逆も然り
    -- print $ runReader a ()
    -- こういう書き方は出来ない
    -- print $ runReader 99 ()



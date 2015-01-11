-- これは副作用が発生するやつ。破壊的代入を行っているから
import Data.Array.IO

main = do
    a <- newListArray (0,2) [1,2,3] :: IO (IOUArray Int Int)
    print =<< getElems a

    writeArray a 0 9
    print =<< getElems a

    writeArray a 2 9
    print =<< getElems a

